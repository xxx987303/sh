<?php namespace ProcessWire;

/**
 * Artworks Template: lists them
 *
 */
region('content',
       page()->body .
       renderImageList(page()->children, $cols=4,false,__('Scarves')));
       //files()->render('./includes/items-list.php',array('items' => page()->children)));

