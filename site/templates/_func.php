<?php namespace ProcessWire;

/***************************************************************************************
 * SHARED ARTWORK FUNCTIONS
 *
 * The following functions find and render artworks are are defined here so that
 * they can be used by multiple template files.
 *
 */

require_once __dir__ . '/_func_missing.php';

if (!defined('CLI_MODE')) define('CLI_MODE',false);
global $lookingForBug;
$lookingForBug = false;

getSpotURLs();

/**
 * Translate text coming from variables in plural
 */
function _tn(String $text, $spot='h'){
    $text = escape_uml($text,'decode');
    if (pages()->get("template=h_brand, title={$text}")->id)  return $text;
    if (preg_match("/^[a-zA-Z ]*$/", $text)) return substr($text,-1) == 's' ? $text : "{$text}s";
    if (in_array($text,['МaxTwilly','Twilly','Bandana','140x140','90x90','70x70','45x45',]))    return $text;
    if ($text == 'Коллекционер') return 'Коллекционеры';
    if ($text == 'Владелец')     return 'Владельцы';
    if ($text == 'Художник')     return 'Художники';
    if ($text == 'Продавец')     return 'Продавцы';
    reportProblem(x("pre","_tn({$text})"));
    return "?$text";
}

/**
 * Translate text coming from variables
 */
function _t(String $text, $spot='h') {
    $text = str_replace('%20', ' ',  $text);
    if (in_array($text, ['Мистерия А.М.Кассандры','Maison Carré Foundation'])) return $text;
    if (str_starts_with($text,'Pierre Péron, dans son appartement')) return __('Pierre Péron, dans son appartement');
    if (preg_match("/Got as.*Voyage en/", $text))                    return __('Got as "Voyage en Étoffes"');
    if (preg_match("/Arrangement.*pieces|CASSANDRE pour/", $text))   return $text;
    if (preg_match("/Arrangement.*pieces/", $text))                  return __('Arrangement with match sticks and puzzle pieces');
    if ($text == 'Hermès Scarf Guides')    return $text;
    if ($text == 'About Designer')    return __('About Designer');
    if ($text == 'About Collector')   return __('About Collector');
    if ($text == 'About Owner')       return __('About Owner');
    if ($text == 'About Seller')      return __('About Seller');
    if ($text == 'About Artist')      return __('About Artist');
    if ($text == 'About h_brand')     return __('About Brand');
    if ($text == 'About h_artwork')   return __('About Scarf');
    if ($text == 'About h_seller')    return __('About Source');
    if ($text == 'About h_collection')return __('About Collection');
    if ($text == 'Louvre')           return __('Louvre');
    if ($text == 'Scarves Search')   return __('Scarves Search');
    if ($text == 'Paintings Search') return __('Paintings Search');
    if ($text == 'Dymkovo Search')   return __('Dymkovo Search');
    if ($text == 'Toys Search')      return __('Dymkovo Search');
    if ($text == 'Photo from Wiki')                return __($text);
    if ($text == 'Bienvenue à l’atelier')          return __($text);
    if ($text == 'Probably a copy of:')            return __($text);
    if ($text == 'Probably an origin for copy of:')return __('Probably an origin for copy of:');
    if ($text == 'Gemäldegalerie Old Masters')     return __('Gemäldegalerie Old Masters');
    if ($text == 'Unknown collection')             return __('Unknown collection');
    if ($text == 'Mystery of A.M.Cassandre')       return __('Mystery of A.M.Cassandre');
    if ($text == 'Lost auctions')                  return __('Lost auctions');
    if (strpos($text,'Leiden collection'))         return __('Non-Leiden collection');

    if (strpos($text,':')) {
	list($a,$b) = explode(':',$text);
	$a = trim($a);
	$b = trim(str_replace(' to ', ' '.__('to').' ', $b));

	if     ($a == 'Popularity') $a = __('Popularity');
	elseif ($a == 'Rarity')     $a = __('Rarity');
	elseif ($a == 'Seller')     $a = __('Seller');
	elseif ($a == 'Price')      $a = __('Price');
	elseif ($a == 'Year')       $a = __('Year');
	elseif ($a == 'Role')       $a = __('Role');
	elseif ($a == 'Collection type')  $a = __('Collection type');
	elseif ($a == 'keywords')         $a = __('keywords');

	if (is_numeric($b) || (pages()->get("title=$b"))->id) $x = 0;
	elseif ($b == 'Common')           $b = __("1 of 4");
	elseif ($b == 'Medium beloved')   $b = __("2 of 4");
	elseif ($b == 'Beloved')          $b = __("3 of 4");
	elseif ($b == 'Very beloved')     $b = __("4 of 4");
	elseif ($b == 'Not uncommon')     $b = __("1 of 4");
	elseif ($b == 'Quite rare')       $b = __("2 of 4");
	elseif ($b == 'Rare')             $b = __("3 of 4");
	elseif ($b == 'Very rare')        $b = __("4 of 4");
	elseif ($b == 'Remix')            $b = __("Remix");
	elseif ($b == 'Limited Edition')  $b = __('Limited Edition');
	elseif ($b == 'Special Edition')  $b = __('Special Edition');
	elseif ($b == 'Maximum')          $b = __('Maximum');
	elseif ($b == 'Minimum')          $b = __('Minimum');
	elseif ($b == 'Artist')           $b = __('Artist');
	elseif ($b == 'Designer')         $b = __('Designer');
	elseif ($b == 'Museums')          $b = __('Museums');
	elseif ($b == 'bandana')          $b = __('bandana');
	elseif(@$GLOBALS['SU']) reportProblem(x("pre","_t('$a':'$b')"));
	return "$a: $b";
    }
    reportProblem(x("pre","_t($text,$spot)"));
    return $text;  // .' '.__("not yet ready");
}

/**
 */
function reportProblem($text) {
    if(@$GLOBALS['SU']) echo $text;
}


/**
 * Include "next" / "previous" page buttons
 */
