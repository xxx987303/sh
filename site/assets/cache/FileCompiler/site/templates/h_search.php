<?php namespace ProcessWire;
/**
 * This template looks for h-search terms as GET vars and formulates a selector to find matching h_artworks
 *
 */

/** @var WireInput $input */
/** @var Sanitizer $sanitizer */

// print'<pre>input:';print_r($input->get());print'</pre>';

// most of the code in this template file is here to build this selector string
// it will contain the h-search query that gets sent to $artworkList
$selector = '';

// we use this to store the info that generates the summary of what was searched for
// the summary will appear above the h-search results
$summary = array();

/*
// if a h_collection is specified, then we limit the results to having that h_collection as their parent
if($input->get('h_collection')) {
  $collectionName = $sanitizer->pageName($input->get('h_collection'));
  $h_collection = pages("/collections/$collectionName/");
  if($h_collection->id) {
    $selector .= "parent=$h_collection, ";
    $summary['h_collection'] = $h_collection->title;
    $input->whitelist('h_collection', $h_collection->name);
  }
}

// if a h_brand is specified, then we limit the results to having that h_brand as the manufacturer
if($input->get('h_brand')) {
  $brandName = $sanitizer->pageName($input->get('h_brand'));
  $h_brand = pages("/h_brands/$brandName/");
  if($h_brand->id) {
    $selector .= "h_aw_brand=$h_brand, ";
    $summary['h_brand'] = $h_brand->title;
    $input->whitelist('h_brand', $h_brand->name);
  }
}

// if a h_person is specified, then we limit the results to having that h_person as the artist (author of the h_artwork)
if($input->get('h_person')) {
  $personName = $sanitizer->pageName($input->get('h_person'));
  $h_person = pages("/h_persons/$personName/");
  if($h_person->id) {
    $selector .= "h_aw_person=$h_person, ";
    $summary['h_person'] = $h_person->title;
    $input->whitelist('h_person', $h_person->name);
  }
}

// we are allowing these GET vars in the format of 999, 999-9999, or 999+
// so we're using this loop to parse them into a selector
foreach (templates()->get('h_artwork')->fields as $key) {
  $key = $key->name;
  if(!$value = $input->get($key)) continue;

  if(strpos($value, ',') !== false) { // see if the value is given as a list (i.e. items separated by a comma)
    $selector .= "$key%=".str_replace(',',' ',$value);
    $summary[$key] = $value;
    $input->whitelist($key, $value);
  }elseif(strpos($value, '-') !== false) { // see if the value is given as a range (i.e. two numbers separated by a dash)
    list($min, $max) = explode('-', $value);
    $min = (int) $min;	
    $max = (int) $max;
    $selector .= "$key>=$min, $key<=$max, ";
    $summary[$key] = (substr($max, 0, 3) == '999') ? "$min and above" : "$min to $max";
    $input->whitelist($key, "$min-$max");
  }elseif(substr($value, -1) == '+') { // see if the value ends with a +, which we used to indicate 'greater than or equal to'
    $value = (int) $value;
    $selector .= "$key>=$value, ";
    $summary[$key] = "$value and above";
    $input->whitelist($key, "$value+");
  }else{ // plain value that doesn't need further parsing
    $value = (int) $value;
    $selector .= "$key=$value, ";
    $summary[$key] = $value;
    $input->whitelist($key, $value);
  }
}
*/

// if there are keywords, look in the title and body fields for the words
//foreach(['keywords','tags'] as $key){
foreach(['keywords'] as $key){
  if($v=$input->get($key)) {
    $value = $sanitizer->selectorValue($v);
    $selector .= ($key=='keywords' ? "title|body%=$value, " : "tags=$value");
    $summary[$key] = $sanitizer->entities($value);
    $input->whitelist($key, $value);
  }
}
//tidy_dump($input,$selector);
//tidy_dump($summary,$selector);

// execute the h-search
$items = new PageArray();
if (!empty($selector) || $input->get('submit')){
  foreach (findObjects($selector,'') as $p) if(strpos($p->template->name,'h_') === 0) $items->add($p);
}

// generate a summary alert that appears at the top of the page, and browser <title> tag
$browserTitle = __('Artwork Search - ');

foreach($summary as $key => $value) {
  if($value) {
    $key = ucfirst($key);
    $browserTitle .= ucfirst($key) . ": $value, ";
  } else {
    unset($summary[$key]);
  }
}

region('browserTitle', rtrim($browserTitle, ', '));
region('content',
       files()->render('./includes/search_summary.php',
		       array('items' => $summary)) .
       renderObjectList($items,$cols=2));
