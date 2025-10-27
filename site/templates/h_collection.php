<?php namespace ProcessWire;
/**
 * Collection Template: Display all the h_artworks in a given h_collection
 *
 * This just lists the current page's children, which are assumed to be h_artworks
 *
 */

/** @var Page $page */

$items = findObjects("h_aw_collection=$page",'h_artwork');

region('browserTitle', $page->title);
//region('content',$page->body.renderObjectList($items,2));
region('content',files()->render('./includes/object-page.php',
				 array('page'   => $page,
				     //'related'=> pages("template=h_artwork, id!=$page->id, body*=" . sanitizer()->selectorValue($page->title)),
				       'related'=> pages("limit=20, id!=$page->id, body*=" . sanitizer()->selectorValue($page->title)),
				       'width'  => 300, // Images width
				       'o'      => 'R', // Picture on the Left or Right side
				       )).
       renderObjectList($items,$cols=2,$showPagination=false,$headline=__('Artworks of ')." ".$page->title));
