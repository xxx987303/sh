<?php namespace ProcessWire;

require_once __dir__ . '/debug.php';
require_once "/Users/yb/Sites/sh/index.php";

global $n;

$desc = function(Page $p) {
    global $n;
    $and = count($p->h_aw_person) > 1 ? ' & ' : ' ';
    return escape_uml(sprintf("%3d - %-11s %-37s %-16s %-5s %-20s \n",
                              ++$n,
                              $p->h_aw_day0,
			      sanitizer()->pageName(sanitizer()->transliterate($p->title)), // $p->title,	
			      //$p->name,
			      $p->h_aw_year,
			      (count($p->size) ? $p->size->each("{name}") : ""),
                              trim($p->h_aw_person->each("{title}$and"),$and)),
                      'decode');

};

echo "\n==================================\n================================== Scarves\n==================================\n\n";
foreach(pages()->find("template=h_brand, sort=name") as $brand) {
    $n = 0;
    $auth = [];
    echo "============== ".$brand->title."\n";
    foreach(pages()->find("template=h_artwork, h_aw_brand=$brand->id, sort=title") as $p){
        $id = '';
        foreach($p->h_aw_person as $a) $id .= $a->id.'.';
        if (empty($auth[$id])) $auth[$id] = [];
        $auth[$id][] = $p;
    }
    ksort($auth);
    foreach ($auth as $a=>$list) {
        foreach($list as $p) { echo $desc($p); }
    }
}

echo "\n";
