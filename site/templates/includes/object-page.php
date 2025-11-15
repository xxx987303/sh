<?php namespace ProcessWire;
/**
 * Variables:
 *   $page
 *   $pages       Related pages, the first image of those is drawn as page images (with links to the original)
 *   $related     Artworks that mention the same title in their body
 *   $width       Image(s) width
 *   $o           R - images on the right (default L - on the leftleft)
 *   $ncells      Number of cells in the row
 */

if (empty($o)) $o = 'L'; // images on the left (if not on the rigth) hand site

// currently number of cells is 3 or 4 
if (empty($ncells)) $ncells = 3;
if ($width == 150)  $ncells = 4;
if ($ncells == 4)   $width = 150;
if ($ncells != 3 && $ncells !== 4) $ncells = 3;

if($width == 600){
  // Double cell for large images
  define('c1',"2-$ncells");
  define('c2',"1-$ncells");
}else{
  define('c1',"1-$ncells");
  define('c2',"2-$ncells");
}

function o_p_images($c, $page, $pages, $width){

    echo "<div class='object-images uk-width-medium-$c uk-text-center'>\n";
    if (!($pages instanceof PageArray)) $pages = [];
    foreach(count($pages) ? $pages : [$page] as $p){
        if(!empty($images=$p->get('images'))){
            foreach($images as $image){
                $thumb = $image->width($width);
                echo x("div class='object-image uk-margin-small'",
                       x("a href='$image->url' data-uk-lightbox=\"{group:'photos'}\"",
                         x("img src='$thumb->url' alt='$image->description'")).
                       ($image->description ? x("div class='caption uk-text-small uk-text-muted'",
                                                x("span",$image->description)) : ""));
                if (count($pages)) break;
            }
        }else{
            echo x("div class='object-image uk-margin-small'",
                   x("img src='".urls()->templates."styles/images/photo_placeholder.png' alt=''").
                   x("div class='caption uk-text-small uk-text-muted'",x("span","Photo not available")));
        }
    }
    echo"  </div>\n";
}

function o_p_tr_line($label,$items){
    if (!empty($items)) {
        if ($items instanceof PageArray && count($items)) {
            echo x("tr",x("th",$label).x("td",x("ul class='uk-list uk-margin-remove'",
                                                $items->each("<li><a href='{url}'>{title}</a></li>"))));
        } elseif(!$items->id) {
            foreach($items as $i) {
                if (is_array($i)) echo $i['comment'].x("tr",x("th",$i['label']).x("td",x("a href='$i[url]'",$i['value'])));
            }
        }
    }
}

function o_p_main($c, $page, $related){
  
  $f_author = null; foreach ($page->fields as $f) if(strpos($f->name,'aw_person')!==false) $f_author=$f->name;
  $authors = $page->get($f_author);
  if(empty($authors)) $authors = array();
  if(empty($related) || empty($related->id)) $related = array();
  
  echo"  <div class='uk-width-medium-$c'>\n";
  
  echo x("h2",$page->title);

  if (!empty($taggedFields=getTaggedFields($page,'page')) || !empty($authors)){
    echo "<table class='uk-table object-info'> <tbody>\n";

    // Author 
    o_p_tr_line(($t=templates()->get($f_author)) ? $t->label : __('Author'), $authors);

    // Author related pages
    foreach ($page->fields as $f){
      if(strpos($f->name,'aw_person')!==false || $f->type != 'FieldtypePage') continue;
      o_p_tr_line($f->getLabel(),$page->$f);
    }

    // Table of 'page' tagged fields
    o_p_tr_line('',$taggedFields);
    echo "</tbody></table>\n";
  }

  //
  // body
  //
  if (!empty($page->body)) echo $page->body;
  
  if(!empty($related) || !empty($authors)){
    echo x("h2",__("See Also"));
    
    echo "<ul class='uk-list uk-list-line uk-margin-bottom'>";
    foreach($related as $item){
      echo x("li",x("a href='$item->url'",$item->title.','.$item->parent->title));
    }
    foreach($authors as $item){
      echo "<li><a href='$item->url'>".__("Artworks by")." $item->title</a></li>";
    }
  }else{
    echo "<ul class='uk-list uk-list-line uk-margin-bottom'>";
  }
  //echo x("li",x("a href='../'",$page->parent->title));
  echo "</ul>\n </div>\n";
}


if(empty($related) || empty($related->id)) $related = [];
echo "<div class='uk-grid uk-grid-medium'>\n";
if ($o == 'L'){ o_p_images(c1, $page, $pages, $width); o_p_main  (c2, $page, $related);  }
else          { o_p_main  (c2, $page, $related);       o_p_images(c1, $page, $pages, $width); }
echo "</div>\n";
