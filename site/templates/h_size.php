<?php namespace ProcessWire;

/**
 * Sizes Template: lists items with a given size
 * /sh/sizes/90x90/
 */

$uri = explode('/', $page->url);

region('headline',
       __("Scarves of size ".$uri[3]));

region('content',
       page()->body .
       renderImageList(pages()->find("template=h_artwork, h_aw_size=$uri[3]"), $cols=3,false,__('Scarves')));


