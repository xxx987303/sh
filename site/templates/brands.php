<?php namespace ProcessWire;
/**
 * Outputs list of all brands, regardless of all
 */

// include("./browse.php"); 
region('content', renderObjectList(findObjects('','brand'),2,false));

