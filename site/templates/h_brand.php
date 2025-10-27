<?php namespace ProcessWire;

/**
 * Brand Template: Display all the h_artworks produced by a given h_brand
 *
 */

/** @var Page $page */
$items = findObjects("h_aw_brand=$page",'h_artwork');

region('browserTitle', $page->title);
region('content',files()->render('./includes/object-page.php',
				 array('page'   => $page,
				       'related'=> pages("limit=20, id!=$page->id, body*=" . sanitizer()->selectorValue($page->title)),
				       'width'  => 150, // Images width
				       )).
       renderObjectList($items,$cols=2,$showPagination=false,$headline=__('My scarfs from')." ".$page->title));
