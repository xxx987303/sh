<?php namespace ProcessWire;
echo x("div class='ul-list-item rounded-area'",
       x("div class='uk-grid uk-grid-medium' style='margin:auto'",
	 x("div class='uk-width-1-1 uk-width-small-1-1' style='text-align:center'",
	   (empty($page->title)
	    ? ""
	    : x("div style='padding-bottom:15px'",x("a href='{$page->url}'",x("strong",$page->title)))).
	   x("a href='{$page->url}'",
	     x("img src='$img' alt='{$page->title}'").
             x("div class='caption uk-text-small uk-text-muted'",
               x("span style=font-size:small",$description))))));

