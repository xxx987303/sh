<?php namespace ProcessWire;
/*
 *
 */

//require_once "/Users/yb/github/pw_profile_united.git/site-united/classes/functions.php";
//require_once "/Users/yb/github/pw_profile_united.git/site-united/classes/debug.php";
require_once __dir__ . "/Debug.php";
require_once __dir__ . "/../index.php";

/*
 * Get page summary
 */
$desc = function(Page $p) {return trim(escape_uml(sprintf("   %s, %s, %s, %s",
                                                          $p->h_aw_brand->each("{title}"),
                                                          $p->title,
                                                          $p->h_aw_year,
                                                          $p->h_aw_person->each("{title}, "))),
                                       ', ')."\n"; };

/*
 * Executor
 */
//print_r(pages()->get("title=La Torre")); exit;
//foreach(($pages=pages()->find("template=h_person")) as $p) echo "$p->template $p->title\n";
foreach(($pages=pages()->find("template=h_artwork,sort=h_aw_brand")) as $p){
    //  echo $p->h_aw_brand->each("{title}")." ".$p->title." ".$p->h_aw_person->each("{title}")." ================================================\n";
    if (SHOW_TITLES_ONLY) {
        if (str_starts_with($p->h_aw_brand->each("{title}"), 'Herm')) echo  $p->title."\n";
    }else{
        //echo "FOUND ===============".$desc($p);
    }
    //foreach($p->fields() as $f) if($p->$f) echo "$f->name: ".$p->$f."\n";
    //print_r($p);
    //exit;
}
echo "\n";

foreach(explode("\n",file_get_contents('/Users/yb/tmp/list.txt')) as $line){
    if(empty(trim($line))) continue;
    
    //echo "-------------$line\n";
    list($carreTitle,$ln,$fn,$y,$cmt) = explode(',', preg_replace('/, */', ',', $line),5);
    $y = trim(trim($y,'/'),',');
    $cmt = str_replace(',', '', $cmt);
    if (!SHOW_TITLES_ONLY) $output = sprintf("%-30s %-25s %-15s %-10s ",$carreTitle,"$fn $ln",$y,$cmt);
    $ln = preg_replace("/La /","",$ln);
    $fn = preg_replace("/La /","",$fn);
        
    // Lookup the author
    $auth = [];
    if(strpos($fn.$ln,'&') === false){
        continue;
        $p = pages()->get("template=h_person, h_av_lastname~=$ln, h_av_firstname~=$fn");
        if($p->id)     { $auth[] = $p; echo $output . " !!!!!!!!!!!!!!!!!!!!!!!! $p->title\n"; }
        //            else           echo "???????????????????????? $fn $ln\n";
    }else{
        list($a1,$a2) = explode('&',$fn.$ln);
    $p1 = pages()->get("template=h_person, h_av_lastname~=$a1, h_av_firstname~=$a1");
    $p2 = pages()->get("template=h_person, h_av_lastname~=$a2, h_av_firstname~=$a2");
    if($p1->id)    { $auth[] = $p1; echo ""; } // "!!!!!!!!!!!!!!!!!!!!!!!! $p1->title\n";
    else           echo "???????????????????????? $a1\n";
    if($p2->id)    { $auth[] = $p2; echo ""; } // "!!!!!!!!!!!!!!!!!!!!!!!! $p2->title\n";
    else           echo "???????????????????????? $a2\n";
}

// Lookup the scarf
$found = 0;
if(count($pages=pages()->find("template=h_artwork, title~=$carreTitle"))){
    foreach($pages as $p) { $found++;      echo $desc($p); }
}else{
    $items = []; foreach(explode(' ',$carreTitle) as $item) if(strlen($item) > 3) $items[] = $item;
    if(($p=pages()->get("template=h_artwork, title~=".join(' ',$items)))->id) { $found++;       echo $desc($p); }
}

if (!$found) {
    continue; //            die();
    echo "... TO BE CREATED \n";
    
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

/**
 * Create a page if not yet done (hook done by an argument)
 *
 * @param $data array
 * return page|nullPage
 */
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
  }
  return $page;
}

