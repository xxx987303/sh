<?php namespace ProcessWire;
/**
 * Lists h_artwork h_sellers
 */

region('content',
       page()->body .
       renderObjectList(page()->children, $cols=2,false)); // ,__('Sellers')));

