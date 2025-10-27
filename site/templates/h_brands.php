<?php namespace ProcessWire;
/**
 * Outputs list of all h_brands, regardless of all
 */

// include("./browse.php"); 
region('content', renderObjectList(findObjects('','h_brand'),2,false));

