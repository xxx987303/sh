<?php namespace ProcessWire;
getSpotURLs();

region('headline',     $page->title);
region('browserTitle', $page->title);

// display a random banner photo from this page to display at the top
if ($page->images && ($photo = $page->images->getRandom()))
    region('mainHeader',
	   files()->render('./includes/banner-photo.php',
			   ['photo'   => $photo->maxWidth(1600),
			    'caption' => sanitizer()->entitiesMarkdown($photo->description)]));
region('content+',
       renderObjectList(getRandomFeatured(3), 3, false, __('Featured Paintings')));
