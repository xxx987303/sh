<?php namespace ProcessWire;
/*
 * Read "Rita's list", check and clean it.
 * Repack (<title> . <lastname>,<firstname> . <year> . <comment>) 
 * into   (<title> , <lastname>,<firstname> , <year> , <comment>)
 *     list($day0, $carreTitle, $ln, $fn, $year, $cmt, $price, $size, $www)
 *
 */
require_once __dir__ . '/debug.php';
require_once "/Users/yb/Sites/sh/index.php";

$SHOW_TIDY_R_LIST = false;
$SHOW_AUTHORS = false;
if (!$SHOW_TIDY_R_LIST) $SHOW_AUTHORS = false;

$arg = empty($argv[1]) ? "R_list.txt" : $argv[1]; 
$R_list = __dir__ . "/$arg";

$transliterated = [];
$lengthP = $lengthT = $lengthA = $lengthY = 1;
foreach(explode("\n",file_get_contents($R_list)) as $line) {
    if (str_starts_with($line, '#')) {
	echo "$line\n";
	continue;
    }
    if (($s=strpos($line, 'roligare')) || empty(trim($line))) continue;
    if (substr_count($line, '.') < 2) die("Not enought dots in line:\n$line\nFix $R_list\n");

    // Split the line, transliterate if needed
    $l = explode('.', str_replace('"', '', "$line....."));
    for ($k=0; $k<5; $k++) { $l[$k] = empty($l[$k]) ? '' : encodeToUtf8(trim($l[$k])); }
    if ($SHOW_TIDY_R_LIST || $SHOW_AUTHORS) {
	for($k=1; $k<4; $k++) {
	    $clean = $sanitizer->transliterate($l[$k]);
	    if ($l[$k] != $clean) {
		$transliterated[$l[$k]] = $clean;
		$transL = (empty($transL) ? strlen($clean) : max($transL,strlen($clean)));
		$l[$k] = $clean;
	    }
	}
	$l[1] = $sanitizer->truncate($l[1], ['more'=>'…', 'maxLength'=>25]);
    }
    
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
    // ??? if ($authorName === ',')  continue;
    $l[2] = $authorName;
    
    // Truncate the long author name in SHOW_TIDY_R_LIST mode
    if ($SHOW_TIDY_R_LIST) {
	$l[2] = str_replace('®',' ',
			    str_replace(' ',',',
					$sanitizer->truncate(str_replace(',',' ',
									 str_replace(' ','®',($b=$l[2]))),
							     ['more'=>'…', 'maxLength'=>25])));
	foreach(['La Torre','Archives Hermes','Ardmore Artists'] as $a ) if ($l[2] == $a) $l[2] .= ',';
	if ($b !== $l[2]) say::notice("$b -> $l[2]");
    }
    
    // Fix the day0 if it is known
    if (($p = pages()->get("title=$l[1]"))->id) {
	if ($l[0] != ($d0=$p->h_aw_day0)) {
	    // echo "$l[0] --> $d0\n";
	    $l[0] = $d0;
	}
    }
    if (empty($lines)) $lines = [];
    if (false) $lines[$l[0].$l[2].$l[3].$l[4]] = [ $l[0], $l[1], $l[2], $l[3], $l[4], $l[5] ];
    else       $lines[] = [ $l[0], $l[1], $l[2], $l[3], $l[4], $l[5] ];

    if (empty($aNames[$l[2]])) $aNames[$l[2]] = 0;
    $aNames[$l[2]]++;
    if (($s=strlen($l[0])) > $lengthP) $lengthP = $s+2;
    if (($s=strlen($l[1])) > $lengthT) $lengthT = $s+1;
    if (($s=strlen($l[2])) > $lengthA) $lengthA = $s+1;
    if (($s=strlen($l[3])) > $lengthY) $lengthY = $s+2;
}

if (false) ksort($lines);
$n = 0;
if ($SHOW_TIDY_R_LIST) {
    echo "# HERMES scarfar(väskor) är en investering,och mycket roligare än aktier!\n#\n";
    printf("#%-{$lengthP}s %-{$lengthT}s %-{$lengthA}s %-{$lengthY}s %s %s\n#\n",
           //mb_convert_encoding('Прибытие',   'UTF-8', 'auto'),
           $sanitizer->transliterate(encodeToUtf8('Прибытие')),
           $sanitizer->transliterate(mb_convert_encoding('Название','UTF-8', 'auto')),
           $sanitizer->transliterate(mb_convert_encoding('Автор ',  'UTF-8', 'auto')),
           $sanitizer->transliterate(mb_convert_encoding('Сделан ', 'UTF-8', 'auto')),
           $sanitizer->transliterate(mb_convert_encoding('Коммент', 'UTF-8', 'auto')),
           $sanitizer->transliterate(mb_convert_encoding('Цена',    'UTF-8', 'auto')));
           //$sanitizer->transliterate(mb_convert_encoding('Размер',  'UTF-8', 'auto')));
}else{
    echo "# day0, carreTitle, ln, fn, year, cmt, price, size, www\n";
}

foreach($lines as $key=>$l) {
    $ntimes = (preg_match("/\b([234])\b/", $l[4], $match) ? (int)$match[0] : 1);
    $n = 0;
    $wT = (strpos($l[1],'…') === false) ? $lengthT : $lengthT+2;
    $wA = (strpos($l[2],'…') === false) ? $lengthA : $lengthA+2;
    while ($n < $ntimes) {
        echo (rtrim($SHOW_TIDY_R_LIST
	            ? sprintf(" %-{$lengthP}s %-{$wT}s %-{$wA}s %-{$lengthY}s %s %s",
			      $l[0].'.', // P
			      $l[1].'.', // T
			      $l[2].'.', // A
			      $l[3].'.', // Y
			      $l[4].'..',// C
			      $l[5])
		    : sprintf("%s,%s,%s,%s,%s,,%s",
			      $l[0], $l[1], $l[2], $l[3], $l[4], $l[5]),
		    "\t., ")) . "\n";
	if ($ntimes>1) {
	    $l[0] = '';
	    $l[4] = '***';
	}
	$n++;
    }
}

if ($SHOW_TIDY_R_LIST && $SHOW_AUTHORS) {
    ksort($aNames);
    krsort($aNames);
    arsort($aNames,SORT_NUMERIC);
    echo "\n\n";
    tidy_dump($aNames,"Number of artworks by Author" );
}

if ($SHOW_TIDY_R_LIST || $SHOW_AUTHORS) {
    printf("\nTransliteration:\n");
    ksort($transliterated);
    foreach($transliterated as $original=>$trans) printf("   %-{$transL}s <- %-{$transL}s\n", $trans, $original);
}

function encodeToUtf8($string) {
    return mb_convert_encoding($string, "UTF-8", mb_detect_encoding($string, "UTF-8, ISO-8859-1, ISO-8859-15", true));
}

function encodeToIso($string) {
    return mb_convert_encoding($string, "ISO-8859-1", mb_detect_encoding($string, "UTF-8, ISO-8859-1, ISO-8859-15", true));
}
