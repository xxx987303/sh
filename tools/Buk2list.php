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
 *   $day0, $carreTitle, $ln, $fn, $year, $cmt, $price, $size, $www, $seller_id
 */

define('CLI_MODE', true);
require_once "/Users/yb/Sites/sh/index.php";
require_once __dir__.'/../site/templates/_debug.php';

$K_list = __dir__ . "/Buk.txt";

$p_name = "Bukowskis";
if (!($seller_id = ($p=pages()->get("template=h_seller, title~=$p_name"))->id)) die("Can't find $p_name\n");
//die("$seller_id\n");

echo "# day0, carreTitle, lastname, firstname, year, cmt, price, size, www, base, seller_id\n";
foreach(explode("\n",file_get_contents($K_list)) as $line) {
    //echo "----'$line'\n";
    
    if (preg_match("/^[0-9]*$/", $line)) {
        $base = $day0 = $carreTitle = $ln = $fn = $year = $cmt = $price = $size = $www = "";
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
        echo rtrim("$day0,$carreTitle,$ln,$fn,$year,$cmt,$price,$size,$www,$base,$seller_id",',')."\n";
    }
}
