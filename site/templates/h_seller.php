<?php namespace ProcessWire;
/**
 * Seller Template: Display all the h_artworks purchased from a given h_seller
 */

/** @var Page $page */

//$items = findObjects("h_p_seller=$page",'h_possession');
$items = findObjects("h_aw_seller=$page",'h_artwork');

region('browserTitle', $page->title);
region('content',files()->render('./includes/object-page.php',
                                 array('page'   => $page,
                                       'related'=> pages("limit=20, id!=$page->id, body*=" .
							 sanitizer()->selectorValue($page->title)),
                                       'width'  => 150,)) .
		 renderObjectList($items,
				  $cols=3,
				  $showPagination=false,
				  $headline=__($config->ártworkItems[$GLOBALS['SPOT_id']].' from')." ".$page->title));
