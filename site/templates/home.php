<?php namespace ProcessWire;

// Locate all spots
$items_spots = PageArray();
foreach(['h_', '', 'a_', 'd_'] as $pref) {
    if (($p=pages()->findOne("template={$pref}spot"))->viewable()) {
	$p->set('featuredPage',
		(empty($pref) ? $p->images->first : getRandomFeatured(1,str_replace('_','',$pref))->first->images->first));
	$items_spots->add($p);
    }
}
region('headline',"<img src=/sh/site/assets/files/0000/sh_logo50.png> ");
region('content+',
       renderObjectList($items_spots,
			2,
			false));
