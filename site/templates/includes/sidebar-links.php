<?php namespace ProcessWire;

echo "<!-- -------------------------------------- ".basename(__file__)."-->\n". 
     "<div class='uk-panel uk-panel-box uk-panel-box-secondary uk-margin-top uk-margin-bottom'>\n".
     x("h3 class='uk-panel-title'",x("i class='uk-icon-link'").__("Quick Links")).
     "<ul class='uk-nav uk-nav-side'>\n";
/**
 * Change "PW search format" to "WWW format"
 */
$ss = function($s) {
    return str_replace(',','&',$s);
};

switch ($GLOBALS['SPOT_id']) {
    case  'h':
	$t = "template=h_artwork,";
	if (pages()->get($s=restrictedSelector("{$t}h_aw_options=EL"))->id) {
	    echo x("li", x("a href='$GLOBALS[SPOT_search]".$ss($s)."&sort=-h_aw_popularity'",
			   __('Édition limitée')));
	}
	if (pages()->get($s=restrictedSelector("{$t}h_aw_options=ES"))->id) {
	    echo x("li",x("a href='$GLOBALS[SPOT_search]".$ss($s)."&sort=-h_aw_popularity'",
			  __('Édition spéciale')));
	}
        if (pages()->get($s=restrictedSelector("{$t}h_aw_options=Remix"))->id) {
            echo x("li",x("a href='$GLOBALS[SPOT_search]".$ss($s)."&sort=-h_aw_popularity'",
			  __('Édition Remix')));
	}
        echo x("li",x("a href='$GLOBALS[SPOT_search]h_aw_rarity=3,4&sort=-h_aw_rarity'",
		      __('Most rare scarves')));
	
        echo x("li",x("a href='$GLOBALS[SPOT_search]h_aw_popularity=3,4&sort=-h_aw_popularity'",
		      __('Most popular scarves')));
	if (User()->hasPermission("see-h-prices")) {
	    echo x("li",x("a href='$GLOBALS[SPOT_search]".$ss(restrictedSelector('h_aw_price_SEK=@1'))."&limit=6&sort=h_aw_price_SEK'",
			  __('Cheapest scarves'))); 
	    echo x("li",x("a href='$GLOBALS[SPOT_search]h_aw_price_SEK=@1&limit=6&sort=-h_aw_price_SEK'",
			  __('Most expensive scarves'))); 
	}
	echo x("li",x("a href='$GLOBALS[SPOT_search]h_aw_year=".sprintf("%s-%s&sort=-h_aw_year",date("Y")-10,date("Y"))."'",
		      __('Artworks from the last decade'))); 
	echo x("li",x("a href='$GLOBALS[SPOT_search]h_aw_year=1900-1950&sort=h_aw_year'",
		      __('Early artworks'))); 
	break;
	
    case 'a':
	$t = "template=a_artwork,";
	echo x("li",x("a href='$GLOBALS[SPOT_search]{$t}a_p_price_final=@1&&limit=6&sort=a_p_price_final'",
		      __('Cheapest paintings'))); 
	echo x("li",x("a href='$GLOBALS[SPOT_search]{$t}a_p_price_final=@1&limit=6&sort=-a_p_price_final'",
		      __('Most expensive paintings'))); 
	break;
	
    case 'd':
	break;
    default:
}
echo "</ul></div>\n".
     "<!-- -------------------------------------- /".basename(__file__)."-->\n";
