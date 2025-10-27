<?php namespace ProcessWire;
/**
 * Seller Template: Display all the a_artworks purchased from a given a_seller
 */

/** @var Page $page */

$items = findObjects("a_p_seller=$page",'a_possession');

region('browserTitle', $page->title);
region('content',files()->render('./includes/object-page.php',
				 array('page'   => $page,
				       'related'=> pages("limit=24, id!=$page->id, body*=" . sanitizer()->selectorValue($page->title)),
				       'width'  => 150, // Images width
				       )).
       renderObjectList($items,$cols=2,$showPagination=false,$headline=__('Artworks from')." ".$page->title));
