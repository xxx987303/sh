<?php namespace ProcessWire;
/**
 * Collection Template: Display all the a_artworks in a given a_collection
 *
 * This just lists the current page's children, which are assumed to be a_artworks
 *
 */

/** @var Page $page */

$items = findObjects("a_aw_collection=$page",'a_artwork')->sort('a_aw_person');

region('browserTitle', $page->title);
region('content',files()->render('./includes/object-page.php',
				 array('page'   => $page,
				       'related'=> (pages("limit=20, id!=$page->id, body*=" . sanitizer()->selectorValue($page->title))),
				       'width'  => 300, // Images width
				       'o'      => 'L', // Picture on the Left or Right side
				       )).
       renderObjectList($items,$cols=3,$showPagination=false,$headline=__('Artworks of ')." ".$page->title));
