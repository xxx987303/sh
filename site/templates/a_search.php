<?php namespace ProcessWire;
/**
 * This template looks for search terms as GET vars and formulates a selector to find matching artworks
 *
 */

/** @var WireInput $input */
/** @var Sanitizer $sanitizer */

// print'<pre>input:';print_r($input->get());print'</pre>';

// most of the code in this template file is here to build this selector string
// it will contain the search query that gets sent to $artworkList
$selector = '';

// we use this to store the info that generates the summary of what was searched for
// the summary will appear above the search results
$summary = array();

/*
// if a collection is specified, then we limit the results to having that collection as their parent
if($input->get('collection')) {
  $collectionName = $sanitizer->pageName($input->get('collection'));
  $collection = pages("/collections/$collectionName/");
  if($collection->id) {
    $selector .= "parent=$collection, ";
    $summary['collection'] = $collection->title;
    $input->whitelist('collection', $collection->name);
  }
}

// if a brand is specified, then we limit the results to having that brand as the manufacturer
if($input->get('brand')) {
  $brandName = $sanitizer->pageName($input->get('brand'));
  $brand = pages("/brands/$brandName/");
  if($brand->id) {
    $selector .= "aw_brand=$brand, ";
    $summary['brand'] = $brand->title;
    $input->whitelist('brand', $brand->name);
  }
}

// if a person is specified, then we limit the results to having that person as the artist (author of the artwork)
if($input->get('person')) {
  $personName = $sanitizer->pageName($input->get('person'));
  $person = pages("/persons/$personName/");
  if($person->id) {
    $selector .= "aw_person=$person, ";
    $summary['person'] = $person->title;
    $input->whitelist('person', $person->name);
  }
}

// we are allowing these GET vars in the format of 999, 999-9999, or 999+
// so we're using this loop to parse them into a selector
foreach (templates()->get('artwork')->fields as $key) {
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
tidy_dump($input,$selector);
tidy_dump($summary,$selector);

// execute the search
$items = (empty($selector)&&!$input->get('submit') ? new PageArray() : findObjects($selector,''));

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
