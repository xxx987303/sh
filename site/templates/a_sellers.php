<?php namespace ProcessWire;
/**
 * Lists artwork sellers
 */

region('content',
       page()->body .
       renderObjectList(page()->children, $cols=2,false)); // ,__('Sellers')));

