<?php namespace ProcessWire;
/*
 *
 */

/**
 * Create a page if not yet done (hook done by an argument)
 *
 * @param $data array
 * return page|nullPage
 */
function createPage(Array $data=[], Array $skipFields=[], Array $args=[]){
    printf ("createPage(%s, %s, %s)\n", join('|',$data), join('|',$skipFields), join('|',$args));
    return null;
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
  }else{
      foreach($TT as $key=>$value) $TTrev[$value] = $key;
      $reply = str_replace(array_values($TTrev),array_keys($TTrev),$text);
  }
  $reply = str_replace('&nbsp;', ' ', $reply);
  if(0) echo str_replace('&nbsp;', ' ', "DEBUG\n$text\n$reply\n");
  if(0) if (preg_match("/&[\w\#]*;/",$reply)){
          tidy_dump(diff(preg_split("/[\n\s]/",$text),
                         preg_split("/[\n\s]/",$reply)));
          echo      htmlDiff($text,$reply);
          abortIt();
      }
  return $reply; 
}

