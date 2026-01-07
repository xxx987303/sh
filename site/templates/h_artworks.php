<?php namespace ProcessWire;

/**
 * Artworks - list all of them
 */
$items = new PageArray();
$iRejected = new PageArray();
$iVariations = new PageArray();
$iOtherBrands = new PageArray();
$Collections = [];
$dejavu = [];
$processed = [];
$hermes = pages()->get('title=Hermès')->id;
$c1 = $c2 = $c3 = false;
foreach (pages()->get('h_collections')->children as $c) {
    $cols = new PageArray();
    foreach([$c->children, pages()->find("h_aw_collection=$c->id")] as $p) {
	$cols->add($p);
	@$dejavu[$p->title]++;
	$processed[] = $p->id;
    }
    $Collections[] = x('h2',_t($c->title)). renderImageList($cols, $cols=4,false);
}

foreach (page()->children as $p) {
    if (in_array($p->id, $processed) || count($p->h_aw_collection)) continue;
    if (($c2=strpos($p->name, 'variation')) || ($c3=$p->h_aw_brand->id != $hermes) || @$dejavu[$p->title]++) {
	if($c2)      $iVariations->add($p);
	elseif($c3)  $iOtherBrands->add($p);
	else         $iRejected->add($p);
    } else {
	$items->add($p);
    }
}
region('content',
       page()->body .
       renderImageList($items, $cols=4,false,__('Scarves')).
       ($user->hasPermission('see-full-menu')
	   ? (count($iRejected)        ? x('h2',__('Duplicated(?) Scarves')) . renderImageList($iRejected, $cols=4,false):"").
	     (count($iVariations)      ? x('h2',__('Color Variations')) . renderImageList($iVariations, $cols=4,false):"").
	     join('<br>', $Collections).
	     (count($iOtherBrands)     ? x('h2',__('Other brands')). renderImageList($iOtherBrands, $cols=4,false):"")
           : ""));