function setNextPrev(String $selector, Page &$page) {
    $selector = restrictedSelector($selector);
    if (empty($np_keys=@$_GET['np_keys'])) {
	$selector = str_replace('sort=title','sort=name',$selector);
	// See who requests this page
	if (($r=(string)@$_SERVER['HTTP_REFERER']) && preg_match("/(([adh])_aw_options=[a-zA-Z0-9]*)/", $r, $m)) {
	    $selector = "$m[1], sort=$m[2]_aw_person";
	} elseif (preg_match(";.*((([adh]_)(seller|person|artwork|brand|collection|school))s/([^/]*)/?).*;", $r, $m)){
	    $f = str_replace("$m[4]", "aw_{$m[4]}", $m[2]);
	    if (fields()->get($f)) $selector .= ", $f={$m[5]}";
	}
	$idWas = $page->id;
	$k = 0;
	$np_pages = [];
	foreach(pages()->find($selector) as $p) {
            $np_pages[$k++] = $p->id;
            if ($p->id == $page->id) { $key = $k-1; } // echo x("pre","set id=$p->id key=$key title=$p->title"); }
	}
	$np_keys = join('|', $np_pages);
    } else {
	$np_pages = explode('|',$np_keys);
    }
    //tidy_dump($np_pages);
    
    // Get the list of pages and save their IDs in input keys
    if (isset($_GET['key'])) {
	$key = $_GET['key'];
	if ($page->id != ($x=pages()->get($np_pages[$key]))->id) $page = $x;
    }
    //echo x('pre',"$selector $idWas --> $page->id $page->title");    
    if (!isset($key)) $key = 0;
    $prev = ($key-1 < 0) ? count($np_pages) - 1 : $key - 1; // Loop to end if at start
    $next = ($key+1 >= count($np_pages)) ? 0 : $key + 1;    // Loop to start if at end

    region('headline',
	   $page->title);
    region('next_prev',
           (count ($np_pages) > 1
	       ? x("a class='sh-prev' href='?key=$prev&np_keys=$np_keys'", "&#10094;").
	         x("a class='sh-next' href='?key=$next&np_keys=$np_keys'", "&#10095;")
	       : ""));
}

/**
 * Replacer for input()->get()
 */
function getInputKey(String $key) {
    global  $SITE_input;
    static  $inputData;
    if (empty($inputData) && !empty($SITE_input)) {
        foreach (explode('&',$SITE_input) as $item) {
            if (strpos($item,'=')) $inputData[explode('=',$item)[0]] = (string)explode('=',$item)[1];
        }
    }
    if ($key == '*') tidy_dump($inputData);
    return (string)@$inputData[$key];
};

/**
 * Check that the field is viewable
 */
function fieldViewable($field, String $tag='', $page=null) {
    global $SPOT_id;

    $reply = true;
    if (empty($field)) return false;
    foreach (['restricted','prices'] as $t) {
	if (!$field->HasTag($t)) continue;
	if (!($permission = permissions($p="see-{$SPOT_id}-{$t}"))->id) continue;
//echo $permission->name."\n";
	if (!User()->hasPermission($p))  $reply = false;
    }
    
    if (!empty($tag) && !$field->HasTag($tag)) $reply = false;
    
    if (is_object($page)) {
	if(empty($page->$field)) $reply = false;
	elseif ( $page->$field instanceof SelectableOptionArray && !count($page->$field)) $reply = false;
    }
    //printf("%20s %s %s\n",$field->name ,var_export($reply,true),'');
    return $reply;
}

function fieldViewableO($field, String $tag="", $page=null) {
    global $dejaVuDebug, $SPOT_id;
    if ($reply = (empty($field)
	        ? false
		: (empty($tag) ? true : $field->hasTag($tag)) &&
		  (($field->hasTag('restricted') ? User()->hasPermission("see-{$SPOT_id}-restricted") : true) ||
		   ($field->hasTag('prices')     ? User()->hasPermission("see-{$SPOT_id}-prices")     : true) ))) {
	if (is_object($page)) {
	    $reply = !(empty($page->$field) ||
		       ($page->$field instanceof SelectableOptionArray && !count($page->$field)));
	}
    }
//  if($reply) if (!@$dejaVuDebug[$field->name.$tag.$reply]++)
//    echo x("pre", "fieldViewable($field->name,$tag,".($page?$page->name:"")."): $p ".var_export($reply, true));
    return $reply;
}

/**
 * Exclude from the search restricted H-pages.
 * The restricted fields have tag 'restricted'
 * At the time being the access is restricted to pages with
 * template "h_collection" and non-Hermes manufactures.
 * The full access requires the 'see-restricted' permission.
 */
function restrictedSelector($selector, $forURL=false) {
    global $SPOT_id;
    if (User()->hasPermission("see-{$SPOT_id}-restricted") ||
	!preg_match("/\b{$SPOT_id}_/",$selector)) return $selector;
    switch($SPOT_id){
	case 'h':
	    $colls = []; foreach(pages()->find("template=h_collection") as $c) $colls[] = $c->id;
	    $h = pages()->get("title=Hermès")->id;
	    return getValidSelector("$selector,h_aw_brand=$h,h_aw_collection!=".join('|',$colls));
	case 'a':
	default:
    }
    return $selector;
}

/**
 * Locate random Featured Artworks
 */
function getRandomFeatured($nCols=3, $spot=null) {
    global $SPOT_id;
    if ($spot === null) $spot = $SPOT_id;
    $dejaVu = $items = [];
    foreach (pages()->find("{$spot}_aw_featured=1") as $p) $items[] = $p;
    $count = 0;
    $featured = new PageArray();
    while ($count < min($nCols,count($items))) {
	$p = $items[rand(0,count($items)-1)];
	if (!@$dejaVu[$p->id]++) {
	    $featured->add($p);
	    $count++;
	}
    }
    return $featured;
}

/**
 * Show object variations, if any.
 *  Today there are 2 types of object variaions:
 * h_spot: Scarves with the same title, but of different colors
 * a_spot: Copies of a panting
 *
 * Varitions have pages starting with the same characters strings,
 * so they are easily matched.
 */
