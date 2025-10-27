<?php namespace ProcessWire;

/**
 * Possessions Template: lists artwork possessions
 *
 */

region('content',
       page()->body .
       files()->render('./includes/items-list.php',
		       array('items' => page()->children)));

