<?php namespace ProcessWire;
$url = $page->url;
$ttl = $page->title;
$caption = $page->label;
echo x("div class='ul-list-item rounded-area'",
       x("div class='uk-grid uk-grid-medium' style='margin:auto'",
	 x("div class='uk-width-1-1 uk-width-small-1-1' style='text-align:center'",
	   (empty($ttl)
	    ? ""
	    : x("div style='padding-bottom:15px'",x("a href='$url'",x("strong",$ttl)))).
	   x("a href='$url'",x("img src='$img' alt='$ttl'")))));

	 
