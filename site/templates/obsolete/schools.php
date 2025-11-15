<?php namespace ProcessWire;
/**
 * Lists artwork schools
 */

region('content',
       page()->body .
       renderObjectList(page()->children, $cols=2,false,__('Schools')));

