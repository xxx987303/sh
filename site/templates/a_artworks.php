<?php namespace ProcessWire;
/**
 * Artworks Template: lists them
 */

$Collections = $MyCollections = [];
foreach (pages()->get('a_collections')->children as $c) {
    $items = new PageArray();
    foreach(pages()->find("a_aw_collection=$c->id")->sort('-a_aw_person') as $p) {
	if (0 && $p->name == '9999-premier-voyage-aerien') $p_9999 = $p;
	else            $items->add($p);
    }
    if (strpos($c->title, 'Leiden')) $MyCollections[] = renderImageList($items, 3, false);
    else                               $Collections[] = x('h2',$c->title). renderImageList($items, 3, false);
 }
if (@$p_9999)         $MyCollections[] = renderImageList(new PageArray($p_9999), 3, false);
    
region('content',
       page()->body .
       join('<br>', $MyCollections).
       join('<br>', $Collections));
