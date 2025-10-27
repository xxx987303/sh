<?php namespace ProcessWire;
/**
 * Person Template: Display all the a_artworks designed by a given artist
 *
 */
/** @var Page $page */

region('browserTitle', $page->title);
region('content',files()->render('./includes/object-page.php',
				 array('page'   => $page,
				       'related'=> pages("limit=20, id!=$page->id, body*=" . sanitizer()->selectorValue($page->title)),
				       'width'  => 300, // Images width
				       )).
       renderObjectList(findObjects("a_aw_person=$page",'a_artwork'),
			$cols=2,
			$showPagination=false,
			$headline=__('Artworks of ')." ".$page->title));
