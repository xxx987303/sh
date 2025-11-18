<?php namespace ProcessWire;
/*
 * Process the extract from WebPage snapshot and Print import-ready lines,
 * one per objectin the format:
 *   $day0, $carreTitle, $ln, $fn, $year, $cmt, $price, $size, $www
 *
 * https://www.kaplans.se/sv/auktioner/4463/vara/2019718
 * SCARF, HERMÈS, Brazil II, Laurence Bourthoumieux, 100% siden, 66x70 cm,
 * Betalt: 1 730 kr
 * Köpt: 2024-11-09
 *  
 * SCARF,Omega,"The sign of excellence",,,,90x90 cm
 * SCARF,RADO,,,,100% siden,90x90 cm 
 *
 * list($day0, $carreTitle, $ln, $fn, $year, $cmt)
 */

$K_list = __dir__ . "/Kaplans.txt";

$found = false;
foreach(explode("\n",file_get_contents($K_list)) as $line) {
    $line = str_replace('"','',$line);
    //    echo "----$line\n";
    if     (str_starts_with($line, 'https')) {
        $year = '';
        $cmt  = '';
        $www = $line;
    }elseif(str_starts_with($line, 'SCARF') ||
            str_starts_with($line, 'POCHETTE')) {
        $found = true;
        $items = explode(',', $line);
        //$k = 0; foreach ($items as $item) echo "   ".$k++.' '.trim($item)."\n";
        $carreTitle= trim($items[2]);
        $ln   = trim($items[3]);
        $fn   = trim($items[4]);
        $size = (empty($items[6]) ? "" : trim(str_replace('cm','',$items[6])));;
    }elseif(str_starts_with($line, 'year')) {
        list($x,$year) = explode(':',str_replace(' ','',$line));
    }elseif(str_starts_with($line, 'cmt')) {
        list($x,$cmt)  = explode(':',str_replace(' ','',$line));
    }elseif(str_starts_with($line, 'Betalt')) {
        if (!$found) continue;
        list($x,$price) = explode(':',str_replace(' ','',$line));
        $price = (int)$price;
        //echo "$price\n";
    }elseif(str_starts_with($line, 'Köpt')) {
        if (!$found) continue;
        $found = false;
        list($x,$day0) = explode(' ',$line);
        if (!preg_match('/^Herm/i', trim($items[1]))) {
	    $cmt = trim($items[1]);
            if     (empty($carreTitle)) $carreTitle = trim($items[1]);
        }
        echo "$day0,$carreTitle,$ln,$fn,$year,$cmt,$price,$size,$www\n";
    }
}
