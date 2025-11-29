<?php namespace ProcessWire;
/**
 * http://localhost/sh/ru-home/countries/ukraina/
 */
global $SPOT_id;
$uri = explode('/', $page->url);
if (empty($SPOT_id)) $SPOT_id = 'h';

region('headline',
       __("People from ".ucfirst($uri[$ccc=count($uri)-2])));

region('content',
       renderObjectList(pages()->find($s="template={$SPOT_id}_person, country=$uri[$ccc]"),
			$cols=3,
			($page->numCildren>20),
			__('Artists')));
