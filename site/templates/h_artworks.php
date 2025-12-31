<?php namespace ProcessWire;

/**
 * Artworks - list all of them
 */
region('content',
       page()->body .
       renderImageList(page()->children, $cols=4,false,__('Scarves')));

