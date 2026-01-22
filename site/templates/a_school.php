<?php namespace ProcessWire;
/**
 * Person Template: Display all the a_artworks designed by a given artist
 *
 */
/** @var Page $page */

if(0)if ($page->title == 'Caravaggisti')
    region('afterText',__("\nCaravaggists - this truly unique style of the Baroque era was named after Caravaggio, ".
			  "a reformer artist, the founder of realism.\nWho remembers today that he committed a murder in his youth? ".
			  "Despite his life on the run, the artist managed to gather a circle of students and followers — caravaggists.\n".
			  "The trend developed in Italy at the 16th — 17th centuries, as well as in Holland, Germany and Spain.\n"));

region('browserTitle', $page->title);

region('content',files()->render('./includes/object-page.php',
				 ['page'   => $page,
				  'related'=> pages("limit=20, id!=$page->id, body*=" . sanitizer()->selectorValue($page->title)),
				  'width'  => 300]) . // Images width
		 renderObjectList(findObjects("a_av_school=$page, sort=-name",'a_person'),
				  $cols=2,
				  $showPagination=false,
				  $headline=$page->title)
//		.(!empty($b=$page->body) ? x("div class=auto-width-content style='padding-top:0;max-width:100%'",$b) : "")
		.$page->body
);
