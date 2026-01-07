<?php namespace ProcessWire;
/**
 * Outputs list of all h_brands, regardless of all
 */

region('content',
       //x("div class='rounded-area'", page()->body).
       renderObjectList($page->children,
                        $cols=3,
                        ($page->numCildren>20),
                        __('Brands')));

