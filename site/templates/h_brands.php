<?php namespace ProcessWire;
/**
 * Outputs list of all h_brands, regardless of all
 */

region('content',
       x("div class='rounded-area'", page()->body).
       renderObjectList(findObjects('','h_brand'),3,false));

