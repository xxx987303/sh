<?php namespace ProcessWire;
/*
 * Read "Rita's list", check and clean it.
 * Repack (<title> . <lastname>,<firstname> . <year> . <comment>) 
 * into   (<title> , <lastname>,<firstname> , <year> , <comment>)
 *     list($day0, $carreTitle, $ln, $fn, $year, $cmt, $price, $size, $www)
 *
 */

define("SHOW_TIDY_R_LIST", false);
define("SHOW_AUTHORS", false);

$arg = empty($argv[1]) ? "R_list.txt" : $argv[1]; 
$R_list = __dir__ . "/$arg";

$lengthP = $lengthT = $lengthA = $lengthY = 1;
foreach(explode("\n",file_get_contents($R_list)) as $line) {
    if (($cmt=str_starts_with($line, '#')) || ($s=strpos($line, 'roligare')) || empty(trim($line))) continue;
    if (substr_count($line, '.') < 2) die("Not enought dots in line:\n$line\nFix $R_list\n");
    
    $l = explode('.',str_replace('"','',"$line....."));
    for ($k=0; $k<5; $k++) { $l[$k] = empty($l[$k]) ? '' : encodeToUtf8(trim($l[$k])); }

    $count = 0;
    $fn = $ln = '';
    foreach(explode('&',$l[2]) as $a){
        $a = trim($a);
        if (!strpos($a,',')) $a .= ',';
        if ($multyAuthor = !empty($ln)) {
            if (++$count > 1) die("$l[2]\ntoo many authors, improve the script...\n");
            list($ln2,$fn2) = explode(',',$a);
            $authorName = sprintf("%s&%s,%s&%s", trim($ln), trim($ln2), trim($fn), trim($fn2));
        } else {
            list($ln,$fn) = explode(',',$a);
            $authorName = sprintf("%s,%s", trim($ln), trim($fn));
        }
    }
    if ($authorName === ',')  continue;

    $lines[$l[0].$authorName.$l[2].$l[3].$l[4]] = [ $l[0], $l[1], $authorName, $l[3], $l[4] ];
    if (empty($authorNames[$authorName])) $authorNames[$authorName] = 0;
    $authorNames[$authorName]++;
    
    if (($s=strlen($l[0])) > $lengthP) $lengthP = $s+2;
    if (($s=strlen($l[1])) > $lengthT) $lengthT = $s+1;
    if (($s=strlen($l[3])) > $lengthY) $lengthY = $s+2;
    if (($s=strlen($authorName)) > $lengthA) $lengthA = $s+1;
}

ksort($lines);
$n = 0;
if (SHOW_TIDY_R_LIST) {
    echo "# HERMES scarfar(väskor) är en investering,och mycket roligare än aktier!\n#\n";
    printf("#     %-{$lengthP}s %-{$lengthT}s %-{$lengthA}s %-{$lengthY}s %s\n",
           //mb_convert_encoding('Прибытие',   'UTF-8', 'auto'),
           encodeToUtf8('Прибытие'),
           mb_convert_encoding('Название','UTF-8', 'auto'),
           mb_convert_encoding('Автор ',  'UTF-8', 'auto'),
           mb_convert_encoding('Сделан ', 'UTF-8', 'auto'),
           mb_convert_encoding('Коммент', 'UTF-8', 'auto'));
}else{
    echo "# day0, carreTitle, ln, fn, year, cmt, price, size, www\n";
}

foreach($lines as $key=>$l) {
    if (SHOW_TIDY_R_LIST) {
        printf("%3s - %-{$lengthP}s %-{$lengthT}s %-{$lengthA}s %-{$lengthY}s %s\n",
               ++$n,
               $l[0].'.', // P
               $l[1].'.', // T
               $l[2].'.', // A
               $l[3].'.', // Y
               $l[4]);    // C
    } else {
        // Show "import friendly" line
        printf("%s,%s,%s,%s,%s\n",
               $l[0], $l[1], $l[2], $l[3], $l[4]);
    }
}

if (SHOW_AUTHORS) {
    //arsort($authorNames);
    ksort($authorNames);
    print_r($authorNames);
}

function encodeToUtf8($string) {
    return mb_convert_encoding($string, "UTF-8", mb_detect_encoding($string, "UTF-8, ISO-8859-1, ISO-8859-15", true));
}

function encodeToIso($string) {
    return mb_convert_encoding($string, "ISO-8859-1", mb_detect_encoding($string, "UTF-8, ISO-8859-1, ISO-8859-15", true));
}