function getVariations(Page $page) {
    global $SPOT_id;
    foreach (['h_artwork' => 'variations',
	      'a_artwork' => 'donor-of'] as $tp=>$hook) {
	if ($page->template != $tp) continue;
	$case1 = count($variations=pages()->find("name*={$page->name}-{$hook}"));
	$case2 = preg_match("/(.*)-{$hook}/", $page->name, $match);
	$case3 = $tp=='a_artwork' && ($id=pages()->get("name=".preg_replace("/-{$hook}.*/", "", $page->name))->id) && $id != $page->id;
	//echo"'$case1' '$case2' '$case3'<br>";
	if (!$case1 && !$case2 && !$case3) return;
	
	if (empty($variations))    $variations = new PageArray();
	if ($case2) {
	    $variations->add(pages()->get($match[1]));
	    foreach(pages()->find("name*={$match[1]}-{$hook}") as $p) $variations->add($p);	    
	}
	$variations->add($page);
	$variations->sort('-name');
	
	$links = "<ul class='variations'>";
	foreach ($variations as $k=>$var) {
	    if (!is_object($var)) $var = pages()->get($var);
	    if (!is_object($var)) { echo x("pre style=color:red","??? ".var_export($var,true)); continue;}
	    $url = ($image = @$var->images->first) ? $image->url : "";
	    $src = (empty($url) ? urls()->templates.'styles/images/photo_placeholder.png': $url)."' alt=''"; 
	    $description = ($var->template=='a_artwork' ? (strpos($var->name,$hook) ? __('Original') : __('Copy in collection')) : "");
	    $class = (false
		? "border-secondary transition-colors pb-2 m-1 bg-base-200 flex items-center overflow-y-hidden ".
                  "aspect-1 basis-28 grow-0 shrink-0 border-b-4 hover:border-secondary"
		: "object-image uk-margin-small");
	    $links .= x("li",
			x("div class='flex overflow-x-auto items-center md:flex-wrap scrollbar-hide snap-x snap-mandatory'",
			  x("a href='{$var->url}' class='$class'",
			    x("img class='w-full' src='$src' alt=''").
			    ($description
				? x("div class='caption uk-text-small uk-text-muted'",x("span style=font-size:small",$description))
			        : ""))));
        }
 	echo x("div class='pt-2 pb-4 px-4'",
	       ($hook == 'donor-of' ? x('div',x('strong',_t('Probably a' . ($case3 ? 'n origin for' : '') . ' copy of:','a'))) : "") .
	       $links . "</ul>").
             x("hr class='mx-4'");
    }
}

/**
 */
function currencyToSEK($value, $currency='SEK') {
    $rates = ['SEK'=> 1,
	      'USD'=> 8.9199,
	      'EUR'=>10.5181,
	      'CHF'=>11.4687,
	      'GBP'=>12.1972];
    $reply =($currency && in_array(($c=strToUpper($currency)), array_keys($rates))
	? $value * $rates[$c]
	: $value);
    if ($reply != $value) say::hl("currencyToSEK($value,$currency): $reply SEK",'y');
    return $reply;
    
}

/**
 * Prepare value for rendering
 */
function getKeyValue(Object $page, Field $field, int $truncate=0, $returnValue=false) {
    global $SPOT_id, $SPOT_search, $spot_home, $lookingForBug;
    
    // href
    $href = function(Object $p, Field $f, $v) {
	global $SPOT_id, $SPOT_search,$spot_home;
	return ($f->name == 'a_p_artwork'
	    ? "{$spot_home->url}a_artworks/{$p->name}/"
	  //? "{$spot_home->url}a_possessions/{$p->a_aw_possession->first->name}/"
	    : "{$SPOT_search}{$f->name}={$v}&sort={$f->name}");
    };
    
    // Trancater
    $t = function(String $text, int $truncate) {
        return ($truncate>0 ? sanitizer()->truncate($text,['maxLength'=>$truncate, 'more'=>'…']) : $text);
    };

    $reply = [];
    if (empty($value = (string)$page->$field)) return false;
    if (($o=$page->$field) instanceof PageArray) {
	foreach($o as $p) $reply[] = x("a href='".$href($p,$field,$value)."'", $t($p->title,$truncate));
	//return (count($o) ? $o->each(x("a href='$SPOT_search{$field->name}={id}'", "{title}")." <br>") : false);	      
    } elseif (strpos($field->name, '_url') || $field->type == 'FieldtypeURL') {
	$reply[] = strpos($value,'href=') === false
	    ? x("a target='_blank' href='$value'", __("Click to see (opens in another window)"))
	    : $value.__('Click to see').'</a>';
    } elseif ($field->type == 'FieldtypeDatetime') {
        $reply[] = date("Y-m-d",(int)$value);
    } elseif (strpos($field->name,'options')) {
        $reply[] = x("strong",$page->$field->title);
    } elseif (preg_match("/price|payed/",$field->name)) {
	$currency = empty($c=$page->currency->title) ? 'SEK' : $c;
	$reply[] = number_format($value,0,","," ")." $currency";
    } elseif (in_array($field->type, ['FieldtypePageTitle', 'FieldtypePageTitleLanguage'])) {   
	$reply[] = x("a href=''", $value);
    } elseif (in_array($field->type, ['FieldtypeInteger', 'FieldtypeEmail',   'FieldtypeText',    'FieldtypeTextLanguage',
    				      'FieldtypeTextarea','FieldtypeTextareaLanguage',])) {
	$reply[] = $t($value,$truncate);
	//$reply[] = x("a href='".$href($page,$field,$value)."'", $t($value,$truncate));
    } elseif ($e = getEmoji($field->name, $value)) {
	$reply[] = $e;
    } elseif ($field->type == 'FieldtypeOptions') {
	foreach($page->get($field->name) as $p){
	    if ($returnValue) return $p->title;
	    $reply[] = x("a href='".$href($p,$field,$value)."'", $t($p->title,$truncate));
	}
	//$reply = substr($page->get($field->name)->each(", <a href='{$SPOT_search}{$field->name}={value}'>{title}</a>"),2);
    } elseif ($field->type == 'FieldtypePage') {
	$reply[] = pages()->get($value)->title;
    } else {
	echo "<spone style=color:red>getKeyValue($page->name) Not yet ready, $field->name, $field->type)</spone><br>\n";
        $reply[] = $value;
    }

    // Search URL
    $replyMerged = "";
    foreach($reply as $r) {
	if (is_string($r) && !preg_match("/href=/",$r) && !$returnValue) {
	    $replyMerged .= x("a href='".$href($page,$field,$value)."'",$t($r,$truncate));
	} else {
	    $replyMerged .= $r;
	}
	if ($returnValue) break;
    }
    if ($lookingForBug) echo x("pre","getKeyValue($page->id,$field->name,$field->type) = ".escape_uml($replyMerged,'encode'));
    return empty($replyMerged) ? false : $replyMerged;
}

/**
 */
function getValidSelector($selectorArg) {
    $reply = [];
    foreach (explode(',', trim(str_replace('=!','!=',$selectorArg),', ')) as $item) {
	if (isEmpty(trim($item))) continue;
	list($k,$v) = preg_split("/ *= */", trim($item),2);
	if (isEmpty($v)) continue;
	$reply[] = "$k=$v";
    }
    $selector = implode(',', array_unique($reply));
    //if ($selectorArg != $selector) echo "'$selectorArg' ==> <br>'$selector'<br>";
    return $selector;
}

