<?php namespace ProcessWire;
/**
 * Variables:
 *   $page
 *   $pages       Related pages, the first image of those is drawn as page images (with links to the original)
 *   $related     PageArray Artworks that mention the same title in their body
 *   $width       Image(s) width
 *   $o           Orientation: R - images on the right (default L - on the left). Images are twice wider then text
 *   $ncells      Number of cells in the row
 */

$lookingForBug = false;

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
	
	echo "<div class='object-images uk-width-medium-$c uk-text-center'>\n";
	if (!($pages instanceof PageArray)) $pages = [];
	foreach(count($pages) ? $pages : [$page] as $p){
	    if($nImages = (empty($images=$p->get('images')) ? 0 : count($images))) {
		$imageCount = 0;
		foreach($images as $image){
		    $thumb = $image->width($imageCount ? $width : 150); // $width/$nImages
		    if ($imageCount == 1) echo "<ul class='horizontal'>";
		    if ($imageCount >= 1) echo "<li style='max-width:150px; max-height:150px'>";
		    echo x("div class='object-image uk-margin-small'",
			   x("a href='$image->url' data-uk-lightbox=\"{group:'photos'}\"",
			     x("img src='$thumb->url' alt='$image->description'")).
			   ($image->description ? x("div class='caption uk-text-small uk-text-muted'",
						    x("span",$image->description)) : ""));
		    echo "</li>";
		    $imageCount++;
		    if (count($pages)) break;
		}
		if ($imageCount >1) echo "</ul>";
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
 *
 */
if (!function_exists('ProcessWire\o_p_text')) {
    function o_p_text(String $c, Page $page, PageArray $related, $tag='page'){
	global $lookingForBug, $SPOT_id;
	    
	echo "<div class='uk-width-medium-$c'>\n" . x("h2",$page->title);
	getVariations($page);
	echo "<table class='uk-table object-info'> <tbody>\n";
	foreach($page->fields as $f) {
            if (fieldViewable($f,$tag) && ($v=getKeyValue($page, $f))) {
		echo x('tr',x('th',$f->getLabel()) . x('td', $v));
	    }
	}
	echo "</tbody></table>\n";
	
	//
	// body
	//
	if (!empty($page->body)) echo $page->body;

	$fName = "{$SPOT_id}_aw_person";
	$authors = $page->$fName;
	$output = [];
	if ($related->id) { // || count($authors)){
	    foreach($related as $item){
		$output[] = x("li",x("a href='$item->url'",$item->title.','.$item->parent->title));
	    }
	    foreach($authors as $item){
		$output[] = "<li><a href='$item->url'>".__("Artworks by")." $item->title</a></li>";
	    }
	}

	echo "<ul class='uk-list uk-list-line uk-margin-bottom'>";
	if (!empty($output)) {
	    x("h2",__("See Also"));
	    echo join("\n", $output);
	}
	echo "</ul>\n </div>\n";
    }
}

echo "<div class='uk-grid uk-grid-medium'>\n";
if ($o == 'L'){ o_p_images(c1, $page, $pages, $width); o_p_text  (c2, $page, $related);  }
else          { o_p_text  (c2, $page, $related);       o_p_images(c1, $page, $pages, $width); }
echo "</div>\n";
