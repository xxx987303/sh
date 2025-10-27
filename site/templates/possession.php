<?php namespace ProcessWire;
/**
 * Possession Template: Display the artwork(s) in this possession
 */

region('browserTitle', $page->title);
region('browserTitle', "$page->title, {$page->parent->title}");
region('content', files()->render('./includes/object-page.php',
				  array('page'   => $page,
					'pages'  => findObjects("aw_possession=$page",'artwork'),
					'pages_heading'=> __('Purshased objects'),
					'width'  => 300, // Images width
					)));
