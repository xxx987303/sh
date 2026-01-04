<?php namespace ProcessWire;

require_once __dir__ . '/../../../Sites/sh/index.php';
require_once __dir__ . '/debug.php';

$arg = empty($argv[1]) ? "All_for_import.tmp" : $argv[1]; 
$R_list = __dir__ . "/$arg";

$length = 999;
$variations = [];
foreach(explode("\n",file_get_contents($R_list)) as $line) {
    say::notice("--- $line");
    if (strpos($line, '#') === 0) continue;
    $l = explode(',', "$line,,,,,,,,,,,,");
    if (empty($lines[$l[1]])) {
	$lines[$l[1]] = $l;
    }elseif (strpos($line,'***')){
	$variations[] = rtrim("$l[0],$l[1],$l[2],$l[3],$l[4],$l[5],$l[6],$l[7],$l[8],$l[9],$l[10],$l[11]",',');
    }else{
	foreach($l as $k=>$new) {
	    if ((($was=(string)@$lines[$l[1]][$k]) == $new) || empty($new) || $new=='Hermes') continue;
	    if (empty($was)) $lines[$l[1]][$k] = $new;
	    else switch ($k){
		case  0: if (strlen($new) > strlen($was)) $lines[$l[1]][$k] = $new; break;
		case  1:
		case  2:
		case  3:
		case  4:
		case  5: if ($was == 'Hermes')  $lines[$l[1]][$k] = $new; break;
		case  6:
		case  7:
		case  8:
		case  9:
		case 10:
		case 11:
		case 12:
		    echo "$k: $was ?-> $new\n";
		    break;
		case 13: case 14: case 15: case 16: case 17: case 18: case 19: case 20: default:
	    }
	    if (($n=(string)@$lines[$l[1]][$k]) != $was) say::notice(" $was ==> $n");
	}
    }
}

ksort($lines);
foreach($lines as $title=>$l) {
    echo rtrim("$l[0],$l[1],$l[2],$l[3],$l[4],$l[5],$l[6],$l[7],$l[8],$l[9],$l[10],$l[11]",',') . "\n";
}
foreach ($variations as $line) echo "$line\n";
