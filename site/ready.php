<?php namespace ProcessWire;
if(!defined("PROCESSWIRE")) die();

/**
 * ProcessWire Bootstrap API Ready 
 * ===============================
 * This ready.php file is called during ProcessWire bootstrap initialization process.
 * This occurs after the current page has been determined and the API is fully ready 
 * to use, but before the current page has started rendering. This file receives a 
 * copy of all ProcessWire API variables.
 *
 */

if (file_exists($f='./templates/_hooks.php')) include_once $f;

/**
 * Populate 'wd_visits' table
 */
define('WDdb', 'yb_watch_dog');
function PW_track_visitor() {
    global $config;

    if ($user = Users()->getCurrentUser()) {
	$PW_WP = [  40   => 0,
		    41   => 1,
		    5972 => 9];

	$id = isset($PW_WP[$user->id]) ? $PW_WP[$user->id] : $user->id;
	$args=['user_id'   => $id,
  	       'user_name' => $user->name,
  	       'uri'       => $_SERVER['REQUEST_URI'],
  	       'user_agent'=> $_SERVER['HTTP_USER_AGENT'],
  	       'remote'    => $_SERVER['REMOTE_ADDR'],
             //'duration'  => $_POST['duration'],
	       'time'      => date('Y-m-d H:i:s'),
  	       'mode'      => "PW"];
	$dsn = "mysql:dbname=".WDdb.";host=".$config->dbHost.";port=3306";
	$db = new WireDatabasePDO($dsn, $config->dbUser, $config->dbPass);
	$res = $db->query($sql=sprintf("INSERT INTO `wd_visits` (%s) VALUES ('%s')",
				       join(',',array_keys($args)),
				       join("','",array_values($args))));
	$res->rowCount()." affected <br>";
    }
}
PW_track_visitor();
