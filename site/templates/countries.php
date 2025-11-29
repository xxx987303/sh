<?php namespace ProcessWire;

/**
 * Countries Template: lists them
 *
 */

region('content',
       page()->body .
       files()->render('./includes/items-list.php',
		       ['items' => page()->children]));
