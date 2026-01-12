<?php namespace ProcessWire;

/**
 * Artworks Template: lists them
 */

$Collections = $MyCollections = [];
foreach (pages()->get('a_collections')->children as $c) {
    $items = new PageArray();
    foreach([//$c->children->sort('a_aw_person'),
	     pages()->find("a_aw_collection=$c->id")->sort('a_aw_person')] as $p) { $items->add($p); }
    if (strpos($c->title, 'Leiden')) $MyCollections[] = renderImageList($items, 3, false);
    else        $Collections[] = x('h2',$c->title). renderImageList($items, 3, false);
}

region('content',
       page()->body .
       join('<br>', $MyCollections).
       join('<br>', $Collections));
