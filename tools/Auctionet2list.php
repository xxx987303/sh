<?php namespace ProcessWire;
/*
 * The script assumes that the input file contains only relevant data,
 * extracted from the HTML source (Firefox "Save as file"),namely:
 *
 *   [0] => https://auctionetcom/en/my/won/3320082-hermes-scarf-rencontre-oceane-siden-designad-av-annie-faivre-2001-motiv-med-fiskar-och-havsanemone-i-rott-mot-ockragul-botten-etikettmarkt-made-in-france-ask-medfoljer
 *   [1] => 3320082
 *   [2] => Rencontre Océane
 *   [3] => Annie Faivre
 *   [4] => 2001
 *   [5] => 2024-02-16
 *   [6] => 1600 SEK
 *
 * The output is 1 line per scarf:
 *   $day0,$carreTitle,$ln,$fn,$year,$cmt,$price,$size,$www
 */

define('CLI_MODE', true);
require_once "/Users/yb/Sites/sh/index.php";
require_once __dir__.'/../site/templates/_debug.php';

$K_list = __dir__ . "/Auctionet.txt";
$p_name = "Stockholms Auktionsverk";
if (!($seller_id = ($p=pages()->get("template=h_seller, title~=$p_name"))->id)) die("Can't find $p_name\n");

echo "# day0,carreTitle,lastname,firstname,year,cmt,price,size,www,base,seller\n";
foreach(explode("\n",file_get_contents($K_list)) as $line) {
    if (empty($line=trim($line))) continue;
    $a = explode(',',$line);
    //print_r($a);
    $day0=$carreTitle=$ln=$fn=$year=$cmt=$price=$size=$www=$base = '';
    if (!empty($a[3])) list($fn,$ln) = explode(' ',$a[3],2);
    $www        = $a[0];
    $carreTitle = $a[2];
    $year       = $a[4];
    $day0       = $a[5];
    $price      = (int)$a[6];
    echo "$day0,$carreTitle,$ln,$fn,$year,$cmt,$price,$size,$www,$base,$seller_id\n";
}
