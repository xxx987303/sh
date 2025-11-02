<?php namespace ProcessWire;

//require_once "/Users/yb/github/pw_profile_united.git/site-united/classes/functions.php";
//require_once "/Users/yb/github/pw_profile_united.git/site-united/classes/debug.php";
require_once __dir__ . '/debug.php';
require_once "/Users/yb/Sites/sh/index.php";

/**
 * Create a page if not yet done (hook done by an argument)
 *
 * @param $data array
 * return page|nullPage
 */
if (!function_exists('createPage')) {
    function createPage(Array $data=[], Array $skipFields=[], Array $args=[]){
        $selector = "template=".$args['template'];
        if( empty($data['title'])) $data['title'] = $args['title'];
        if(!empty($args['hook'])) $selector .= sprintf(", %s=%s",$args['hook'],sanitizer()->selectorValue($data[$args['hook']]));
        echo "selector: $selector\n";
        $page = pages()->get($selector);
        if($page->id){
            // OK
        }else{
            //static::_dbg("$data[title]",'m',false,1);
            if(empty($parent = pages()->get("template=$args[template]s")) || !$parent->id) die("??? parent\n");
            $page = new Page();
            $page->name = pageName(empty($args['name']) ? $data['title'] : $args['name'],true);
            $page->template = $args['template'];
            $page->parent   = $parent;
            foreach($data as $k=>$v){
                if(!in_array($k,$skipFields)) setKeyValue($page, $k, $v, false);
            }
            $page->save();
            echo "PAGE CREATED selector:$selector\n";
        }
        return $page;
    }
        }


$desc = function(Page $p) {return "OK ".trim(escape_uml(sprintf("   %s, %s, %s, %s",
								$p->h_aw_brand->each("{title}"),
								$p->title,
								$p->h_aw_year,
								$p->h_aw_person->each("{title}, "))),', ')."\n"; };

//print_r(pages()->get("title=La Torre")); exit;
//foreach(($pages=pages()->find("template=h_person")) as $p) echo "$p->template $p->title\n";
foreach(($pages=pages()->find("template=h_artwork,sort=h_aw_brand")) as $p){
  //  echo $p->h_aw_brand->each("{title}")." ".$p->title." ".$p->h_aw_person->each("{title}")." ================================================\n";
  echo "===============".$desc($p);
  //  foreach($p->fields() as $f) if($p->$f) echo "$f->name: ".$p->$f."\n";
  //  print_r($p);
  //  exit;
}
echo "\n";

//foreach(explode("\n",file_get_contents('list.txt')) as $line){
foreach(explode("\n",file_get_contents('R_list_for_import.txt')) as $line){
    if(empty(trim($line))) continue;
    if(str_starts_with($line, '#')) continue;
    //echo "$line\n";
    list($carreTitle,$ln,$fn,$y,$cmt) = explode(',', preg_replace('/, */', ',', $line.',,'));
    $y = trim($y,'/');
    printf("%-30s %-25s %-15s %-10s ",$carreTitle,"$fn $ln",$y,$cmt);
    $output = sprintf("\n=======================\n%-30s %-25s %-15s %-10s ",$carreTitle,"$fn $ln",$y,$cmt);
    
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
            echo $output . " AUTHOR PAGE TO BE CREATED $fnames[$k] $lnames[$k]\n";
            $p = createPage(['title' => trim("$fnames[$k] $lnames[$k]")],
                            ['h_av_firstname'=>$fnames[$k],
                             'h_av_lastname' =>$lnames[$k]],
                            ['template'=>'h_person',
                             'hook'    =>'title']);
            break;
        }
        $authors[] = $p;
    }
    
    /*
    if(strpos($fn.$ln,'&') === false){
        $p = pages()->get("template=h_person, h_av_lastname~=".str_replace('La ','',$ln));
        if($p->id)     { $authors[] = $p; echo ""; }// "!!!!!!!!!!!!!!!!!!!!!!!! $p->title\n";
        else           echo "???????????????????????? $fn $ln\n";
    }else{
        continue;
        list($a1,$a2) = explode('&',$fn.$ln);
        $p1 = pages()->get("template=h_person, h_av_lastname~=$a1");
        $p2 = pages()->get("template=h_person, h_av_lastname~=$a2");
        if($p1->id)    { $authors[] = $p1; echo ""; } // "!!!!!!!!!!!!!!!!!!!!!!!! $p1->title\n";
        else           echo "???????????????????????? $a1\n";
        if($p2->id)    { $authors[] = $p2; echo ""; } // "!!!!!!!!!!!!!!!!!!!!!!!! $p2->title\n";
        else           echo "???????????????????????? $a2\n";
    }
    */
    
  // Lookup the scarf
  $found = 0;
  if(count($pages=pages()->find("template=h_artwork, title~=$carreTitle"))){
      foreach($pages as $p) { $found++;      echo $desc($p); }
  }else{
      // Strip out the short words from the page title
      $items = []; foreach(explode(' ',$carreTitle) as $item) if(strlen($item) > 3) $items[] = $item;
      if(($p=pages()->get("template=h_artwork, title~=".join(' ',$items)))->id) { $found++;       echo $desc($p); }
  }


  if (empty($authors)) { 
      echo "... Author(s) TO BE CREATED \n";
  }

  if(!$found) {
      $p = createPage(['title' => $carreTitle],
                      [],
                      ['template'=>'h_artwork',
                       'hook'    =>'title']);
  }
  foreach($authors as $a) setKeyValue($p,'h_aw_person',$a,true);
  setKeyValue($p,'h_aw_brand',pages()->get(5835),true);
  setKeyValue($p,'h_aw_year',$y,true);
  if (!$found) break;
}
