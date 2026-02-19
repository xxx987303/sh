<?php namespace ProcessWire;

echo "\n<!-- ----------------------------------------------- offcanvas.php --!>\n";
$spot = empty($GLOBALS['SPOT_id']) ? $GLOBALS['site_home'] : $GLOBALS['spot_home'];

echo x("div id='offcanvas' class='uk-offcanvas'",
       x("div class='uk-offcanvas-bar'",
	 x("ul class='uk-nav uk-nav-offcanvas uk-nav-parent-icon uk-contrast uk-margin-bottom' data-uk-nav",
	   $spot->and($spot->children())->each("<li><a href='{url}'>{title}</a></li>\n")).
	 x("p","&nbsp;"))).
     x("a id='offcanvas-toggle' href='#offcanvas' class='uk-visible-small uk-navbar-toggle' data-uk-offcanvas");

if (empty(languages())) {
    echo "<span style='color:red;font-style: italic;'>????? No accessible languages</span>";
}else{
    echo "<div id='offcanvas' class='uk-offcanvas'>\n".
         "<ul class='languages uk-navbar-nav' role='navigation' style='float:right;'>\n";
    static $flags = ['default'=>'gb', 'russian'=>'ru', 'swedish'=>'se', 'french'=>'fr'];
    foreach(languages() as $language) {
        if( $page->viewable($language))
            printf("<li%s><a hreflang='%s' href='%s'>%s</a></li>\n",
                   ($language->id==$user->language->id ? " class='uk-active'" : ""),
                   $GLOBALS['site_home']->getLanguageValue($language, 'name'),
                   $page->localUrl($language).$GLOBALS['SITE_input'],
                   x("div uk-tooltip=$language->title",
                     x("img height=25 width=30 src=".urls('templates')."flags/".$flags[$language->name].".svg")));
        //echo "\t<li><a hreflang='$hreflang' href='$url'>".$language->title."</a></li>\n";
    }
    echo "</ul>\n</div>\n";
}
echo "\n<!-- ----------------------------------------------- /offcanvas.php --!>\n";
  
