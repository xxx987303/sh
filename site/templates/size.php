<?php namespace ProcessWire;

/**
 * Sizes Template: lists items with a given size
 * /sh/sizes/90x90/
 */

$uri = explode('/', $page->url);

//var_dump(region('*'));

region('headline',
       __("Scarves of size ".$uri[3]));

region('content',
       page()->body .
       //"<pre>".$_SERVER['REQUEST_URI']."</pre>".
       renderImageList(pages()->find("template=h_artwork, size=$uri[3]"), $cols=3,false,__('Scarves')));


