<?php namespace ProcessWire;
/**
 * This template formulates a selector to find matching objects
 *
 ** @var Sanitizer $sanitizer
 */

$lookingForBug = false;

global $SPOT_id, $SPOT_url, $SPOT_root, $SPOT_search, $spot_home;
global $SITE_input, $site_home;

getSpotURLs();

$selector = '';
$summary  = [];
$hermes = pages()->get('title=Hermès')->id;
foreach (explode('&', $SITE_input) as $item) {
    if (!str_contains($item,'=')) continue;
    list($k,$v) = explode('=',str_replace('_c_person','_aw_person',$item));
    // Redirect the page if posible
    if (is_numeric($v) && preg_match("/([adh])_([a-z]*)_(person|collection|possession|artwork)/", $k, $m)) {
	if (($p = pages()->get($v))->id) {
	    header(sprintf("Location:%s%s_spot/%s_{$m[3]}s/%s/", $site_home->url, $m[1], $m[1], $p->name));
	    exit;
	}
    } elseif ($f = fields()->get($k)) {
        $selector .= restrictedSelector(fieldSelector($input, $f, $summary));
    }
}

if($v=getInputKey('keywords')) {
    if (preg_match("/(%[0-9A_Z]*)/", $v)) $v = $sanitizer->transliterate(urldecode($v));
    if (strpos($v,'=') !== false) {
	list($k,$value) = explode('=',$v);
        $selector .= "$k=$value,";
        $summary[$k] = $sanitizer->entities($value);
    } else {
        $value = $sanitizer->selectorValue($v);
        $selector .= str_replace('"','',"title|body%=$value, ");
        $summary['keywords'] = $sanitizer->entities($value);
    }
    if ($lookingForBug) echo x('pre', "search.php() 'keywords': value = '$value'");
    $input->whitelist('keywords', $value);
}

if ($lookingForBug) {
    //tidy_dump(getInputKey(*), $selector);
    echo x('pre', "selector: '$selector'");
    tidy_dump($summary,'Summary');
}

// Generate a human readable summary alert that appears at the top of the page, and browser <title> tag

$subHeader = (empty($SPOT_id) ? "" : _t($config->ártworkItems[$SPOT_id].' Search', $SPOT_id));

foreach($summary as $key=>$value) {
    if(isEmpty($value)) continue;
    list($k,$v) = [$key," $value"]; // sic! "empty space" symbol 
    if ($f = fields()->get($key)) $k = $f->label;
    if($f && $f->type instanceof FieldtypeOptions)  {
	$Manager = new SelectableOptionManager();
	foreach(preg_split('/[|,]/',$value) as $i) {
	    foreach ($Manager->getOptions($f) as $option) {
		if ($option->id == $i || $option->value == $i) { $v = $option->title; break; }
	    }
	}
    }elseif (is_numeric($value) && ($p=pages()->get($value))->id == $value) {
	$v = $p->title;
    }
    $subHeader .= ' "'._t("$k: $v", $SPOT_id).'"';
}

$spot = pages()->get("template={$SPOT_id}_spot");
region('first_item',
       x("a href='{$spot->url}'", $spot->title) . x("i class='uk-icon-angle-right'"));
region('mainHeader',
       "<h3>$subHeader</h3>");
region('subHeader',
       $subHeader);
region('content',
       files()->render('./includes/search_summary.php', ['items' => $summary]) .
       (empty($selector)
	   ? x("div class='uk-alert'",  __('No results from the search...'))	      
           : renderObjectList(findObjects(getValidSelector($selector),''),$cols=2)));

/**
 * we are allowing these GET vars in the format of 999, 999-9999, or 999+
 * so we're using this loop to parse them into a selector
 */ 
function fieldSelector(WireInput $input, Field $field, Array &$summary) {
    global $lookingForBug, $SITE_input;
    
    $selector = '';
    foreach (['limit', 'sort'] as $key){
	if($v=getInputKey($key)) $selector.= "$key=$v, ";
	$input->whitelist($key, $v);
    }

    $key = $field->name;
    if($value = getInputKey($key)) {
	if(preg_match(";h_aw_collection!=([0-9|]*);", $key,$m)) {
	    $selector .= "h_aw_collection!=$m[1],";
	    /*
	}elseif ($key == 'a_aw_possession') {
	    $selector .= "template=a_possession,id=$value";
	}elseif ($key == 'a_p_artwork') {
	    $selector .= "template=a_artwork,id=$value";
	     */
	}elseif(preg_match(";[,/];", $value)) { // see if the value is given as a list (i.e. items separated by a comma)
	    // Operator "~|=" also works, but "%=" does not...
            $selector .= "$key=". ($value=str_replace([',','/'],'|',$value));
            $summary[$key] = $value;
            $input->whitelist($key, $value);
        }elseif(preg_match(";^@;", $value)) { // see if the we got 'more'
	    $selector .= "$key>=".($v=(str_replace('@', '', $value)));
	    $summary[$key] = (strpos($SITE_input, 'sort=-') ? 'Maximum' : 'Minimum');
	}elseif(preg_match(";^([<>]);", $value,$matches)) { // see if the we got 'less/more'
	    $selector .= "$key$matches[0]=".($v=(str_replace($matches[0], '', $value)).
						($matches[0]=='<' ? ", $key>=1" : ""));
            // $summary[$key] = ($matches[0]=='<' ? 'less' : 'more') . " than $v";
	    $summary[$key] = ($matches[0]=='<' ? 'Minimum' : 'Maximum');
        }elseif((strpos($value, '-') !== false) &&  // see if the value is given as a range (i.e. two numbers separated by a dash)
		!preg_match("/^\d\d\d\d-\d\d(\b)?(-\d\d)?\b/",$value)) {
            list($min, $max) = explode('-', $value);
            $min = (int) $min;	
            $max = (int) $max;
            $selector .= "$key>=$min, $key<=$max";
            $summary[$key] = (substr($max, 0, 3) == '999') ? "$min and above" : "$min to $max";
	}elseif(preg_match("/^(2\d\d\d)-\d\d(\b)?(-\d\d)?/",$value,$match) && strpos($key,'day0')!==false) {
            $selector .= "$key^=".($v=(empty($match[3]) ? $match[1] : $value));
	    $summary[$key] = "‎$v"; // sic!! "empty space" symbol
            $input->whitelist($key, $v);
	}elseif(substr($value, -1) == '+') { // see if the value ends with a +, which we used to indicate 'greater than or equal to'
            $value = (int) $value;
            $selector .= "$key>=$value";
            $summary[$key] = "$value and above";
            $input->whitelist($key, "$value+");
        }else{ // plain value that doesn't(?) need further parsing
	    $operation = '=';
	    if (is_numeric($value) && $field->type instanceof FieldtypeOptions) {
		if (preg_match("/rarity|popularity/",$key)) $operation = '>=';
		if (strpos($selector,'sort=') === false) $selector .= "sort=-$key, ";
	    }
	    $selector .= "$key$operation$value";
            $summary[$key] = $value;
            $input->whitelist($key, $value);
        }
        $selector .= ', ';
    }
    return $selector;
}
