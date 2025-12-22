<?php namespace ProcessWire;
/**
 * Render fields with tag 'list'
 */
$url = $page->url;
$ttl = $page->title;

$fieldOrder = ['h_aw_price',
	       'h_aw_size',
	       'h_aw_rarity',
	       'h_aw_popularity',
	       'h_aw_year',];

$taggedFields = '';
foreach($fieldOrder as $f_name) {
    if (empty($field=fields()->get($f_name)) || !$field->hasTag('list') || empty($page->$field)) continue;
    if ($page->$field instanceof SelectableOptionArray && !count($page->$field)) continue;
    $value = (($emoji=getEmoji($field->name, (string)$page->$field, true))
	    ? $emoji
	    : (string)$page->$field);
    $taggedFields .= x("div class='uk-width-1-3 uk-width-small-1-5'", "$value<br>" . x("small class='uk-text-muted'",$field->getLabel()));
}

$image = x("div class='uk-width-1-3 uk-width-small-1-5'",
	   x("a href='$url'",
	     x("img src='$img' alt='$ttl' class='rounded-corners'")));

$summary = (empty($summary) ? "" : x("p style='margin-bottom:0'",$summary));

echo (empty($taggedFields)
      ? x("div class='ul-list-item rounded-area'",
	  x("div class='uk-grid uk-grid-medium'",
	    $image.
	    x("div class='uk-width-2-3 uk-width-small-4-5'",
	      x("div class='uk-grid uk-grid-small uk-margin-small-bottom'",
		x("div class='uk-width-1-1 uk-width-small-2-5 uk-margin-small-bottom'",
		  x("a href='$url' class='uk-text-bold'",$ttl).
		  x("div class='object-city uk-text-muted'",$caption))))).
	  $summary)
      : x("div class='ul-list-item rounded-area'",
	  x("div class='uk-grid uk-grid-medium'",
	    x("div class='uk-width-2-3 uk-width-small-4-5' style='padding-top:0;margin-bottom:15px'",
	   x("a href='$url' class='uk-text-bold'",$ttl)).
	    x("div class='uk-width-1-3 uk-width-small-1-5'",
	      x("div class='object-city uk-text-muted'",$caption->title)).
	    $image.
	    x("div class='uk-width-2-3 uk-width-small-4-5'",
	      x("div class='uk-grid uk-grid-small uk-margin-small-bottom' style='text-size:smaller'",$taggedFields))).
	  $summary));
