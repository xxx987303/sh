<?php namespace ProcessWire;

/**
 * Brand Template: Display all the artworks produced by a given brand
 *
 */

/** @var Page $page */
$items = findObjects("aw_brand=$page",'artwork');

region('browserTitle', $page->title);
region('content',files()->render('./includes/object-page.php',
				 array('page'   => $page,
				       'related'=> pages("limit=20, id!=$page->id, body*=" . sanitizer()->selectorValue($page->title)),
				       'width'  => 150, // Images width
				       )).
       renderObjectList($items,$cols=2,$showPagination=false,$headline=__('My scarfs from')." ".$page->title));
