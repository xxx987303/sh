<?php namespace ProcessWire;

/**
 * Collections Template: lists them
 */
region('content',
       page()->body .
       renderObjectList(page()->children, $cols=2,false,__('Collections')));