/**
 *
 */
function getValidSorts($context='artwork') {

    return [];
    
    foreach (array('brand'          => 'A-Z|Z-A',
		   'year'           => 'Oldest|Newest',
		   'rarity'         => 'A-Z|Z-A',
		   'popularity'     => 'A-Z|Z-A',
		   'person'         => 'A-Z|Z-A',
		   'name'           => 'A-Z|Z-A',
		   'parent.name'    => 'A-Z|Z-A',
		   'images.count'   => 'Least|Most',
    ) as $item => $sort){
	$label = '';
	if    ($item == 'parent.name')  $label = (empty($context)?"":templates()->get(templates()->get($context)->parentTemplates[0])->getLabel());
	elseif($item == 'name')         $label = (empty($context)?"":templates()->get($context)->getLabel());
	elseif($item == 'images.count') $label = fields()->get('images')->getLabel();
	elseif(!empty($context))  foreach(templates()->get($context)->fields as $f) { if (strpos($f,$item)!==false) $label = fields()->get($f)->getLabel(); }
	if (empty($label)) continue;
	$directions = explode('|',$sort);
	foreach (array('','-') as $k=>$d) $reply [$d.$item] = sprintf("%s (%s)",$label, $directions[$k]);
    }
    return (empty($reply) ? array() : $reply);
}

/**
 * Bracket
 */
function x($tag, $text=''){
  if     ($text === Null) return 'Null';
  elseif (empty($tag))    return $text;
  elseif (CLI_MODE)       return strip_tags($text);

  // 'x' is an "empty" tag
  $tag_clean = preg_replace('/ .*/','',$tag);
  if ($tag_clean === 'x') return $text;

  // Usual bracket
  if(in_array($tag_clean,array('input','img','hr'))) return "<$tag $text />\n";

  // Usual bracket
  switch($tag_clean){
  case '"':  if (!isset($reply))  $reply = '"'.str_replace('"',"'",$text).'"'; return $reply;
  case "'":  if (!isset($reply))  $reply = "'".str_replace("'",'"',$text)."'"; return $reply;
  case "[":  if (!isset($reply))  $reply = '['.$text.']';
  case "(":  if (!isset($reply))  $reply = '('.$text.')';
  case "<":  if (!isset($reply))  $reply = '<'.$text.'>';
    return $reply;
  }

  // HTML tag as a "bracket"
  list($delim,$postfix) = (preg_match('/^(form|select|style)/i',$tag)
			   ? array("\n","")
			   : array("","\n"));
  if (preg_match('/^(div|ul|form|select|style)/i',$tag)) $delim="\n"; else $delim="";
  return join($delim, array("", "<$tag>", $text, "</$tag_clean>")).$postfix;
}

/**
 * Find Object pages using criteria from the given selector string.
 *
 * Serves as a front-end to $pages->find(), filling in some of the redundant
 * functionality used by multiple template files.
 *
 * @param string $selector
 * @return PageArray
 *
 */
function findObjects(String $selectorArg, String $template_name='artwork', Int $limit=20) {
    $selector = trim($selectorArg, ", ");
    if (false) {
	$validSorts = getValidSorts($template_name);
	
	// check if there is a valid 'sort' var in the GET variable
	// if no valid sort, then use 'title' as a default
	if (!($sort = sanitizer('name', input()->get('sort'))) || !isset($validSorts[$sort])) $sort = 'name';
	
	// whitelist the sort value so that it is retained in pagination
	if($sort != 'name') input()->whitelist('sort', $sort);
	
	// expand on the provided selector to limit it to $limit sorted object
	$selector = (empty($template_name)?"":"template=$template_name, ")."limit=$limit, " . $selector;
	
	// check if there are any keyword searches in the selector by looking for the presence of ~= operator.
	// if present, then omit the 'sort' param, since ProcessWire sorts by
	// relevance when no sort specified.
	if(strpos($selector, "~=") === false) $selector .= ", sort=$sort";
	
	// now call upon ProcessWire to find the objects for u
	echo x("pre",$selector);
    }
    return pages($selector);
}

function getTitleForAbout(Page $page) {
    $of = $page->of(false);
    $lang = User()->language;
    //User()->language = Languages()->get("default");
    switch ($page->template->name) {
	case 'a_person': $d = getKeyValue($page, fields()->get('a_av_duty'), 0, true); break;
	case 'h_person': $d = getKeyValue($page, fields()->get('h_av_duty'), 0, true); break;
	default: $d = $page->template->name;
    }
    $reply = x("h3",_t("About $d") . " \"{$page->title}\"");
    $page->of($of);
    User()->language = $lang;
    return $reply;
}

/**
 *
 */
function renderBodyInTwoColumns(Page $page) {
    return (preg_match("/\<div.*auto-width-content/", $page->body)
	  ? $page->body
	  : (empty($b=$page->body) ? "" : x("div class='auto-width-single'",
					    getTitleForAbout($page)) .
				            x("div class='auto-width-content'", $b)));
}


/**
 * Render the <thead> portion of a Object list table
 *
 * @return string
 */
function renderObjectListSort($template_name='artwork') {

    // query string that will be used to retain other GET variables in searche
    input()->whitelist->remove('sort');
    $queryString = input()->whitelist->queryString();
    if($queryString) $queryString = sanitizer('entities', "&$queryString");
    
    // get the 'sort' property, if it's present
    $sort = input()->get('sort');
    $validSorts = getValidSorts($template_name);
    
    // validate the 'sort' pulled from input
    if(!$sort || !isset($validSorts[$sort])) $sort = 'name';
    
    $options = array();
    $selectedLabel = '';
    
    // generate option
    foreach($validSorts as $key => $label) {
	if($key === $sort) $selectedLabel = $label;
	$options["./?sort=$key$queryString"] = $label;
    }
    
    // render output
    $out = files()->render('./includes/ul-list-sort.php',
			   ['options' => $options,
			    'selectedLabel' => $selectedLabel]);
    return $out;
}

/**
 * Render a list of page
 *
 * @param  PageArray $pages Objects to render
 * @param  string $cols Number of columns OR (if not numeric) context
 * @param  bool   $showPagination Whether pagination links should be shown
 * @param  string $headline
 * @return string The rendered markup
 *
 */