/**
 *
 */
function escape_uml($text,$direction='<-'){

  static $TT = ['&' => '&amp;',
		'À' => '&Agrave;',   'Á' => '&Aacute;',	  'Â' => '&Acirc;',	'Ã' => '&Atilde;',  '<' => '&lt;',
		'Ä' => '&Auml;',     'Å' => '&Aring;',	  'à' => '&agrave;',	'á' => '&aacute;',  '>' => '&gt;',
		'â' => '&acirc;',    'ã' => '&atilde;',	  'ä' => '&auml;',	'å' => '&aring;',   ' ' => '&nbsp;',
		'Æ' => '&AElig;',    'æ' => '&aelig;',	  'ß' => '&szlig;',	'Ç' => '&Ccedil;',  '"' => '&quot;',
		'ç' => '&ccedil;',   'È' => '&Egrave;',	  'É' => '&Eacute;',	'Ê' => '&Ecirc;',   '-' => '&#8209;', // '‑' => '&#8209;',
		'Ë' => '&Euml;',     'è' => '&egrave;',	  'é' => '&eacute;',	'ê' => '&ecirc;',   '[' => '&#91;',
		'ë' => '&euml;',     'ƒ' => '&#131;',	  'Ì' => '&Igrave;',	'Í' => '&Iacute;',  ']' => '&#93;',
		'Î' => '&Icirc;',    'Ï' => '&Iuml;',	  'ì' => '&igrave;',	'í' => '&iacute;',  "'" => '&#039;',
		'î' => '&icirc;',    'ï' => '&iuml;',	  'Ñ' => '&Ntilde;',	'ñ' => '&ntilde;',
		'Ò' => '&Ograve;',   'Ó' => '&Oacute;',	  'Ô' => '&Ocirc;',	'Õ' => '&Otilde;',
		'Ö' => '&Ouml;',     'ò' => '&ograve;',	  'ó' => '&oacute;',	'ô' => '&ocirc;',
		'õ' => '&otilde;',   'ö' => '&ouml;',	  'Ø' => '&Oslash;',	'ø' => '&oslash;',
		'Œ' => '&#140;',
		'œ' => '&#156;',
		'Š' => '&#138;',
		'š' => '&#154;',
		'Ù' => '&Ugrave;',
		'Ú' => '&Uacute;',
		'Û' => '&Ucirc;',
		'Ü' => '&Uuml;',
		'ù' => '&ugrave;',
		'ú' => '&uacute;',
		'û' => '&ucirc;',
		'ü' => '&uuml;',
		'µ' => '&#181;',
		'×' => '&#215;',
		'Ý' => '&Yacute;',
		'Ÿ' => '&#159;',
		'ý' => '&yacute;',
		'ÿ' => '&yuml;',
		'°' => '&#176;',
		'†' => '&#134;',
		'‡' => '&#135;',
		'±' => '&#177;',
		'«' => '&#171;',
		'»' => '&#187;',
		'¿' => '&#191;',
		'¡' => '&#161;',
		'·' => '&#183;',
		'•' => '&#149;',
		'™' => '&#153;',
		'©' => '&copy;',
		'®' => '&reg;',
		'§' => '&#167;',
		'¶' => '&#182;',
		];
  if ($direction == '<-'){
    $reply = str_replace(array_values($TT),array_keys($TT),$text);
    if(0)    if (preg_match("/&[\w\#]*;/",$reply)){
      tidy_dump(diff(preg_split("/[\n\s]/",$text),		     preg_split("/[\n\s]/",$reply)));
      echo      htmlDiff($text,$reply);
      abortIt();
    }
  }else{
  }
  return $reply;
}

