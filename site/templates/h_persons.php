<?php namespace ProcessWire;

/**
 * List h_persons
 *
 * This template does the exact same thing as our browse.php template,
 * so we just include that one instead duplicating code.
 */

region('content',
       renderObjectList($page->children,
			$cols=3,
			($page->numCildren>20),
			__('Artists')));

