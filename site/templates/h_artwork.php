<?php namespace ProcessWire;

/**
 * The Artwork template displays a single h_artwork with a table of stats, photos, description and map
 *
 */

/** @var Page $page */

// populate regions
region('browserTitle',
       "{$page->title}, {$page->parent->title}");

// related h_artworks are those that mention the same title in their body copy
region('content',
       files()->render('./includes/object-page.php',
		       ['page'   => $page,
			'related'=> pages("limit=20, id!=$page->id, body*=" . sanitizer()->selectorValue($page->title)),
			'width'  => 600, // Images width
]));
