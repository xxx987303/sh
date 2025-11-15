<?php namespace ProcessWire;
/**
 *     list($day0, $carreTitle, $ln, $fn, $year, $cmt)
 *     list($day0, $carreTitle, $ln, $fn, $year, $cmt, $price, $size, $www)
 */

define("dryRun", true);


//define("R_list", 'R_list_for_import.txt');
define("R_list",'Kaplans_for_import.txt');
    
require_once __dir__ . '/debug.php';
require_once "/Users/yb/Sites/sh/index.php";

say::notice("dryRun = ".var_export(dryRun,true));

function joinX(Array $a){
    $r = "";
    foreach($a as $k=>$v) $r .= "[$k]=>$v,";
    return trim($r,',');
}

$desc = function(Page $p) {
    return escape_uml(sprintf("%s . %s . %s . %s\n",
                              $p->h_aw_brand->each("{title}"),
                              $p->title,
                              $p->h_aw_year,
                              $p->h_aw_person->each("{title}, ")),
                      'decode');
};

$getPage = function(String $template, Array $args) {
    list($selector , $selector3) = ["template=$template",
                                    "template=$template, title~="];
    $selector2 = $selector;
    foreach($args as $f=>$v) {
        $v2 = trim(preg_replace('/\b\w{1,3}\b\s*/u', '', $v));
        if (!empty($v))  $selector  .= ", $f~=$v";
        if (!empty($v2)) $selector2 .= ", $f~=$v2";
        if (!empty($v2)) $selector3 .= "$v2 ";
    }
    foreach ([$selector,
              $selector2,
              $selector3] as $k=>$s) {
        $p = pages()->get($selector=trim($s));
        if ($p->id) break;
    }
    b_debug::_dbg(($p->id?'OK':'FAIL')." ".++$k." - $selector");
    return $p;
};

/*
$p = pages()->get("template=h_person, h_av_lastname~=$lnames[$k], h_av_firstname~=$fnames[$k]");
if (!$p->id) $p = pages()->get("template=h_person, title=~$fnames[$k] $lnames[$k]");;
if(count($pages=pages()->find("template=h_artwork, title~=$carreTitle"))){
    foreach($pages as $p) { $found++;      echo $desc($p); }
}else{
    $items = []; foreach(explode(' ',$carreTitle) as $item) if(strlen($item) > 3) $items[] = $item;
    if(($p=pages()->get("template=h_artwork, title~=".join(' ',$items)))->id) { $found++;       echo $desc($p); }
}
*/

foreach(explode("\n",file_get_contents(R_list)) as $line){
    if (empty(trim($line)) || str_starts_with($line, '#')) continue;
    list($day0, $carreTitle, $ln, $fn, $year, $cmt) = explode(',', $line.',,');
    list($day0, $carreTitle, $ln, $fn, $year, $cmt, $price, $size, $www) = explode(',', $line.',,,,,');
    //$carreTitle = str_replace(';', ',', $carreTitle); // comma breaks the selector

    $gavroche = in_array('G', preg_split("/\s/", $cmt)) ? true : false;
    $output = sprintf("\n=======================\n%-10s %-30s %-25s %-15s %-10s ",
                      $day0,$carreTitle,"$fn $ln",$year,(empty($cmt)?'':"'$cmt'"));
    //printf("%-10s %-30s %-25s %-15s %-10s ",$day0,$carreTitle,"$fn $ln",$year,$cmt);

    //
    // Lookup the author(s)
    //
    $authors = [];
    $fnames = explode('&',$fn);
    $lnames = explode('&',$ln);
    if (count($fnames) != count($lnames)) die("wrong names....\n");
    for ($k=0; $k<count($fnames); $k++) {
        $p = $getPage("h_person", ["h_av_lastname" => $lnames[$k],
                                   "h_av_firstname"=> $fnames[$k]]);
        if ($p->id) {
            echo $output . " !!!!!!!! $p->title\n";
        } else {
            echo $output . " ???????? AUTHOR PAGE\n";
        }

        $p = createPage(['title'         => trim("$fnames[$k] $lnames[$k]"),
                         'h_av_firstname'=>$fnames[$k],
                         'h_av_lastname' =>$lnames[$k],
                         'h_av_duty'     =>'Artist'],
                        [],
                        ['template'      =>'h_person',
                         'hook'          =>'title']);
        $authors[] = $p;
    }
    
    //
    // Lookup Scarves
    //
    $selector = $carreTitle;
    if ($gavroche) $selector .= ", h_aw_options~=G";
    if (!($p = $getPage("h_artwork", ["title" => $carreTitle]))->id) {
        $p = createPage(['title' => $carreTitle,
                         'h_aw_day0' => ((int)$day0 ? $day0 : ''),
                         'h_aw_brand'=> pages()->get(5835),       // Set "Hermes" as the brand
                         'h_aw_more' => $cmt,
                         'h_aw_year' => $year],
                        [],
                        ['template'=>'h_artwork',
                         'hook'    =>'title']);
    }
    foreach($authors as $a) setKeyValue($p,'h_aw_person',$a,dryRun);
}

/**
 * Create a page if not yet done (hook done by an argument)
 *
 * @param $data array
 * @param $skipFields array
 * @param $args array
 * return page|nullPage
 */
function createPage(Array $data=[], Array $skipFields=[], Array $args=[]){
    b_debug::_dbg('$data='.joinX($data));
    $selector = "template=".$args['template'];
    if (!empty($args['hook'])) $selector .= sprintf(", %s=%s",$args['hook'],sanitizer()->selectorValue($data[$args['hook']]));
    $page = pages()->get($selector);
    if ($page->id){
        b_debug::_dbg("PAGE ALREADY EXISTS selector:$selector");
    }else{
        if (empty($parent = pages()->get("template=$args[template]s")) || !$parent->id) die("??? parent\n");
        $page = new Page();
        $page->name = pageName(empty($args['name']) ? $data['title'] : $args['name'],true);
        $page->template = $args['template'];
        $page->parent   = $parent;
        b_debug::_dbg("PAGE CREATED selector:$selector");
    }
    foreach($data as $k=>$v){
        if (!in_array($k,$skipFields)) setKeyValue($page, $k, $v, dryRun);
    }
    if (!dryRun) $page->save();                         
    return $page;
}
