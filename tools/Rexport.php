<?php namespace ProcessWire;


require_once __dir__ . '/debug.php';
require_once "/Users/yb/Sites/sh/index.php";

global $n;
$n = 0;
$desc = function(Page $p) {
    global $n;
    $s = count($p->h_aw_person) > 1 ? ' & ' : ' ';
    return escape_uml(sprintf("%3d - %-30s %-16s %s\n",
                              ++$n,
                              //$p->h_aw_brand->each("{title}"),
                              $p->title,
                              $p->h_aw_year,
                              trim($p->h_aw_person->each("{title}$s"),$s)),
                      'decode');
};

//print_r ($field_size('h_artwork', ['h_aw_brand', 'title', 'h_aw_year', 'h_aw_person']));

//$sort = "sort=h_aw_brand, sort=h_av_person, sort=title";
//$sort = "sort=h_aw_brand, sort=title, sort=h_av_person";
//$sort = "sort=title, sort=h_aw_brand, sort=h_av_person";
//$sort = "sort=title, sort=h_av_person, sort=h_aw_brand";
$sort = "sort=h_av_person, sort=h_aw_brand, sort=title";
$sort = "sort=h_av_person, sort=title";
foreach(pages()->find("template=h_brand, sort=name") as $brand) {
    $n = 0;
    echo "============== ".$brand->title."\n";
    //    foreach(pages()->find("template=h_artwork, h_aw_brand=".$brand->title) as $p){
    foreach(pages()->find("template=h_artwork") as $p){
        var_dump($p->h_aw_brand->each('title'));
        var_dump($p->h_aw_brand->each('title')[0]);
        echo"-------------------------brand\n";
        var_dump($brand->title);
        die();
        echo $p->h_aw_brand->each('title')."---------------------\n";
        echo $brand->title."\n";
        die();
       if ($p->h_aw_brand->each('title') != $brand->title) continue;
        echo $desc($p);
        //  foreach($p->fields() as $f) if($p->$f) echo "$f->name: ".$p->$f."\n";
        //  print_r($p);
        //  exit;
    }
}
echo "\n";


$field_size = function(String $template, Array $fields) {
    return [];
    b_debug::_dbg($fields);
    foreach($fields as $f) $sizes[$f] = 0;
    foreach(($pages=pages()->find("template=$template")) as $p) {
        echo $p->title."\n";
        foreach ($fields as $f) {
            b_debug::_dbg("f = $f");
            b_debug::_dbg("$p->$f");
            echo '$p->$f = "'.$p->$f."\"\n";
            if (is_string("$p->$f")) {
                if (($l=strlen($p->f)) > $sizes[$p->f]) $sizes[$p->f] = $l;
            }else{
                print_r("$p->$f");
                die();
                $shit = 888;
            }
            die();
        }
    }
    die();
    if (!empty($shit)) die();
    return $sizes;
};

