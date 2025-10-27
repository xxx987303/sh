<?php namespace ProcessWire;
/**
 * Collection Template: Display all the a_artworks in a given a_collection
 *
 * This just lists the current page's children, which are assumed to be a_artworks
 *
 */

/** @var Page $page */

$items = findObjects("a_aw_collection=$page",'a_artwork');

region('browserTitle', $page->title);
//region('content',$page->body.renderObjectList($items,2));
region('content',files()->render('./includes/object-page.php',
				 array('page'   => $page,
				     //'related'=> pages("template=a_artwork, id!=$page->id, body*=" . sanitizer()->selectorValue($page->title)),
				       'related'=> pages("limit=20, id!=$page->id, body*=" . sanitizer()->selectorValue($page->title)),
				       'width'  => 300, // Images width
				       'o'      => 'R', // Picture on the Left or Right side
				       )).
       renderObjectList($items,$cols=2,$showPagination=false,$headline=__('Artworks of ')." ".$page->title));
