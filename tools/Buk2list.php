<?php namespace ProcessWire;
/*
 * The script assumes that the input file contains only relevant data,
 * extracted from the HTML source (Firefox "Save as file"), namely:
 *
 *  1567319
 *  Hermès, scarf, "Les Courses"
 *  https://www.bukowskis.com/en/auctions/E1084/lots/1567319-hermes-scarf-les-courses
 *  Hammer price 1 800 SEK
 *  Your maximum bid 2050 SEK
 *  Estimate 2 500 SEK
 *  2024-05-26
 *
 * The output is 1 line per scarf:
 *   $day0, $carreTitle, $ln, $fn, $year, $cmt, $price, $size, $www
 */

$K_list = __dir__ . "/Buk.txt";

echo "# day0, carreTitle, lastname, firstname, year, cmt, price, size, www\n";
foreach(explode("\n",file_get_contents($K_list)) as $line) {
    //echo "----'$line'\n";
    
    if (preg_match("/^[0-9]*$/", $line)) {
        $day0 = $carreTitle = $ln = $fn = $year = $cmt = $price = $size = $www = "";
        $serialNumber = (int)$line;
        //echo " serialNumber = $serialNumber\n";
    }elseif(preg_match("/^Herm/i", $line)) {
        $carreTitle = str_replace('"','',trim(explode(',',$line,3)[2]));
        //echo " carreTitle = $carreTitle\n";
    }elseif(str_starts_with($line, 'Artist')) {
        list($ln,$fn) = explode(',',($n=explode(' ',$line)[1]));
    }elseif(str_starts_with($line, 'http')) {
        $www = trim($line);
        //echo " www = $www\n";
    }elseif(str_starts_with($line, 'Hammer')) {
        $price = (int)preg_replace("/[a-zA-Z ]/", '', $line);
        //echo " price = $price\n";
    }elseif(str_starts_with($line, 'Estimate')) {
        $estimate = (int)preg_replace("/[a-zA-Z ]/", '', $line);
        //echo " estimate = $estimate\n";
    }elseif(preg_match("/^2[0-9]*-[0-9]*-[0-9]*/", $line)) {
        $day0 = $line;
        echo "$day0,$carreTitle,$ln,$fn,$year,$cmt,$price,$size,$www\n";
    }
}
