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
if (empty($page->artworks_featured)){
  $page->template->fieldgroup->add(fields()->get('artworks_featured'));
  $page->template->fieldgroup->save();
}
$items_featured = empty($page->artworks_featured) ? [] : $page->artworks_featured->find("limit=4, sort=random");

// Locate other spots
$items_spots = PageArray();
foreach(templates() as $tp){
  if ($tp->id == $page->template->id) continue;
  if(preg_match("/spot$/",$tp->name)) if ($p=pages()->findOne("template=$tp")) $items_spots->add($p);
}

region('content+',
       (count($items_featured)?renderObjectList($items_featured, 2, false, __('Featured Artworks')):"").
       (($p=pages('/spot/collections/'))
	? renderObjectList($p->children(), 2, false, __($page->template->name.'_collections'))
	: renderObjectList(pages('/spot/aptworks/')->children(), 2, false, __($page->template->name.'_artworks'))).
       count($items_spots) ? renderObjectList($items_spots, 2, false, __('More Collections')):"");

