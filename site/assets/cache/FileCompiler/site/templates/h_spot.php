<?php namespace ProcessWire;
getSpotURLs();

region('headline',     $page->title);
region('browserTitle', $page->title);

// display a random photo from this page to display at the top
if ($page->images && ($photo = $page->images->getRandom()))
  region('mainHeader',
	 files()->render('./includes/banner-photo.php',
			 array('photo'   => $photo->maxWidth(1600),
			       'caption' => sanitizer()->entitiesMarkdown($photo->description))));

// Locate Featured Artworks
$items_featured = empty($page->h_artworks_featured) ? [] : $page->h_artworks_featured->find("limit=4, sort=random");

// Locate other spots
$items_spots = PageArray();
foreach(templates() as $tp){
  if ($tp->id == $page->template->id) continue;
  if(preg_match("/(_spot|h_collection)$/",$tp->name)) if (($p=pages()->findOne("template=$tp"))->viewable($language)) $items_spots->add($p);
}

region('content+',
       (($f=count($items_featured))?renderObjectList($items_featured, 2, false, __('Featured Artworks')):"").
       (($c=count($items_spots))   ?renderObjectList($items_spots, $c, false, __('More Collections')):""));

