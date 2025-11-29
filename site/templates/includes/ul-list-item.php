<?php namespace ProcessWire;
/**
 * Render fields with tag 'list'
 */
$url = $page->url;
$ttl = $page->title;

$taggedFields = '';
foreach(getTaggedFields($page,'list') as $f=>$i) {

    $value = (!empty($i['field']) && in_array($i['field'],$config->emojiFields) && ($emoji=getEmoji($i['field'], $i['value'], true))
	? $emoji
	: $i['value']);
    $taggedFields .= x("div class='uk-width-1-3 uk-width-small-1-5'",
		       "$value<br>" . x("small class='uk-text-muted'",$i['label']));
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
	      x("div class='object-city uk-text-muted'",$caption)).
	    $image.
	    x("div class='uk-width-2-3 uk-width-small-4-5'",
	      x("div class='uk-grid uk-grid-small uk-margin-small-bottom' style='text-size:smaller'",$taggedFields))).
	  $summary));
