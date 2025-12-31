<?php namespace ProcessWire;
/**
 *  $day0, $carreTitle, $lastname, $firstname, $year, $cmt, $price, $size, $www, $base, $seller_id)
 */

require_once __dir__ . '/debug.php';
require_once "/Users/yb/Sites/sh/index.php";

global $n;
$user->language = $languages->getDefault();

$desc1 = function(Page $p) {
    global $n;
    $and = count($p->h_aw_person) > 1 ? ' & ' : ' ';
    return escape_uml(sprintf("%3d - %-11s %-40s %-16s %-5s %-20s \n",
                              ++$n,
                              $p->h_aw_day0,
			      $p->title, // sanitizer()->pageName(sanitizer()->transliterate($p->title)),
			      $p->h_aw_year,
			      //(count($p->h_aw_size) ? $p->h_aw_size->each("{name}") : ""),
			      ($p->h_aw_size ? $p->h_aw_size->title : ""),
			      trim($p->h_aw_person->each("{title}$and"),$and)),
                      'decode');

};

echo "\n==================================\n================================== Scarves\n==================================\n\n";
foreach(pages()->find("template=h_brand, sort=name") as $brand) {
    $n = 0;
    $artist = [];
    echo "============== ".$brand->title."\n";
    foreach(pages()->find("template=h_artwork, h_aw_brand=$brand->id, sort=name") as $p){
        $id = '';
        foreach($p->h_aw_person as $a) $id .= $a->id.'.';
        if (empty($artist[$id])) $artist[$id] = [];
        $artist[$id][] = $p;
    }
    ksort($artist);
    foreach ($artist as $a=>$list) {
        foreach($list as $p) { echo $desc1($p); }
    }
}

echo "\n";
