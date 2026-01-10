<?php namespace ProcessWire;
/**
 * Collection Template: Display all the h_artworks in a given h_collection
 *
 *
 */

/** @var Page $page */

$items = findObjects("h_aw_collection=$page",'h_artwork');

region('browserTitle', $page->title);
//region('content',$page->body.renderObjectList($items,2));
region('content',files()->render('./includes/object-page.php',
				 array('page'   => $page,
				       'related'=> pages("limit=20, id!=$page->id, body*=" . sanitizer()->selectorValue($page->title)),
				       'width'  => 300, // Images width
				       'o'      => 'L', // Picture on the Left or Right side
				       )).
       renderObjectList($items,$cols=3,$showPagination=false,$headline=__('Artworks of ')." ".$page->title));
