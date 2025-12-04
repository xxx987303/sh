<?php namespace ProcessWire;
/**
 *     list($day0, $carreTitle, $lastname, $firstname, $year, $cmt)
 *     list($day0, $carreTitle, $lastname, $firstname, $year, $cmt, $price, $size, $www, $base)
 */

define("saveToDB", false);
define('R_list', empty($argv[1]) ? "All_for_import.txt" : $argv[1]); 

require_once __dir__ . '/debug.php';
require_once __dir__ . '/../site/templates/_func.php';
require_once "/Users/yb/Sites/sh/index.php";

say::notice("saveToDB = ".var_export(saveToDB,true));


$P_h_sizes = createPage(['title'    => 'Sizes'],
			['template' =>'h_sizes',
			 'parent'   => 1,
			 'hook'     =>'title']);

$desc = function(Page $p) {
    return escape_uml(sprintf("%s . %s . %s . %s\n",
                              $p->h_aw_brand->each("{title}"),
                              $p->title,
                              $p->h_aw_year,
                              $p->h_aw_person->each("{title}, ")),
                      'decode');
};

function getPage(String $template, Array $args) {
    $p = new NullPage();
    $selector = $selector2 = $selector3 = "template=$template";
    foreach($args as $f=>$v) {
        $v2 = trim(preg_replace('/\b\w{1,3}\b\s*/u', '', $v));
        if (!empty($v))  {$ok=1; $selector  .= ", $f~=$v";}
        if (!empty($v2)) {$ok=1; $selector2 .= ", $f~=$v2";}
        if (!empty($v2)) {$ok=1; $selector3 .= ", title~=$v2 ";}
    }
    if (empty($ok)){
        $k = 0;
    } else {        
        foreach ([$selector,
                  $selector2,
                  $selector3] as $k=>$s) {
            $p = pages()->get($selector=trim($s));
            if ($p->id) break;
        }
    }
    b_debug::_dbg(($p->id?'OK':'FAIL')." ".++$k." - $selector");
    return $p;
}

/*
$p = pages()->get("template=h_person, h_av_lastname~=$lastnames[$k], h_av_firstname~=$firstnames[$k]");
if (!$p->id) $p = pages()->get("template=h_person, title=~$firstnames[$k] $lastnames[$k]");;
if(count($pages=pages()->find("template=h_artwork, title~=$carreTitle"))){
    foreach($pages as $p) { $found++;      echo $desc($p); }
}else{
    $items = []; foreach(explode(' ',$carreTitle) as $item) if(strlen($item) > 3) $items[] = $item;
    if(($p=pages()->get("template=h_artwork, title~=".join(' ',$items)))->id) { $found++;       echo $desc($p); }
}
*/

foreach(explode("\n",file_get_contents(R_list)) as $line){
    if (empty(trim($line)) || str_starts_with($line, '#')) continue;
    list($day0, $carreTitle, $lastname, $firstname, $year, $cmt, $price, $size, $www, $base) = explode(',', $line.',,,,,,,,');

    $gavroche = in_array('G', preg_split("/\s/", $cmt)) ? true : false;
    $output = sprintf("%-10s %-30s %-25s %-15s %-5s %-10s ",
                      $day0,$carreTitle,"$firstname $lastname",$year,$size, $cmt);
    print ("\n======================================================================================\n");
    //    printf("%-10s %-30s %-25s year=%-15s cmt=%-10s \n",
    //	   $day0,$carreTitle,"$firstname $lastname",$year,$cmt);

    //
    // Lookup the author(s)
    //
    $authors = [];
    $firstnames = explode('&',$firstname);
    $lastnames = explode('&',$lastname);
    if (count($firstnames) != count($lastnames)) die("wrong names....\n");
    for ($k=0; $k<count($firstnames); $k++) {
        $p = getPage("h_person", ["h_av_lastname" => $lastnames[$k],
                                  "h_av_firstname"=> $firstnames[$k]]);
        if ($p->id) {
            echo $output . " !!!!!!!! $p->title\n";
        } else {
            echo $output . " ???????? AUTHOR PAGE\n";
        }

        $p = createPage(['title'         => trim("$firstnames[$k] $lastnames[$k]"),
                         'h_av_firstname'=>$firstnames[$k],
                         'h_av_lastname' =>$lastnames[$k],
			 'h_av_duty'     =>'Artist'],
                        ['template'      =>'h_person',
                         'hook'          =>'title']);
        $authors[] = $p;
    }

    //
    // Lookup brand
    //
    $brand = getPage('h_brand', ['title' => 'Hermès']);
    foreach(['Chanel', 'Dior', 'RADO', 'Omega'] as $bName) {
	if (preg_match("/\b$bName\b/i", $line)) {
	    if (($p = getPage('h_brand', ['title'=>$bName]))->id) {
		say::notice("Detected brand ".$p->title);
		$brand = $p;
	    } else {
		$brand = createPage(['title' => $bName],
				    ['template'  =>'h_brand',
				     'hook'      =>'title'],
				    true); // SIC! writing to DB
	    }
	}
    }
	

    //
    // Lookup Scarves
    //
    $selector = $carreTitle;
    if ($gavroche) $selector .= ", h_aw_options~=G";
  //$p = getPage("h_artwork", ["title" => $carreTitle]);
    $p = createPage(['title' => $carreTitle,
		     'h_aw_day0' => $day0,
		     'h_aw_size' => $size,
                     'h_aw_more' => $cmt,
		     'h_aw_price'=> $price,
		     'h_aw_base' => $base,
                     'h_aw_brand'=> $brand,
		     'h_aw_year' => $year],
                    ['template'=>'h_artwork',
                     'hook'    =>'title']);
    foreach($authors as $a) setKeyValue($p,'h_aw_person',$a,saveToDB);
}

/**
 * Create a page if not yet done (hook done by an argument)
 *
 * @param $data array
 * @param $skipFields array
 * @param $args array
 * return page|nullPage
 */
function createPage(Array $dataArg=[], Array $args=[], $saveToDB=saveToDB){
    $data = []; foreach($dataArg as $k=>$v) if (!empty($v) || $v==0) $data[$k] = $v;
    b_debug::_dbg('data='.joinX($data));
    if (empty($data['title'])) {
        b_debug::_dbg("FAIL empty(data[title])");
        return new NullPage();
    }
    $selector = "template=".$args['template'];
    if (!empty($args['hook'])) $selector .= sprintf(", %s=%s",$args['hook'],sanitizer()->selectorValue($data[$args['hook']]));
    $page = pages()->get($selector);
    if ($page->id){
        b_debug::_dbg('PAGE ALREADY EXISTS selector="'.$selector.'"');
    }else{
        if ((empty(($parent1 = pages()->get("template=$args[template]s"))->id) &&
	     empty(($parent2 = pages()->get($args['parent']))->id))) {
	    tidy_dump($parent1);
	    tidy_dump($parent2);
	    die("??? parent\n");
	}
	$page = new Page();
	if (empty($args['name'])) $args['name'] = pageName($data['title'], true);
        $page->name     = $args['name'];
        $page->template = $args['template'];
        $page->parent   = ($parent = (empty($parent1) ? $parent2 : $parent1));;
        b_debug::_dbg("PAGE CREATED selector:$selector");
    }
    foreach($data as $k=>$v){
        if (empty($v)) {
            b_debug::_dbg("WARNING empty(data[$k]");
            continue;
        }
	setKeyValue($page, $k, $v, $saveToDB);
    }
    if ($saveToDB) $page->save();                         
    return $page;
}
