<?php namespace ProcessWire;
/**
 * Render pages with tag 'list' (grey buttons on the page)
 */

$fieldOrder = ['_aw_price',
	       '_aw_size',
	       '_aw_rarity',
	       '_aw_popularity',
	       '_aw_year',
	       '_p_payed'];
/**
 * Render a field
 */
$getItem = function(Page $page, Field $field) {
    return x("div class='uk-width-1-3 uk-width-small-1-5'",
	     getKeyValue($page, $field, 15) .
	     x("div",x("small class='uk-text-muted'",$field->getLabel())));
};

//
// Walk thru the fields, grep tag 'list' 
//
$tag = 'list';
$fieldsTaggedList = '';
foreach($fieldOrder as $f_name) {
    if (fieldViewable(($field=fields()->get($GLOBALS['SPOT_id'].$f_name)), $tag, $page))  $fieldsTaggedList .= $getItem($page, $field);
}
foreach($page->fields as $field){
    if (!preg_match("/".implode('|',$fieldOrder)."/",$field->name) &&
	fieldViewable($field, $tag, $page)) $fieldsTaggedList .= $getItem($page,$field);
}

$image = x("div class='uk-width-1-3 uk-width-small-1-5'",
	   x("a href='$page->url'",
	     x("img src='$img' alt='$page->title' class='rounded-corners'")));

$summary = (empty($summary) ? "" : x("p style='margin-bottom:unset; margin-top:unset'",$summary));

if ($XXL) {
    // Large "buttons" for the front page
    echo "\n<style>
.centered-item { display:flex; justify-content:center; align-items:center; }
.xx-large-item { padding-top:40px; font-size:xx-large; line-height:initial; }
</style>\n";
//    echo x("pre",'case1 XXL');
    echo x("div class='ul-list-item rounded-area'",
	   x("div class='uk-grid uk-grid-medium'",
	     x("div class='uk-width-1-3'",
	       x("a href='$page->url'",
		 x("img src='$img' alt='$page->title' class='rounded-corners'/"))).
	     x("div class='uk-width-2-3'",
	       x("div class='uk-griduk-margin-bottom'",
		 x("div class='uk-width-1-1 uk-width-2-3 uk-margin-bottom'",
		   x("a href='$page->url' class='uk-text-bold'", x("span class='xx-large-item centered-item'",$page->title)))))));
} elseif (empty($fieldsTaggedList)) {
    //echo x("pre",'case2');
    echo x("div class='ul-list-item rounded-area'",
	   x("div class='uk-grid uk-grid-medium'",
	     $image.
	     x("div class='uk-width-2-3 uk-width-small-3-4'",
	       x("div class='uk-grid uk-grid-small uk-margin-small-bottom'",
		 x("div class='uk-width-1-1 uk-width-small-4-4 uk-margin-small-bottom'",
		   x("a href='$page->url' class='uk-text-bold'",$page->title).
		   x("div class='object-city uk-text-muted'",$caption))))).
	   $summary);
} else {
    //echo x("pre",'case3');
    echo x("div class='ul-list-item rounded-area'",
	   x("div class='uk-grid uk-grid-medium'",
	     x("div class='uk-width-2-3 uk-width-small-3-5' style='padding-top:0;margin-bottom:15px'",
	       x("a href='$page->url' class='uk-text-bold'",$page->title)).
	     x("div class='uk-width-1-3 uk-width-small-2-5'",
	       x("div class='object-city uk-text-muted' style=float:right",is_object($caption)?$caption->title:$caption)).
	     $image.
	     x("div class='uk-width-2-3 uk-width-small-4-5'",
	       x("div class='uk-grid uk-grid-small uk-margin-small-bottom' style='text-size:smaller'",$fieldsTaggedList))).
	   $summary);
}
