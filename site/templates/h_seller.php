<?php namespace ProcessWire;
/**
 * Seller Template: Display all the h_artworks purchased from a given h_seller
 */

/** @var Page $page */

$items = findObjects("h_p_seller=$page",'h_possession');

region('browserTitle', $page->title);
region('content',files()->render('./includes/object-page.php',
				 array('page'   => $page,
				       'related'=> pages("limit=24, id!=$page->id, body*=" . sanitizer()->selectorValue($page->title)),
				       'width'  => 150, // Images width
				       )).
       renderObjectList($items,$cols=2,$showPagination=false,$headline=__('Artworks from')." ".$page->title));