function renderImageList(PageArray $pages, $cols=1, $showPagination=true, $headline='') {
    return renderObjectList($pages,$cols,$showPagination,$headline,'_image');
}
function renderObjectList(PageArray $pages, $cols=1, $showPagination=true, $headline='', $key='') {
    global $config, $SPOT_id;
    
    if (!count($pages)) return;
    $pagination = $sortSelect = '';
    
    // includes name
    if (!is_numeric($cols)){
	$context = $cols;
	$showPagination = false;
	$cols = 1;
    }else{
	$context = 'ul';
    }
    
    if(0)  if($showPagination && $pages) {
	$headline = $pages->getPaginationString('Objects'); // i.e. Objects 1-10 of 500
	$pagination = renderPagination($pages); // pagination link
	$sortSelect = renderObjectListSort($pages->first->template->name);
    }
    
    $itemsByType = $items = [];
    $needle = sprintf("/_(%s)$/",join('|',$config->groupListItemBy));
    foreach($pages as $object) {
	if (empty($object->fields)) continue;
	$renderedObject = renderObjectListItem($object, $context, $key, $object->featuredPage);
	$type=''; foreach($object->fields as $f) if(preg_match($needle,$f) && ($o=$object->$f)) $type = $o->title;
	if ($type) foreach(explode(',',$type) as $t) $itemsByType[trim($t)][] = $renderedObject;
	else  $items[] = $renderedObject;
    }
    if (empty($items) && count($itemsByType)==1){
	foreach($itemsByType as $k=>$v) $items = $v;
	$itemsByType = [];
    }
    
    $selector = (string) $pages->getSelectors();

    // Cancel the "default" sorting, better to have on input $items already sorted
    // or just sort by the authors
    $selector = preg_replace('/sort=[\w]*,?/', '', $selector);
    if (strpos($selector,'_aw_')!==false) $selector .= ", sort={$SPOT_id}_aw_person";
    return files()->render("./includes/{$context}-list.php",
			   ['context' => $context,
			    'cols'    => $cols,
			    'pages'   => $pages,
			    'headline'=> $headline,
			    'items'   => $items,
			    'itemsByType' => $itemsByType,
			    'pagination'  => $pagination,
			    'sortSelect'  => $sortSelect,
			    'selector'    => $selector]);
}

/**
 * Render a single object for presentation in a object list
 *
 * @param Page $object The Object to render
 * @return string
 *
 */
function renderObjectListItem(Page $page, $context='ul', $key='', $imgXXL=null){
    global $SPOT_id, $config;

    $images = ($page->template=='a_possession'
	     ? ($artwork=$page->a_p_artwork->first)->get('images')
	     : $page->get('images'));
    // Make a thumbnail
    if ($imgXXL === null) {
	if(!empty($images) && ($image = $images->first())) {
	    $img   = $image->height($config->mh)->url;
	} else {
	    $img = config()->urls->templates . "styles/images/photo_placeholder.png";
	}
    } else {
	$img   = $imgXXL->height(500)->url;
    }
    $description = (($d=$page->figcaption) ? sanitizer()->truncate($d,['maxLength'=>20, 'more'=>'…']) : "");
    
    // here's a fun trick, set what gets displayed when value isn't available.
    // the property "unknown" is just something we made up and are setting to the page.
    $page->set('unknown', '??');
    
    // Object caption (tag 'caption') for the up-right corner
    foreach ($page->fields as $f) {
	if(fieldViewable($f, 'caption', $page))	{ $caption = getKeyValue($page, $f); break; }
    }
    if (empty($caption) && !empty($p=$page->parent)) $caption = $p->get("title");
    return files()->render("./includes/{$context}-list-item$key.php", // say, ul-list-item.php
			   array('page' => $page,
				 'XXL'  => ($imgXXL !== null),
				 'img'  => $img,
				 'description' => $description,
				 'caption' => sanitizer()->truncate((empty($caption) ? "" : $caption),['maxLength'=>20, 'more'=>'…']),
				 'summary' => summarizeText(strip_tags(empty($b=$page->get('body'))?"":$b), 100)
    ));
}

/**
 * ProcessWire pagination nav for UIkit
 *
 * @param PageArray $item
 * @return string
 *
 */
function renderPagination(PageArray $items) {

    if(!$items->getLimit() || $items->getTotal() <= $items->getLimit()) return '';
    $page = page();
    if(!$page->template->allowPageNum) {
        return "Pagination is not enabled for this template";
    }
    
    // customize the MarkupPagerNav to output in Foundation-style pagination link
    $options = array(
        'numPageLinks' => 5,
        'nextItemLabel' => '<i class="uk-icon-angle-double-right"></i>',
        'nextItemClass' => '',
        'previousItemLabel' => '<span><i class="uk-icon-angle-double-left"></i></span>',
        'previousItemClass' => '',
        'lastItemClass' => '',
        'currentItemClass' => 'uk-active',
        'separatorItemLabel' => '<span>&hellip;</span>',
        'separatorItemClass' => 'uk-disabled',
        'listMarkup' => "<ul class='uk-pagination uk-text-left'>{out}</ul>",
        'itemMarkup' => "<li class='{class}'>{out}</li>",
        'linkMarkup' => "<a href='{url}'>{out}</a>",
        'currentLinkMarkup' => "<span>{out}</span>"
    );
    
    $pager = modules('MarkupPagerNav');
    $pager->setBaseUrl($page->url);
    
    return $pager->render($items, $options);
}

/**
 * Make the selector better for display readability
 *
 * Since we're displaying the selector to screen for demonstration purposes, this method optimizes the
 * selector is the most readable fashion and removes any parts that aren't necessary
 *
 * This is not something you would bother with on a site that wasn't demonstrating a CMS. :)
 *
 * @param string $selector
 * @return string
 *
 */
function makePrettySelector($selector) {
    if(preg_match('/(person|parent)=(\d+)/', $selector, $matches)) {
	if($page = pages()->get($matches[2]))
	    $selector = str_replace($matches[0], "$matches[1]={$page->path}", $selector);
	if($matches[1] == 'parent') $selector = str_replace("template=artwork, ", "", $selector); // template not necessary here
    }
    $selector = sanitizer('entities', $selector);
    $span = "<span class='uk-text-nowrap'>";
    $selector = $span . str_replace(", ", ",</span> $span ", $selector) . "</span>";
    return $selector;
}

