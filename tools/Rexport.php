<?php namespace ProcessWire;

require_once __dir__ . '/debug.php';
require_once "/Users/yb/Sites/sh/index.php";

global $n;

$desc = function(Page $p) {
    global $n;
    $s = count($p->h_aw_person) > 1 ? ' & ' : ' ';
    return escape_uml(sprintf("%3d - %-11s %-30s %-16s %s\n",
                              ++$n,
                              $p->h_aw_day0,
                              $p->title,
                              $p->h_aw_year,
                              trim($p->h_aw_person->each("{title}$s"),$s)),
                      'decode');
};

if (0) {
    echo "\n==================================\n================================== Artists\n==================================\n\n";
    //    [count] => 1
    //    [items] => [SelectableOption:2] => [[id] => 2,
    //                                        [title] => Collector,
    //                                        [value] => 2,]
    $n = 0;
    foreach (pages()->find("template=h_person, sort=h_av_lastname, limit=222") as $p) {
        print_r($p->h_av_duty->each());
        var_dump($p->h_av_duty->each('SelectableOption:2'));
        exit;
        echo escape_uml(sprintf("%3d - %s %s %s\n",
                                ++$n,
                                $p->h_av_duty->items->each(''),
                                $p->h_av_firstname,
                                $p->h_av_lastname),
                        'decode');
    }
}

if (1) {
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
}

echo "\n";
