<?php namespace ProcessWire;
/**
 * Seller Template: Display all the artworks purchased from a given seller
 */

/** @var Page $page */

$items = findObjects("p_seller=$page",'possession');

region('browserTitle', $page->title);
region('content',files()->render('./includes/object-page.php',
				 array('page'   => $page,
				       'related'=> pages("limit=24, id!=$page->id, body*=" . sanitizer()->selectorValue($page->title)),
				       'width'  => 150, // Images width
				       )).
       renderObjectList($items,$cols=2,$showPagination=false,$headline=__('Artworks from')." ".$page->title));
