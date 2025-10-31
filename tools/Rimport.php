<?php namespace ProcessWire;
/*
 *
 */
require_once __dir__ . '/../../../Sites/sh/index.php';
require_once __dir__ . '/debug.php';

$R_list = __dir__ . '/R_list_for_import.txt';

/*
 * Get page summary
 */
$desc = function(Page $p) {
    return escape_uml(sprintf(" %s %s, %s, %s",
                              $p->h_aw_brand->each("{title}"),
                              $p->title,
                              $p->h_aw_year,
                              $p->h_aw_person->each("{title}, ")), '->')."\n";
    return trim(sprintf("   %s, %s, %s, %s",
                        $p->h_aw_brand->each("{title}"),
                        $p->title,
                        $p->h_aw_year,
                        $p->h_aw_person->each("{title}, ")))."\n";
};

/*
 * Executor
 */
//print_r(pages()->get("title=La Torre")); exit;
//foreach(($pages=pages()->find("template=h_person")) as $p) echo "$p->template $p->title\n";
if (0) {
    echo "Existing pages for Hermes:\n";
    $n = 0;
    foreach(($pages=pages()->find("template=h_artwork,sort=h_aw_brand")) as $p){
        if (!str_starts_with($p->h_aw_brand->each("{title}"), 'Herm')) continue;
        printf("%5d - %s   Author: %s\n", ++$n, $p->title, $p->h_aw_person->each("{title}"));
        //foreach($p->fields() as $f) if(!empty($p->$f)) { echo "    $f->name: '".$p->$f."'\n"; }
    }
}
echo "\n";

foreach(explode("\n",file_get_contents($R_list)) as $line){
    if(empty(trim($line)) || str_starts_with($line, '#')) continue;
    list($carreTitle,$ln,$fn,$y,$cmt) = explode(',', $line, 5);
    //echo "$carreTitle,$ln,$fn,$y,$cmt\n";
    $y = trim(trim($y,'/'),',');
    $cmt = str_replace(',', '', $cmt);
    $output = sprintf("\n%-30s %-25s %-15s %-10s ",$carreTitle,"$fn $ln",$y,$cmt);
    $ln = preg_replace("/La /","",$ln);
    $fn = preg_replace("/La /","",$fn);

    // Lookup the author
    $authors = [];
    /*
    if(strpos($fn.$ln,'&') === false){
        $p = pages()->get("template=h_person, h_av_lastname~=$ln, h_av_firstname~=$fn");
        if($p->id)     { $authors[] = $p; echo $output . " !!!!!!!! $p->title\n"; }
        else                           echo $output . " ???????? $fn $ln\n";
    }else{
        list($a1,$a2) = explode('&',$fn.$ln);
        $p1 = pages()->get("template=h_person, h_av_lastname~=$a1, h_av_firstname~=$a1");
        $p2 = pages()->get("template=h_person, h_av_lastname~=$a2, h_av_firstname~=$a2");
        if($p1->id)    { $authors[] = $p1; echo ""; } // "!!!!!!!!!!!!!!!!!!!!!!!! $p1->title\n";
        else           echo "???????????????????????? $a1\n";
        if($p2->id)    { $authors[] = $p2; echo ""; } // "!!!!!!!!!!!!!!!!!!!!!!!! $p2->title\n";
        else           echo "???????????????????????? $a2\n";
    }
    */
    foreach(explode('&',$fn.$ln) as $author) {
        list($ln,$fn) = explode($author, ',', 2); 
        $p = pages()->get("template=h_person, h_av_lastname~=$ln, h_av_firstname~=$fn");
        if($p->id) {
            echo $output . " !!!!!!!! $p->title\n";
        }elseif (!empty($ln)) {
            echo $output . " ???????? $fn $ln\n";
            $p = createPage(['title' => "$fn $ln"],
                            ['h_av_firstname'=>$fn,
                             'h_av_lastname' =>$ln],
                            ['template'=>'h_person',
                             'hook'    =>'title']);
        }
        $authors[] = $p;
    }
    
    // Lookup the scarf
    $found = 0;
    if(count($pages=pages()->find("template=h_artwork, title~=$carreTitle"))){
        foreach($pages as $p) { $found++;      echo " -1- ".$desc($p); }
    }else{
        $items = []; foreach(explode(' ',$carreTitle) as $item) if(strlen($item) > 3) $items[] = $item;
        var_dump($items);
        if(($p=pages()->get("template=h_artwork, title~=".join(' ',$items)))->id) { $found++;       echo $desc($p); }
    }

    if (!$found) {
        echo "... TO BE CREATED \n";
        continue; //            die();
        
        $p = createPage(['title' => $carreTitle],
                        [],
                        ['template'=>'h_artwork',
                         'hook'    =>'title']);
        echo "CREATED ".$desc($p);
        foreach($auth as $a) setKeyValue($p,'h_aw_person',$a,true);
        setKeyValue($p,'h_aw_brand',pages()->get(5835),true);
        setKeyValue($p,'h_aw_year',$y,true);
    }
}
