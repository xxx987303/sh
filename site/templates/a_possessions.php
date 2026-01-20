<?php namespace ProcessWire;

/**
 * Possessions Template: lists artwork possessions
 *
 */

if (0) {
region('content',
       page()->body .
       files()->render('./includes/items-list.php',
		       array('items' => page()->children)));
}else{
region('content',
       page()->body .
       renderObjectList(page()->children->sort('-title'), $cols=3,false,__('Possessions')));
}
