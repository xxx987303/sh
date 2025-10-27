<?php namespace ProcessWire;

/**
 * Possessions Template: lists h_artwork h_possessions
 *
 */

region('content',
       page()->body .
       files()->render('./includes/items-list.php',
		       array('items' => page()->children)));

