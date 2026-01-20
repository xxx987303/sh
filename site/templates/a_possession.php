<?php namespace ProcessWire;
/**
 * Possession Template: Display the a_artwork(s) in this a_possession
 */

setNextPrev("template=a_possession, sort=-title", $page);

region('browserTitle', "$page->title, {$page->parent->title}");
region('content', files()->render('./includes/object-page.php',
				  ['page'   => $page,
				   'pages'  => findObjects("a_aw_possession=$page",'a_artwork'),
				   'pages_heading'=> __('Purshased objects'),
				   'width'  => 300, // Images width
				   'skip'   => 'title',
				   'related'=> pages("limit=20, id!=$page->id, body*=" . sanitizer()->selectorValue($page->title))]));