/**
 * Generate a summary from the given block of text or HTML and truncate to last sentence
 *
 * @param string $text
 * @param int $maxLength
 * @return string
 *
 */
function summarizeText($text, $maxLength = 500) {
    if (!empty($summary=trim($text))){
	// Get the first <p>....</p> as summary if posible
	if (stripos($summary,"<p>") !== false && stripos($summary,"</p>") !== false){
            $t = explode("</p>",str_replace("</P>","</p>",$summary));
            $summary = trim(str_ireplace("<p>","",$t[0]))."…";
	} else {
	    $summary = sanitizer()->truncate(strip_tags($summary), ['maxLength'=>$maxLength, 'more'=>'…']); 
	}
    }
    return $summary;
}

/**
 * http://localhost/sh/ru-home/h_spot/h_search/?h_aw_rarity=1
 */
function getSpotURLs(){
    global $SPOT_id, $SPOT_url, $SPOT_root, $SPOT_search, $SITE_input, $spot_home, $site_home;
    if (!isset($spot_home)) {
	if (empty(@$_SERVER['REQUEST_URI'])) $_SERVER['REQUEST_URI'] = '';
	preg_match('/(\?.*)/', $_SERVER['REQUEST_URI'], $url_match);
	$SITE_input  = (empty($i=@$url_match[0]) ? '' : str_replace('?','',$i));

	preg_match(";(/[a-z][a-z]-home\b)?(/([a-z]*)_?spot/);", $_SERVER['REQUEST_URI'], $url_match);
	list($SPOT_url,$SPOT_id) = (empty($url_match[0])
	                          ? ['','']
				  : [substr($url_match[0],1), $url_match[3]]);
	if (empty($SPOT_id)) $SPOT_id = getInputKey('SPOT_id');
	if (empty($SPOT_id)) $SPOT_id = getInputKey('tags');
	if (empty($SPOT_id) && preg_match("/([adh])_spot/", (string)@$_SERVER['HTTP_REFERER'], $m)) $SPOT_id = $m[1];

	$site_home   = pages("/");
	$spot_home   = pages("/$SPOT_url");
	
	$SPOT_root   = config('urls')->root . $SPOT_url;
	$SPOT_search = $SPOT_root . $SPOT_id . "_search/?";
	$SPOT_search = $site_home->url . "search/?SPOT_id=$SPOT_id&";
	//echo x('pre',"SPOT_id=$SPOT_id, SPOT_root=$SPOT_root, SPOT_url=$SPOT_url,\nsite_home=$site_home->url, spot_home={$spot_home->url}, SPOT_search=$SPOT_search, SITE_input='$SITE_input'");
    }
}
	
/**
 * Get the variable type
 * Returns string, like "int", "string", "object|Template", etc
 */
function getType($o, $id=null) {
    ob_start(); var_dump($o); $out = ob_get_clean();
    $result =str_replace(['(',')'], ['|',''],
                         preg_replace(["/ProcessWire./",
                                       "/(#| ).*/",
                                       "/\([0-9]*\)/"],
                                      '',
                                      ($header=explode("\n",ob_get_clean())[0])));
    if (!empty($id)) $result = "getType($id) =  $result";
    return $result;
}

/**
 */
function joinX(Array $a, $skipEmpty=true){
    $r = "";
    foreach($a as $k=>$v) {
	$v = trim($v);
	if (true && empty($v) && $v !== 0 && $v !== '0') continue;
	if (empty($v)||$k=='comment') continue;
	$r .= "$k=>$v ";
    }
    return x('[',trim($r));
}

/**
 *  To be done better...
 */
function getEmoji($fieldName, String $level, bool $returnImage=false) {
    global $SPOT_search, $config;
    list($emojiDir, $fn) = [__dir__.'/../assets/files/0000/', "$level.png"];
    if (in_array($fieldName, $config->emojiFields) && file_exists($ph=realpath(str_replace(' ','',$emojiDir.$fn)))) {
	$anker = x("a href='$SPOT_search$fieldName=$level'",
		   ($image = "<img src=\"".preg_replace(";.*".$config->treeRoot.";",$config->treeRoot,$ph)."\"/>"));
	$reply = $returnImage ? $image : $anker;
    } else {
	$reply = false;
    }
    //if($reply)echo "getEmoji($fieldName,$fn,$returnImage): ".escape_uml(var_export($reply,true),'encode')."<br>";
    return $reply;
}

/**
 */
function navUserIcon() {
    $url = pages()->get('/sh/')->url;
    $icon = x("div",str_repeat("&nbsp;",3) . x("img src=/sh/site/assets/files/0000/user40.jpg style=height:24px;") . x("span",user()->name));
    //    return (user()->isLoggedin() ? x("li",$icon) : "");
    
    return (user()->isLoggedin()
	? //x("li", x("a href=".(pages()->get('template=profile')->url), "My Profile")).
	    x("li", x("form method='post' action='/sh/' style='display:contents'",
		      session()->CSRF->renderInput('logout') .
		      x("button type='submit' name='logout' value='1' style='display:contents'", $icon)))
	: "");
/*    
    <li>
        <form method="post" action="<?= pages()->get('/')->url ?>" style="display:inline">
            <?= $session->CSRF->renderInput('logout') ?>
            <button type="submit" name="logout" value="1">
                Logout
            </button>
        </form>
    </li>
*/

    return x("li",
	     x("a id='tools-toggle' class='pw-dropdown-toggle' href='#'", $icon) .
	     x("ul class='pw-dropdown-menu' data-my='left top' data-at='left bottom' style='display:none;'",
	       x("li",x("a target='_top' href='/sh/processwire/login/logout/'",
			x("i class='fa fa-power-off pw-nav-icon fa-fw'").x("span","Logout"))).
	       x("li",x("a href='/sh/processwire/profile/'",		 
			x("i class='fa fa-user pw-nav-icon fa-fw'").x("span","Profile")))));
/*
    x("a id='tools-toggle' class='pw-dropdown-toggle' href='/sh/processwire/profile/'",
	x("i class='fa fa-user-circle fa-lg pw-nav-icon fa-fw'").user()->name).
      x("ul class='pw-dropdown-menu' data-my='left top' data-at='left bottom' style='display:none;'",
	x("li",x("a target='_top' href='/sh/'",      x("i class='fa fa-eye pw-nav-icon fa-fw'"). x("span","View site"))).
	x("li",x("a href='/sh/processwire/profile/'",x("i class='fa fa-user pw-nav-icon fa-fw'").x("span","Profile"))).
	x("li",x("a target='_top' href='/sh/processwire/login/logout/'",x("i class='fa fa-power-off pw-nav-icon fa-fw'").
								x("span","Logout")))))));
*/
}

