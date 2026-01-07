<?php namespace ProcessWire;
/**
 * Export content of /h_spot/ database
 */

define('MODE', (false ? 'IMPORT' : 'ALL')); // List human-readable scarves OR only Hermes in the Rimport.php expected format

require_once __dir__ . '/debug.php';

switch (MODE) {
    case 'ALL':
	//
	// Export all scarves in "human readable" format
	$YEAR_1 = true;
	$TRANSLITERATE = true;
	echo "\n==================================\n================================== Scarves\n==================================\n\n";
	$dejaVu = [];
	foreach(pages()->find("template=h_brand, sort=name") as $brand) {
	    $n = 0;
	    $artist = [];
	    if (!count($pages = pages()->find("template=h_artwork, h_aw_brand=$brand->id, sort=name"))) continue;
	    echo "============== ".$brand->title."\n";
	    foreach($pages  as $p){
		$id = '';
		foreach($p->h_aw_person as $a) $id .= $a->id.'.';
		if (empty($artist[$id])) $artist[$id] = [];
		$artist[$id][] = $p;
	    }
	    ksort($artist);
	    foreach ($artist as $a=>$list) {
		foreach($list as $p) {
		    if (!count($p->h_aw_collection)) exportPageForHuman($p);
		}
	    }
	}

	foreach (pages()->get('h_collections')->children as $collection) {
	    echo "============== ".$collection->title."\n";
	    foreach([$collection->children, pages()->find("h_aw_collection=$collection->id")] as $pp) {
		if     ($pp instanceof Page) { exportPageForHuman($pp); }
		elseif ($pp instanceof PageArray) foreach($pp as $p) { if (!@$dejaVu[$p->name]++) exportPageForHuman($p); } 
	    }
	}
	echo "\n";
	break;

    default:
	//
	// Export Hermes collection only
	//
	$YEAR_1 = false;
	$TRANSLITERATE = true;
	$hermes = pages()->get('title=Hermès')->id;
	echo "# day0, carreTitle, lastName, firstName, year, comment, price, size, www, base, sellerId, options\n";
	foreach (pages()->find("template=h_artwork, h_aw_brand=$hermes, sort=name") as $p) {
	    // Skip collections
	    if (count($p->h_aw_collection)) continue;
	    exportPageForImport($p);    
	}
}

/**
 */
function Title($p){
    global $sanitizer, $TRANSLITERATE;
    return ($TRANSLITERATE ? $sanitizer->transliterate($p->title) : $p->title);
}

function Options(Page $p) {
    $options = [];
    foreach($p->h_aw_options as $o) $options[] = $o->value;
    return (empty($options) ? "" : join('&',$options));
}

/**
 */
function Size(Page $p, $dropDetailes=false) {
    return ($s=$p->h_aw_size) ? preg_replace(["/G\w*/","/T\w*/","/B\w*/"], ['G','T','B'], $s->title) : "";
};

/**
 */
function Year(Page $p) {
    global $YEAR_1;
    return ($YEAR_1 ? explode('/',$p->h_aw_year)[0] : $p->h_aw_year);
}

/**
 */
function Authors($p,$human=true){
    if ($human) {
	$and = count($p->h_aw_person) > 1 ? ' & ' : ' ';
	return trim($p->h_aw_person->each("{title}$and"),$and);
    }else{
	abortIt('Not yet ready');
    }
}

/*
 */
function Cmt(Page $p) {
    return trim($p->h_aw_more . (strpos($p->name, 'variations') ? ' ***' : ''));
}

/**
 */
function exportPageForHuman(Page $p) {
    echo escape_uml(sprintf("%-11s %-40s %-4s %-7s %-20s %s\n",
                            $p->h_aw_day0,
			    Title($p),
			    Year($p),
			    Size($p),
			    Authors($p, true),
			    Cmt($p)),
                    'decode');
}

/**
 * $day0, $carreTitle, $lastname, $firstname, $year, $cmt, $price, $size, $www, $base, $seller_id, $options)
 */
function exportPageForImport(Page $p){
    global $sanitizer, $TRANSLITERATE;
    $ln = $fn = [];
    foreach ($p->h_aw_person as $av) {
	$ln[] = ($TRANSLITERATE ? $sanitizer->transliterate($av->h_av_lastname)  : $av->h_av_lastname);
	$fn[] = ($TRANSLITERATE ? $sanitizer->transliterate($av->h_av_firstname) : $av->h_av_firstname);
    }
    
    echo rtrim(sprintf("%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s",
		       $p->h_aw_day0,
		       Title($p),
		       join('&',$ln),
		       join('&',$fn),
		       Year($p),
		       Cmt($p),
		       $p->h_aw_price,
		       Size($p),
		       $p->h_aw_url,
		       $p->h_aw_base->title,
		       $p->h_aw_seller->id,
		       Options($p)),
	       ',')."\n";
}
