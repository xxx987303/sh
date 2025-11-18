<?php namespace ProcessWire;
/*
 * The script assumes that the input file contains only relevant data,
 * extracted from the HTML source (Firefox "Save as file"), namely:
 *
 * 2023-08-14      1555 4268
 * https://www.metropol.se/auctions/detail.asp?og={14E976BF-1214-402E-9ED4-2E5498C2B7AC}
 * "Sous le Cédre", Hermès, Paris. Design Dimitri Rybaltchenko
 * SEK 1500
 * SEK 1975        
 * 2023-08-15
 * 414575
 *
 * The output is 1 line per object:
 *   $day0, $carreTitle, $ln, $fn, $year, $cmt, $price, $size, $www
 */

$K_list = __dir__ . "/Metropol.txt";

echo "# day0, carreTitle, lastname, firstname, year, cmt, price, size, www\n";
foreach(explode("\n",file_get_contents($K_list)) as $line) {
    $line = str_replace('"','',$line);
    //echo "----'$line'\n";
    
    if (preg_match("/^\d\d\d\d-\d\d-\d\d[ \d\s]*$/", $line)) {
        $day0 = $carreTitle = $ln = $fn = $year = $cmt = $price = $size = $www = "";
	list($day0,$rest) = explode(' ',$line.' ');
	if (empty($rest)) continue;
	// echo " day0 = $day0\n";
    }elseif(str_starts_with($line, 'SEK')) {
	if (empty($price)) $count = 0;
        $price = (int)preg_replace("/[a-zA-Z ]/", '', $line);
        // echo " price = $price\n";
	if (++$count > 1) {
	    if (preg_match('/2 st.*\+ 1/', $carreTitleUnedited)) {
		$sizes = explode(' - ',$size);
		$sizes[] = '89x89';
		$price = (int)($price/3);
		foreach($sizes as $k=>$size) {
		    list($carreTitle,$cmt) = ($k==0
			? ['Christian Dior', 'Dior']
					    : ["Unknown Hermes$k", 'Hermes']);
		    
		    
		    $cmt = ($k==0) ? "Dior" : "Hermes";
		    echo "$day0,$carreTitle,$ln,$fn,$year,$cmt,$price,$sizes[$k],$www\n";
		}
	    } else {
		echo "$day0,$carreTitle,$ln,$fn,$year,$cmt,$price,$size,$www\n";
	    }
	}
    }elseif(str_starts_with($line, 'Artist')) {
        list($ln,$fn) = explode(',',($n=explode(' ',$line)[1]));
    }elseif(str_starts_with($line, 'http')) {
	$www = $line;
        // echo " www = $www\n";
    }elseif(str_starts_with($line, 'SEK')) {
        $estimate = (int)preg_replace("/[a-zA-Z ]/", '', $line);
        //echo " estimate = $estimate\n";
    }elseif(preg_match("/[a-zA-Z]*/", $line)) {
        $carreTitle = str_replace([',',' cm'], [';',''], $line);
	$carreTitleUnedited = $carreTitle;
	if (preg_match("/(\b\d*x\d*\b).*(\b\d*x\d*\b)?/", $carreTitle, $matches)){
	    $size = $matches[0];
	    $carreTitle = trim(str_replace($size, '', $carreTitle));
	}
	if (preg_match("/herm/i",$carreTitleUnedited)) $cmt = 'Hermes';
	if (preg_match("/dior/i",$carreTitleUnedited)) $cmt = 'Dior';
	$carreTitle = trim(explode(';',str_replace('Scarf ','',$carreTitle))[0]);
    }
}
