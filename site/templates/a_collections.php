<?php namespace ProcessWire;
/**
 * Lists artwork collections
 */

region('content',
       page()->body .
       renderObjectList(page()->children->sort('a_aw_person'), $cols=2,false,__('Collections')));

