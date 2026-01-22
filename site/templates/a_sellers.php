<?php namespace ProcessWire;
/**
 * Lists artwork sellers
 */

region('content',
       page()->body .
       renderObjectList(page()->children, $cols=3,false)); // ,__('Sellers')));

