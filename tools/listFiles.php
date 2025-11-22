<?php namespace ProcessWire;

require_once '/Users/yb/Sites/sh/index.php';
require_once '/Users/yb/github/sh.git/tools/debug.php';

$dir = "/Users/yb/Sites/sh/site/assets/files/";
$dir = "/Users/yb/github/sh.git/site/assets/files/";

// Open a known directory, and proceed to read its contents
echo "$dir\n";
if (is_dir($dir)) {
    $Plist = array();;
    $emptyPages = array();
    $emptyDirs = array();
    if ($dh0 = opendir($dir)) {
        while (($file = readdir($dh0)) !== false) {
            if (filetype($dir . $file) != 'dir') continue;
	    if (str_starts_with($file, '.'))     continue;
            if (($p=pages()->get($file))->id) {
		$tp = "".$p->template->name;
		$pn = "".$p->title;
		echo "$tp.$pn\n";
		
		if (empty($Plist[$tp][$pn])) $Plist[$tp][$pn] = 0;
		$Plist[$tp][$pn]++;
		ksort($Plist[$tp]);
	    } else {
		echo "?????? $file\n";
		$emptyPages[] = "$tp.$pn";
		$emptyDirs[] = "$dir$file";
	    }
        }
        closedir($dh0);
    }
    sort($emptyPages);
    ksort($Plist);
    echo tidy_dump($Plist);
    echo tidy_dump($emptyPages);
    echo tidy_dump($emptyDirs);
//    foreach ($emptyDirs as $d) { echo "ls -l $d\n"; }
}
