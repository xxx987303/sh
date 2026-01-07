<?php namespace ProcessWire;

/**
 * List persons
 *
 * This template does the exact same thing as our browse.php template,
 * so we just include that one instead duplicating code.
 *
include("./browse.php");
 */

region('content',
       renderObjectList($page->children, $cols=3,($page->numCildren>20),__('Artists')));

