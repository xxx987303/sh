<?php namespace ProcessWire;
/**
 * Lists artwork collections
 */

region('content',
       page()->body .
       renderObjectList(page()->children, $cols=2,false,__('Collections')));

