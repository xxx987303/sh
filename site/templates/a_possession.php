<?php namespace ProcessWire;
/**
 * Possession Template: Display the a_artwork(s) in this a_possession
 */

region('browserTitle', $page->title);
region('browserTitle', "$page->title, {$page->parent->title}");
region('content', files()->render('./includes/object-page.php',
				  array('page'   => $page,
					'pages'  => findObjects("a_aw_possession=$page",'a_artwork'),
					'pages_heading'=> __('Purshased objects'),
					'width'  => 300, // Images width
					)));
