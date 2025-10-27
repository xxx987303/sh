<?php namespace ProcessWire;
/**
 * Person Template: Display all the h_artworks designed by a given artist
 *
 */
/** @var Page $page */

region('browserTitle', $page->title);
region('content',files()->render('./includes/object-page.php',
				 array('page'   => $page,
				       'related'=> pages("limit=20, id!=$page->id, body*=" . sanitizer()->selectorValue($page->title)),
				       'width'  => 300, // Images width
				       )).
       renderObjectList(findObjects("h_aw_person=$page",'h_artwork'),
			$cols=2,
			$showPagination=false,
			$headline=__('Artworks of ')." ".$page->title));
