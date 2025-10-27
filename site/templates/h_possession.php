<?php namespace ProcessWire;
/**
 * Possession Template: Display the h_artwork(s) in this h_possession
 */

//region('browserTitle', $page->title);
region('browserTitle', "$page->title, {$page->parent->title}");
region('content', files()->render('./includes/object-page.php',
				  array('page'   => $page,
					'pages'  => findObjects('h_aw_possession='.$page,'h_artwork'),
					'pages_heading'=> __('Purshased objects'),
					'width'  => 150,
					)));
