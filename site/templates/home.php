<?php namespace ProcessWire;

// Locate all spots
$items_spots = PageArray();

$spots = ['spot','spot2','restor_spot', 'adb_spot', 'a_spot', 'd_spot', 'h_spot'];
if (user()->name == 'margo') $spots = array_diff($spots, ['h_spot']);
foreach($spots as $spot) {
    if (($p=Pages()->findOne("template=$spot"))->viewable()) {
	$p->set('featuredPage',
		(preg_match('{^(a|d|h)_}', $spot)
		    ? getRandomFeatured(1,str_replace('_spot','',$spot))->first->images->first
		    : $p->images->first));
	$items_spots->add($p);
    }else{
	if ($p->id) error_log(($p->id ? "page $p is not viewable":"NO PAGE") . " from template $spot");
    }
}
region('headline',"<img src=/sh/site/assets/files/0000/sh_logo50.png> ");
region('content+',
       renderObjectList($items_spots,
			2,
			false));
