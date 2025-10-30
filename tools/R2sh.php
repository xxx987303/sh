<?php
/*
 * Read "Rita's list", check and clean it.
 * Repack (<title> . <lastname>,<firstname> . <year> . <comment>) 
 * into   (<title> , <lastname>,<firstname> , <year> , <comment>)
 */

define("SHOW_TIDY_LIST", true);
define("SHOW_AUTHORS", true);
       
$length1 = $length2 = $length3 = 1;
foreach(explode("\n",file_get_contents("/Users/yb/tmp/R_list.txt")) as $line){
    if (empty(trim($line))) continue;
    if (str_starts_with($line, '=======')) die();
    if (str_starts_with($line, '#')) {
        continue;
    }
    if (substr_count($line, '.') < 2) die("Not enought dots in line:\n$line\n");

    $l = explode('.',str_replace('"','',$line));
    for ($k=0; $k<5; $k++) { if (empty($l[$k])) $l[$k]=''; $l[$k]=trim($l[$k]); }
    
    $count = 0;
    list($fn,$ln) = ['' , ''];
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

    $lines[trim($l[0])] = [$l[0], $name, $l[2], $l[3]];
    if (empty($names[$name])) $names[$name] = 0;
    $names[$name]++;
    
    if (($s=strlen($l[0])) > $length1) $length1 = $s+3;
    if (($s=strlen($name)) > $length2) $length2 = $s+3;
    if (($s=strlen($l[2])) > $length3) $length3 = $s;
}
ksort($lines);

foreach($lines as $key=>$l) {
    if (SHOW_TIDY_LIST) {
    printf("%-{$length1}s %-{$length2}s %-{$length3}s %s\n",
           '"'.$l[0].'" .',
           $l[1].' .',
           $l[2].' .',
           $l[3]);
    } else {
        printf("%s,%s,%s,%s\n",
               $l[0], $l[1], $l[2], $l[3]);
    }
}

if (SHOW_AUTHORS) {
    //arsort($names);
    ksort($names);
    print_r($names);
}
