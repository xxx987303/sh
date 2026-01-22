<?php namespace ProcessWire;
/**
 * Variables:
 *   $page
 *   $pages       Related pages, the first image of those is drawn as page images (with links to the original)
 *   $related     PageArray Artworks that mention the same title in their body
 *   $width       Cell (hence image) width
 *   $o           Orientation: R - images on the right (default L - on the left). Images are twice wider then text
 *   $ncells      Number of cells in the row
 *   $skip        Skip title printing
 */

$lookingForBug = false;
$GLOBALS['skip'] = (string)@$skip;

getSpotURLs();
if (empty($o)) $o = 'L'; // images on the left (if not on the rigth) hand site

// currently number of cells is 3 or 4 
if (empty($ncells)) $ncells = 3;
if ($width == 150)  $ncells = 4;
if ($ncells == 4)   $width = 150;
if ($ncells != 3 && $ncells != 4) $ncells = 3;

if($width == 600){
    // Double cell for large images
    define('c1',"2-$ncells");
    define('c2',"1-$ncells");
}else{
    define('c1',"1-$ncells");
    define('c2',"2-$ncells");
}

if (!function_exists('ProcessWire\o_p_images')) {
    function o_p_images(String $c, Page $page, $pages, Int $width){
	global $SPOT_id, $config;
	echo "<div class='object-images uk-width-medium-$c uk-text-center'>\n";
	if (!($pages instanceof PageArray)) $pages = [];
	foreach(count($pages) ? $pages : [$page] as $p){
	    $imageCount = 0;
	    if($nImages = (empty($images=$p->get('images')) ? 0 : count($images))){
		foreach($images as $image){
		    $descr = (!$imageCount && ($t=$page->figcaption) ? $t : ""); 
		    $thumb = ( $imageCount ? $image->height($config->mh) : $image->width($width));
		    switch ($imageCount++){
			case 0: break;
			case 1:
			    echo "<ul class='horizontal'>\n";
			default:
			    //"<li style='max-width:{$width}px; max-height:".$thumb->height()."px'>\n") .
			    echo "<li style='max-height:{$config->mh}px'>\n";
		    }
		    echo x("div class='object-image uk-margin-small'",
			   x("a href='$image->url' data-uk-lightbox=\"{group:'photos'}\"",
			     x("img src='{$thumb->url}' alt='{$descr}'")).
			   ($descr ? x("div class='caption uk-text-small uk-text-muted'",
				       x("span style=font-size:".(strpos($p->template,'person')?'small':'large'),
					 _t($descr)))
			  : "")) .
			 "</li>\n";
		    if (count($pages)) break;
		}
		if ($imageCount > 1 ) echo "</ul>";
	    }else{
		echo x("div class='object-image uk-margin-small'",
		       x("img src='".urls()->templates."styles/images/photo_placeholder.png' alt=''").
		       x("div class='caption uk-text-small uk-text-muted'",x("span","Photo not available")));
	    }
	}
        echo"  </div>\n";
    }
}

/**
 * Tag 'page' - fields used by function o_p_text (templates x_person|x_artwork|x_collection|x_provider)
 *     'list' - fields used in small grey rounded objects "case3" (templates x_artwork)  
 *     'caption' - Text in the up-right corner
 */
if (!function_exists('ProcessWire\o_p_text')) {
    function o_p_text(String $c, Page $page, PageArray $related, $tag='page'){
	global $lookingForBug, $SPOT_id, $skip;
	    
	echo "<div class='uk-width-medium-$c'>\n" . x("h2",$page->title);
	getVariations($page);
	echo "<table class='uk-table object-info'> <tbody>\n";
	foreach($page->fields as $f) {
	    if (!empty($skip) && $f->name == $skip) continue;
            if (fieldViewable($f,$tag,$page) && ($v=getKeyValue($page, $f))) {
		echo x('tr',x('th',$f->getLabel()) . x('td', $v));
	    }
	}
	echo "</tbody></table>\n" . $page->body2;
	
	//
	// Whatever related
	//
	$fName = "{$SPOT_id}_aw_person";
	$authors = empty($a=$page->$fName) ? [] : $a;
	$related_sorted = [];
	$output = [];
	foreach($related->sort("{$SPOT_id}_aw_lastname") as $item){
	    if (!str_starts_with($item->template, $SPOT_id)) continue;
	    $related_sorted[$item->parent->title][] = x("li",x("a href='$item->url'","{$item->title}"));
	//$output[] = x("li",x("a href='$item->url'","{$item->parent->title}: {$item->title}"));
	}
	ksort($related_sorted);
	foreach($related_sorted as $root=>$items){
	    $output[] = x("h4",$root);
	    foreach($items as $item) $output[] = $item; 
	}
	foreach($authors as $item){
	    $output[] = x("li",x("a href='$item->url'", __("Artworks by")." $item->title"));
	}

	if (!empty($output)) echo x("h3",__("See Also")) .
				  x("ul class='uk-list uk-list-line uk-margin-bottom'",
				    join("\n", $output));
    }
}

if (empty($related)) $related = new PageArray();
echo "<div class='uk-grid uk-grid-medium'>\n";
if ($o == 'L'){ o_p_images(c1, $page, $pages, $width); o_p_text  (c2, $page, $related);  }
else          { o_p_text  (c2, $page, $related);       o_p_images(c1, $page, $pages, $width); }
echo "</div>\n";

if ($page->template != 'a_school' && !empty($page->body)){
    echo x("div class=auto-width-content style=max-width:100%",$page->body);
}
