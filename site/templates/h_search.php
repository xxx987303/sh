<?php namespace ProcessWire;
/**
 * This template formulates a selector to find matching objects
 *
 ** @var WireInput $input 
 ** @var Sanitizer $sanitizer
 */

$lookingForBug = false;

global $SPOT_id, $SPOT_url, $SPOT_root, $SPOT_search, $spot_home, $site_home;
getSpotURLs();

$selector = '';
$summary  = [];

// Redirect the page if posible
foreach($input->get() as $k=>$v) {
    if (preg_match("/([adh])_aw_person/", $k, $matches)) {
	$p = pages()->get($v);
	header(sprintf("Location: {$SPOT_root}%s_persons/%s/", $matches[1], $p->name));
	exit;
    }
}

/**
 * we are allowing these GET vars in the format of 999, 999-9999, or 999+
 * so we're using this loop to parse them into a selector
 */ 
function fieldSelector(WireInput $input, Field $field, Array &$summary) {
    global $lookingForBug;
    
    $selector = '';
    foreach (['limit', 'sort'] as $key){
	if($v=$input->get($key)) $selector.= "$key=$v, ";
	$input->whitelist($key, $v);
    }
    
    $key = $field->name;
    if($value = $input->get($key)) {
        if(preg_match(";[,/];", $value)) { // see if the value is given as a list (i.e. items separated by a comma)
	    // Operator "~|=" also works, but "%=" does not...
            $selector .= "$key=". ($value=str_replace([',','/'],'|',$value));
            $summary[$key] = $value;
            $input->whitelist($key, $value);
        }elseif(preg_match(";^([<>]);", $value,$matches)) { // see if the we got 'less/more'
	    $selector .= "$key$matches[0]=".($v=(str_replace($matches[0], '', $value)).
					     ($matches[0]=='<' ? ", $key>=1" : ""));
            // $summary[$key] = ($matches[0]=='<' ? 'less' : 'more') . " than $v";
	    $summary[$key] = 'limit';
        }elseif((strpos($value, '-') !== false) &&  // see if the value is given as a range (i.e. two numbers separated by a dash)
		!preg_match("/\d\d\d\d-\d\d-\d\d/",$value)) {
            list($min, $max) = explode('-', $value);
            $min = (int) $min;	
            $max = (int) $max;
            $selector .= "$key>=$min, $key<=$max";
            $summary[$key] = (substr($max, 0, 3) == '999') ? "$min and above" : "$min to $max";
        }elseif(substr($value, -1) == '+') { // see if the value ends with a +, which we used to indicate 'greater than or equal to'
            $value = (int) $value;
            $selector .= "$key>=$value";
            $summary[$key] = "$value and above";
            $input->whitelist($key, "$value+");
        }else{ // plain value that doesn't need further parsing
            $selector .= "$key=$value";
            $summary[$key] = $value;
            $input->whitelist($key, $value);
        }
        $selector .= ', ';
    }
    return $selector;
}

// if a X_collection is specified, then we limit the results to having that X_collection as their parent
if($input->get($C=$SPOT_id.'_collection')) {
    $collectionName = $sanitizer->pageName($input->get($C));
    $_collection = pages("/collections/$collectionName/");
    if($_collection->id) {
        $selector .= "parent=$_collection, ";
        $summary['h_collection'] = $_collection->title;
        $input->whitelist('h_collection', $_collection->name);
    }
}

// if a brand is specified, then we limit the results to having that brand as the manufacturer
if($input->get($B=$SPOT_id.'_brand')) {
    $brandName = $sanitizer->pageName($input->get($B));
    $_brand = pages("/{$B}s/$brandName/");
    if($_brand->id) {
	$selector .= $SPOT_id."_aw_brand=$_brand, ";
	$summary[$B] = $_brand->title;
	$input->whitelist($B, $_brand->name);
    }
}

// if a person is specified, then we limit the results to having that h_person as the artist (author of the h_artwork)
if($input->get($P=$SPOT_id.'_person')) {
  $personName = $sanitizer->pageName($input->get($P));
  $_person = pages("/{$P}s/$personName/");
  if($_person->id) {
    $selector .= $SPOT_id."_aw_person=$_person, ";
    $summary[$P] = $_person->title;
    $input->whitelist($P, $_person->name);
  }
}

// search by h_person & h_artwork fields
foreach ([($i1=$SPOT_id.'_artwork'),($i2=$SPOT_id.'_person')] as $tp) {
    foreach (templates()->get($tp)->fields as $f) {
        $key = $f->name;
        // Skip fields already processed above
        if(($value=$input->get($key)) && !in_array($key, [$i1,$i2])){ 
            $selector .= "template=$tp, " . fieldSelector($input, $f, $summary);
        }
    }
}

//foreach (templates()->get('h_artwork')->fields as $f)    $selector .= fieldSelector($input, $f, $summary);

foreach(['keywords'] as $kw){
    if($v=$input->get($kw)) {
	if (strpos($v,'=') !== false) {
	    list($k,$value) = explode('=',$v);
            $selector .= "$k=$value,";
            $summary[$k] = $sanitizer->entities($value);
	} else {
            $value = $sanitizer->selectorValue($v);
            $selector .= ($kw=='keywords' ? "title|body%=$value, " : "tags=$value");
            $summary[$kw] = $sanitizer->entities($value);
	}
	if ($lookingForBug) echo x('pre', "h_search.php() $kw: value = $value");
	    
        $input->whitelist($kw, $value);
    }
}

//tidy_dump($input->get(), "input:");
//tidy_dump($input,$selector);

// execute the h-search, skip the foreign pages
if ($lookingForBug) {
    echo x('pre', "selector: '$selector'");
    tidy_dump($summary,'Summary');
}

// Generate a human readable summary alert that appears at the top of the page, and browser <title> tag
$browserTitle = __('Scarfs Search');
global $fieldtypeOptions;
foreach($summary as $key=>$value) {
    if($value) {
	if ($f=fields()->get($key)) {
	    $k = $f->label;
	    if ($f->type == 'FieldtypeOptions') {
		$value = $f->type->getOptions($f)->getByValue(preg_split('/[|,]/',$value)[0])->title;
	    }
	}else{
	    $k = strToLower($key);
	}
	try { if (is_numeric($value)) $value = pages()->get($value)->title; } catch (Exception $e) {}
	$browserTitle .= " \"$k: $value\"";
    } else {
        unset($summary[$key]);
    }
}
$browserTitle = __($browserTitle);

region('mainHeader',
       "<h2>$browserTitle</h2>");
region('browserTitle',
       rtrim($browserTitle, ', '));
region('content',
       files()->render('./includes/search_summary.php', ['items' => $summary]) .
       (empty($selector)
	   ? x("div class='uk-alert'",  __('No results from the search...'))	      
           : renderObjectList(findObjects($selector,''),
			 $cols=2)));