/**
 */
function navSearchLogin(Page $page, $showEdit=true) {
    global $config, $spot_home, $site_home, $SPOT_id, $dejaVu;
    if (@$dejaVu++) return "";

//    echo "showEdit = ".var_export($showEdit,true)."<br>";
    $action = $GLOBALS['SPOT_search'];
    $reply =  "\n<!-- Search and login -->\n".
	      "<ul class='uk-navbar-nav' style='align-items:center;display:inline-flex;float:right;list-style-type:none;'>\n";
    
    //if ($spot_home != $site_home) {

    // Edit & Login
    if ($showEdit) $reply .= (!user()->isLoggedin()
	? x("li",x("a href='{$config->urls->admin}login/'",x("i class='uk-icon-user'"))) //  .' '.__('Login')))
	: (page()->editable() ? x("li",x("a href='$page->editUrl'",x("i class='uk-icon-edit'").' '.__('Edit',$SPOT_id))) : "").
	  x("li",x("a href='{$config->urls->admin}login/logout/'"),  x("i class='uk-icon-user'").' '.__('Logout',$SPOT_id)));
    // Search
    $reply .=  x("li",
		 x("form class='pw-search-form' data-action='$action' action='$action' method='get'",
		   x("label for='search' class='visually-hidden'",_x('Search:', 'label')).
		   x("input type='text' name='keywords' id='search' placeholder='"._x('Search', 'placeholder')."'").
		   x("input type='hidden' name='tags' value='$GLOBALS[SPOT_id]'").
		   x("button type='submit' name='submit' class='visually-hidden'", _x('Search', 'button')))).
	       x("li",navUserIcon());
    //}
    $reply .= "</ul>\n<!-- /Search and login -->\n";
    return $reply;
}

/**
 * Minimal menu, shown from search page
     */
function getMinimalMenu(string $SPOT_id='spot') {
    global $spot_home, $site_home;
    //if ($spot_home == $site_home) return "";
    $items = [];
    foreach(['spot','artworks','persons'] as $tp) {
        if (($p = pages()->get("template={$SPOT_id}_$tp"))->id) {
	    $active = (empty($items) ? "uk-active" : ""); 
		if ($url=@$p->url) $items[] = x("li class='menu-item $active'", x("a href='$url'", x("h3",$p->title)));
	}
    }
    echo x("ul class='uk-navbar-nav float_left'",
	   join("\n",$items)) . navSearchLogin(page(), false);
};

/**
 * Output <div id='masthead'...</div>
 */
function masthead(Page $page, Languages $languages, User $user) {
    global $config, $SITE_input, $SPOT_id, $SPOT_url, $SPOT_search, $spot_home, $site_home;
    echo "<!-- ".__function__." -->\n";

    $sh = function($addStyle=true, $active=""){
	global $config, $SPOT_id;
	$color = ($SPOT_id == 'h' ? "color:{$config->colorHermes};" : "");
	list($s0,$s1) = $addStyle ? [" style='","'"] : ["",""];
	return $s0 . $color . ($active ? " font-weight:bold;font-style:italic" : "").$s1;
    };
?>
<div id='masthead' class='uk-margin-large-top uk-margin-bottom'>
    <div id='primary-headline' class='uk-container uk-container-center uk-margin-bottom'>
	<h2 style='float:left;<?= $sh(false) ?>'>
	    <?php
	    //$site_home->set('headline', 'Home');
	    foreach($page->parents as $k=>$p) {
		if ($k==0) { echo region('first_item'); continue; }
		echo ($l=x("a href='{$p->url}'", $p->title) . x("i class='uk-icon-angle-right'"));
	    }
	    echo "<!--  region(headline)  -->\n".region('headline')."<!-- /region(headline)  -->\n";
	    ?>
	</h2>
	<?php echo navSearchLogin($page); ?>
    </div>
    
    <nav id='topnav' class='uk-navbar uk-navbar-attached uk-hidden-small'>
	<div class='uk-container uk-container-center'>
	    <ul class='uk-navbar-nav float_left'>
		<!-- Main navigation -->
<?php
//echo "page=$page->title, spot_home=$spot_home->title, rootParent title=".$page->rootParent->title.", page parent=".$page->parent->title."<br>";

$root = false;
$itemCount = 0;
$items = [];
$restricted_pages = ['_brands',
		     '_sellers',
		     '_possessions',
		     'h_collections'];
foreach(($SPOT_url
       ? $spot_home->and($spot_home->children)
       :  [$site_home]) as $item) {
    // : (empty($SPOT_id)
    //	   ? [$site_home]
    //           : [pages()->get("{$SPOT_id}_spot")])) as $item) {
    if (empty($item) || !$item->viewable()) continue;
    if(!$user->hasPermission('see-full-menu') && preg_match("/".join('|',$restricted_pages).'/', $item->template)) continue;
    if (preg_match(";spot/;",$item->url) && !$SPOT_url)  continue;
     // Detect the active tab
    if ($root) {
	$active = '';
    } elseif ($page->id == $spot_home->id) {
        $active = 'uk-active';
        $root = true;
    } elseif ($item->id == $page->id) {
        $active = 'uk-active';
        $root = true;
    } elseif ($item->id == $page->parent->id && $page->parent->id != $spot_home->id) {
        $active = 'uk-active';
    } else {
        $active = '';
    }

    // Impose the menu items order,
    // first "artworks", then "persons", then "brands"
    ++$itemCount;
    $position = (strpos($item->template, 'artworks') !== false
	? 110
	: (strpos($item->template, 'persons') !== false
	    ? 120
	    : (strpos($item->template, 'brands') !== false
		? 130
	        : 100 * $itemCount)));
    $items[$position] = x("li class='menu-item $active'", x("a href='$item->url'", x("h3".$sh(true,$active), $item->title)));
    echo "<!-- /".__function__." -->\n";
}
ksort($items);
if (count($items) > 1) foreach($items as $k=>$v) echo $v;
else getMinimalMenu();
?>
		</ul>
		<?php
		if (empty($languages)) {
		    echo "<span style='color:red;font-style: italic;'>????? No accessible languages</span>";
		}else{
		    echo "<!-- ---------------------------------------------------------- language switcher  -->\n".
			 "<ul class='languages uk-navbar-nav' role='navigation' style='float:right;list-style:none'>\n";
		    static $flags = ['default'=>'gb', 'russian'=>'ru', 'swedish'=>'se', 'french'=>'fr'];
		    foreach($languages as $language) {
			if( $page->viewable($language))
			    printf("<li%s><a hreflang='%s' href='%s'>%s</a></li>\n",
				   ($language->id==$user->language->id ? " class='uk-active'" : ""), // class=
				   $site_home->getLanguageValue($language, 'name'),                  // hreflang
				   $page->localUrl($language)."?{$SITE_input}",                      // href
				   x("div uk-tooltip=$language->title",
				     x("img height=25 width=30 src=".urls('templates')."flags/".$flags[$language->name].".svg")));
		    }
		}
		?>
	    </ul>
	    <!-- ---------------------------------------------------------- language switcher / navigation end -->
	    </div>
	</nav>
    </div><!--/masthead-->
<?php
}


