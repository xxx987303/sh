<?php namespace ProcessWire;

/**
 * Sizes Template: lists them
 *
 */

region('content',
       page()->body .
       files()->render('./includes/items-list.php',
		       array('items' => page()->children)));

