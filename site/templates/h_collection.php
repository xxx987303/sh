<?php namespace ProcessWire;
/**
 * Collection Template: Display all the h_artworks in a given h_collection
 *
 *
 */

region('browserTitle', $page->title);

region('content',
       files()->render('./includes/object-page.php',
		       ['page'   => $page,
			'related'=> pages("limit=20, id!=$page->id, body*=" . sanitizer()->selectorValue($page->title)),
			'width'  => 300, // Images width
			'o'      => 'L']). // Picture on the Left or Right side
       renderObjectList(findObjects("h_aw_collection=$page",'h_artwork'),
			$cols=2,
			$showPagination=false,
			$headline=__('Artworks of ')." ".$page->title));
