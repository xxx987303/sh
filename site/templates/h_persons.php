<?php namespace ProcessWire;

/**
 * List h_persons
 *
 * This template does the exact same thing as our browse.php template,
 * so we just include that one instead duplicating code.
 */
global $SPOT_id;
getSpotURLs();
region('content',
       renderObjectList($page->children->sort($s="{$SPOT_id}_aw_lastname"),
			$cols=3,
			($page->numCildren>20),
			__('People',basename(__file__))));
