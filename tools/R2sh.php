<?php namespace ProcessWire;
/*
 * Read "Rita's list", check and clean it.
 * Repack (<title> . <lastname>,<firstname> . <year> . <comment>) 
 * into   (<title> , <lastname>,<firstname> , <year> , <comment>)
 */

define("SHOW_TIDY_R_LIST", false);
define("SHOW_AUTHORS", true);

$R_list = __dir__ . "/R_list.txt";

$length1 = $length2 = $length3 = 1;
foreach(explode("\n",file_get_contents($R_list)) as $line) {
    if (($delim=str_starts_with($line, '=======')) || ($slogan=str_starts_with($line, '#')) || empty(trim($line))) {
        if ($slogan) echo "$line\n";
        //if ($delim)  break;
        continue;
    }
    if (substr_count($line, '.') < 2) die("Not enought dots in line:\n$line\nFix $R_list\n");
    
    $l = explode('.',str_replace('"','',$line));
    for ($k=0; $k<5; $k++) { if (empty($l[$k])) $l[$k]=''; $l[$k]=trim($l[$k]); }

    $count = 0;
    $fn = $ln = '';
    foreach(explode('&',$l[1]) as $a){
        $a = trim($a);
        if (!strpos($a,',')) $a .= ',';
        if ($multyAuthor = !empty($ln)) {
            if (++$count > 1) die("$l[1]\ntoo many authors, improve the script...\n");
            list($ln2,$fn2) = explode(',',$a);
            $name = sprintf("%s&%s,%s&%s", trim($ln), trim($ln2), trim($fn), trim($fn2));
        } else {
            list($ln,$fn) = explode(',',$a);
            $name = sprintf("%s,%s", trim($ln), trim($fn));
        }
    }
    if ($name === ',')  continue;

    $lines[$l[0].$name.$l[2].$l[3]] = [ $l[0], $name, $l[2], $l[3] ];
    if (empty($names[$name])) $names[$name] = 0;
    $names[$name]++;
    
    if (($s=strlen($l[0])) > $length1) $length1 = $s+2;
    if (($s=strlen($name)) > $length2) $length2 = $s+1;
    if (($s=strlen($l[2])) > $length3) $length3 = $s+1;
}

ksort($lines);
$n = 0;
foreach($lines as $key=>$l) {
    if (SHOW_TIDY_R_LIST) {
        printf("%3s-%-{$length1}s %-{$length2}s %-{$length3}s %s\n",
               ++$n,
               $l[0].'.', //'"'.$l[0].'".',
               $l[1].'.',
               $l[2].'.',
               $l[3]);
    } else {
        // Show "import friendly" line
        printf("%s,%s,%s,%s\n",
               $l[0], $l[1], $l[2], $l[3]);
    }
}

if (SHOW_AUTHORS) {
    //arsort($names);
    ksort($names);
    print_r($names);
}
