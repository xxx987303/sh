<?php namespace ProcessWire;

define("dryRun", true);

require_once __dir__ . '/debug.php';
require_once "/Users/yb/Sites/sh/index.php";

b_debug::_dbg("dryRun = ".var_export(dryRun,true));

$desc = function(Page $p) {
    return escape_uml(sprintf("%s . %s . %s . %s\n",
                              $p->h_aw_brand->each("{title}"),
                              $p->title,
                              $p->h_aw_year,
                              $p->h_aw_person->each("{title}, ")),
                      'decode');
};

foreach(explode("\n",file_get_contents('R_list_for_import.txt')) as $line){
    if (empty(trim($line)) || str_starts_with($line, '#')) continue;
    list($date,$carreTitle,$ln,$fn,$y,$cmt) = explode(',', preg_replace('/, */', ',', $line.',,'));
    $y = trim($y,'/');
    printf("%-10s %-30s %-25s %-15s %-10s ",$date,$carreTitle,"$fn $ln",$y,$cmt);
    $output = sprintf("\n=======================\n%-10s %-30s %-25s %-15s %-10s ",$date,$carreTitle,"$fn $ln",$y,$cmt);
    
    // Lookup the author
    $authors = [];
    $fnames = explode('&',$fn);
    $lnames = explode('&',$ln);
    if (count($fnames) != count($lnames)) die("wrong names....\n");
    for ($k=0; $k<count($fnames); $k++) {
        $p = pages()->get("template=h_person, h_av_lastname~=$lnames[$k], h_av_firstname~=$fnames[$k]");
        if (!$p->id) $p = pages()->get("template=h_person, title=$fnames[$k] $lnames[$k]");;
        
        if ($p->id) {
            echo $output . " !!!!!!!! $p->title\n";
        } else {
            b_debug::_dbg($output . " AUTHOR PAGE TO BE CREATED $fnames[$k] $lnames[$k]");
            $p = createPage(['title'         => trim("$fnames[$k] $lnames[$k]")],
                            ['h_av_firstname'=>$fnames[$k],
                             'h_av_lastname' =>$lnames[$k]],
                            ['template'      =>'h_person',
                             'hook'          =>'title']);
        }
        $authors[] = $p;
    }
    
    // Lookup the scarf
    $found = 0;
    if (count($pages=pages()->find("template=h_artwork, title~=$carreTitle"))){
        foreach($pages as $p) { $found++;      echo $desc($p); }
    }else{
      // Strip out the short words from the page title
        $items = []; foreach(explode(' ',$carreTitle) as $item) if (strlen($item) > 3) $items[] = $item;
      if (($p=pages()->get("template=h_artwork, title~=".join(' ',$items)))->id) {
          $found++;
          echo $desc($p);
      }
    }
    if (empty($authors)) { 
        echo "... No author(s) fond, TO BE CREATED \n";
    }
    
    $p = createPage(['title' => $carreTitle],
                    [],
                    ['template'=>'h_artwork',
                     'hook'    =>'title']);
    foreach($authors as $a) setKeyValue($p,'h_aw_person',$a,true);
    setKeyValue($p,'h_aw_brand',pages()->get(5835),true);
    setKeyValue($p,'h_aw_year',$y,true);
}

/**
 * Create a page if not yet done (hook done by an argument)
 *
 * @param $data array
 * return page|nullPage
 */
function createPage(Array $data=[], Array $skipFields=[], Array $args=[]){
    $selector = "template=".$args['template'];
    if (!empty($args['hook'])) $selector .= sprintf(", %s=%s",$args['hook'],sanitizer()->selectorValue($data[$args['hook']]));
    $page = pages()->get($selector);
    if ($page->id){
        b_debug::_dbg("AREADY EXISTS selector:$selector");
    }else{
        if (empty($parent = pages()->get("template=$args[template]s")) || !$parent->id) die("??? parent\n");
        $page = new Page();
        $page->name = pageName(empty($args['name']) ? $data['title'] : $args['name'],true);
        $page->template = $args['template'];
        $page->parent   = $parent;
        foreach($data as $k=>$v){
            if (!in_array($k,$skipFields)) setKeyValue($page, $k, $v, false);
        }
        if (!dryRun) $page->save();                         
        b_debug::_dbg("PAGE CREATED selector:$selector");
    }
    return $page;
}
