<?php namespace ProcessWire;
/**
 * Render fields with tag 'list'
 */

$fieldOrder = ['h_aw_price',
	       'h_aw_size',
	       'h_aw_rarity',
	       'h_aw_popularity',
	       'h_aw_year',];

$listTaggedFields = '';
foreach($fieldOrder as $f_name) {
    if (empty($field=fields()->get($f_name)) || !fieldViewable($field,'list') || empty($page->$field)) continue;
    if ($page->$field instanceof SelectableOptionArray && !count($page->$field)) continue;
    $value = (($emoji=getEmoji($field->name, (string)$page->$field, true))
	    ? $emoji
	    : (string)$page->$field);
    $value = getKeyValue($page, $field);
    $listTaggedFields .= x("div class='uk-width-1-3 uk-width-small-1-5'",
			   "$value<br>" .
			   x("small class='uk-text-muted'",$field->getLabel()));
}

$image = x("div class='uk-width-1-3 uk-width-small-1-5'",
	   x("a href='$page->url'",
	     x("img src='$img' alt='$page->title' class='rounded-corners'")));

$summary = (empty($summary) ? "" : x("p style='margin-bottom:0'",$summary));

if ($XXL) {
    echo "<style>
.centered-item {
  display: flex;
  justify-content: center;
  align-items: center;
}
.xx-large-item {
  padding-top: 40px;
  font-size: xx-large;
  line-height: initial;
}
</style>";
//echo x("pre",'case1');
    echo x("div class='ul-list-item rounded-area'",
	   x("div class='uk-grid uk-grid-medium'",
	     x("div class='uk-width-1-3'",
	       x("a href='$page->url'",
		 x("img src='$img' alt='$page->title' class='rounded-corners'/"))).
	     x("div class='uk-width-2-3'",
	       x("div class='uk-griduk-margin-bottom'",
		 x("div class='uk-width-1-1 uk-width-2-3 uk-margin-bottom'",
		   x("a href='$page->url' class='uk-text-bold'", x("span class='xx-large-item centered-item'",$page->title)))))));
} elseif (empty($listTaggedFields)) {
//echo x("pre",'case2');
    echo x("div class='ul-list-item rounded-area'",
	   x("div class='uk-grid uk-grid-medium'",
	     $image.
	     x("div class='uk-width-2-3 uk-width-small-4-5'",
	       x("div class='uk-grid uk-grid-small uk-margin-small-bottom'",
		 x("div class='uk-width-1-1 uk-width-small-2-5 uk-margin-small-bottom'",
		   x("a href='$page->url' class='uk-text-bold'",$page->title).
		   x("div class='object-city uk-text-muted'",$caption))))).
	   $summary);
} else {
//echo x("pre",'case3');
    echo x("div class='ul-list-item rounded-area'",
	   x("div class='uk-grid uk-grid-medium'",
	     x("div class='uk-width-2-3 uk-width-small-4-5' style='padding-top:0;margin-bottom:15px'",
	       x("a href='$page->url' class='uk-text-bold'",$page->title)).
	     x("div class='uk-width-1-3 uk-width-small-1-5'",
	       x("div class='object-city uk-text-muted'",$caption->title)).
	     $image.
	     x("div class='uk-width-2-3 uk-width-small-4-5'",
	       x("div class='uk-grid uk-grid-small uk-margin-small-bottom' style='text-size:smaller'",$listTaggedFields))).
	   $summary);
}
