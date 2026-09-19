<?php namespace ProcessWire;

// Locate all spots
$items_spots = PageArray();

$spots = ['restor_spot', 'adb_spot', 'a_spot', 'd_spot', 'h_spot'];
if (user()->name == 'margo') $spots = array_diff($spots, ['h_spot']);
foreach($spots as $spot) {
    if (($p=pages()->findOne("template=$spot"))->viewable()) {
	$p->set('featuredPage',
		(preg_match('{^(a|d|h)_}', $spot)
		    ? getRandomFeatured(1,str_replace('_spot','',$spot))->first->images->first
		    : $p->images->first));
	$items_spots->add($p);
    }
}
region('headline',"<img src=/sh/site/assets/files/0000/sh_logo50.png> ");
region('content+',
       renderObjectList($items_spots,
			2,
			false));