/**
 * Error exit
 */
function abortIt($text = 'Shit...', $extras=[]) {
    echo (CLI_MODE
    //? sprintf("\n%s\n", `echo "$(tput bold)$(tput setaf 1)"`)
      ? sprintf("\n%s\n", shell_exec("tput bold").shell_exec("tput setaf 1"))
      : str_replace("font-size:small;", "", @$GLOBALS['debug_messages']) . "<pre>\n\n<span style='color:red'>$text</span>\n\n");
    if ($extras){
        if (CLI_MODE) var_dump($extras);
        else tidy_dump($extras,'extras');
    }
    debug_print_backtrace(); // DEBUG_BACKTRACE_IGNORE_ARGS
    echo (CLI_MODE
    //? sprintf("\n%s\n%s\n", $text, `echo $(tput sgr0)`)
      ? sprintf("\n%s\n%s\n", $text, shell_exec("tput sgr0"))
      : "</pre>\n");
    die("\n");
}

/**
 * $direction: 'auto' | encode | decode
 *
 */
function escape_uml($text, $direction='auto', $debug=false) {
    static $TT = [
		'À' => '&Agrave;',   'Á' => '&Aacute;',	  'Â' => '&Acirc;',	'Ã' => '&Atilde;',  '<' => '&lt;',
		'Ä' => '&Auml;',     'Å' => '&Aring;',	  'à' => '&agrave;',	'á' => '&aacute;',  '>' => '&gt;',
		'â' => '&acirc;',    'ã' => '&atilde;',	  'ä' => '&auml;',	'å' => '&aring;',   ' ' => '&nbsp;',
		'Æ' => '&AElig;',    'æ' => '&aelig;',	  'ß' => '&szlig;',	'Ç' => '&Ccedil;',
		'ç' => '&ccedil;',   'È' => '&Egrave;',	  'É' => '&Eacute;',	'Ê' => '&Ecirc;',   '-' => '&#8209;', // '‑' => '&#8209;',
		'Ë' => '&Euml;',     'è' => '&egrave;',	  'é' => '&eacute;',	'ê' => '&ecirc;',   '[' => '&#91;',
                'ë' => '&euml;',     'ƒ' => '&#131;',	  'Ì' => '&Igrave;',	'Í' => '&Iacute;',  ']' => '&#93;',
		'Î' => '&Icirc;',    'Ï' => '&Iuml;',	  'ì' => '&igrave;',	'í' => '&iacute;',
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
        '"' => '&quot;',
        "'" => '&#039;',
        //'&' => 'QampQ',
    ];

    if ($direction === 'auto') {
        $direction = preg_grep('/&[#A-Za-z0-9]*;/', [$text]) ? 'decode' : 'encode';
    }

    if ($direction === 'encode') {
        $reply = str_replace(['&'], ['&amp;'], $text, $count1);
        $reply = str_replace(array_keys($TT), array_values($TT), $reply, $count2);
        $count = $count1 + $count2;
    } else {
        $reply = str_replace(['%20'],   [' '], $text, $count0);
        $reply = str_replace(['&amp;'], ['&'], $text, $count1);
        $reply = str_replace(array_values($TT), array_keys($TT), $reply,  $count2);
        $count = $count0 + $count1 + $count2;
    }
    if ($debug) printf("------count=%d %s('%s')='%s'\n", $count, $direction, $text, $reply);
    if (0) if (preg_match("/&[\w\#]*;/",$reply)) {
            tidy_dump(diff(preg_split("/[\n\s]/",$text),
                           preg_split("/[\n\s]/",$reply)));
            echo      htmlDiff($text,$reply);
            abortIt();
        }
    return $reply;
}

    /**
     * Standartize the Carres sizes
     */
    function getSize(page $page, string $default='90x90') {
	if (empty($page->h_aw_size)) {
	    $class = $default;
	    $page->h_aw_size = pages()->get("name=$default");
	    $page->save();
	    $was = 'empty';
	    echo "{$page->title} {$was}->{$page->h_aw_size->name}\n"; 
	}
	
	$n  = strToLower($page->h_aw_size->name);
	if    (str_starts_with($n,'gavroche'))                      $class = 'Gavroche';
	elseif(str_starts_with($n,'twilly'))                        $class = 'Twilly';
	elseif(str_starts_with($n,'maxtwilly'))                     $class = 'MaxTwilly';
	elseif(str_starts_with($n,'bandana'))                       $class = 'Bandana';
	elseif (strpos($n,'x') !== false){
	    $ss = explode('x',$n);
	    if (  ($perimeter=(int)$ss[0]+(int)$ss[1]) > 170 && $perimeter < 190) $class = '90x90';
	    elseif($perimeter >270 && $perimeter <290)              $class = '140x140';
	    elseif($perimeter >130 && $perimeter <150)              $class = '70x70';
	    elseif($perimeter > 70 && $perimeter < 90)              $class = 'Gavroche';
	    elseif($ss[0] == 'ma' && $ss[1] == 'twilly')            $class = 'MaxTwilly';
	}
	else                                                        $class = 'Unknown';
	if (strToLower($was=$page->h_aw_size->name) != strToLower($class)) {
	    $page->h_aw_size = pages()->get("name=$class");
	    $page->save();
	    echo "{$page->title} {$was}->{$page->h_aw_size->name}\n"; 
	}
	if ($n != strToLower($class)) say::notice(sprintf("%s -> %s",$n, $class));
	return $class;
    }
