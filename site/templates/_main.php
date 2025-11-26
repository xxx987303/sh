<?php namespace ProcessWire;
/**
 * Main output template for site using Uikit
 *
 * Copyright 2016 by Ryan Cramer
 *
 * The follow phpdoc doc declarations are just to keep IDE inspections happy,
 * and they are not necessary to keep here.
 */
/** @var Config $config */
/** @var Page $page */

?><!DOCTYPE html>
<html lang="<?=(empty($languages)?'en':_x('en', 'HTML language code'))?>">
    <head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />

	<?=x('title',region('browserTitle').(input()->pageNum() > 1 ? " (Page ".input()->pageNum().")":""))."\n"?>

	<script src='https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js'></script>
	<!--  CdP
	<script src='<?=$config->urls->root?>includeHTML.js'></script>
	<link rel="stylesheet" type='text/css' href='<?=$config->urls->root?>CdP.min.css'/>
	/CdP -->
	<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Lato:400,400i,700' />
	<link rel='stylesheet' type='text/css' href='<?=$config->urls->root?>site/uikit/css/uikit.gradient.min.css' />
	<link rel='stylesheet' type='text/css' href='<?=$config->urls->root?>site/uikit/css/components/slidenav.gradient.min.css' />
	<link rel='stylesheet' type='text/css' href='<?=$config->urls->root?>site/uikit/css/components/tooltip.min.css' />
	<link rel='stylesheet' type='text/css' href='<?=urls('templates')?>styles/CdP.css' />
	<link rel='stylesheet' type='text/css' href='<?=urls('templates')?>styles/objects.css' />

	<?php
          // Are we in the spot?
        getSpotURLs();
        // Set h_spot as the default start page
        if($_SERVER['REQUEST_URI']==config('urls')->root) echo "<meta http-equiv='Refresh' content=\"0; url='".$config->urls->root."h_spot/'\" />\n";
        $home = pages("/");
        $spot_home = pages("/$GLOBALS[SPOT_url]");

        // Are we in the search page?
        $in_search = (strpos($page->url,'search/') !== false);

        if (!empty($languages)){
            // handle output of 'hreflang' link tags for multi-language (needed for SEO)
              foreach($languages as $language) {
                  if(!$page->viewable($language)) continue;
                  // hreflang code for language uses language name from homepage
                  $hreflang = $home->getLanguageValue($language, 'name');
                  // output the <link> tag: note that this assumes your language names are the same as required by hreflang.
                  $url = $page->localHttpUrl($language); // get the http URL for this page in the given language
		  echo "\t<link rel='alternate' hreflang='$hreflang' href='$url' />\n";
              }
        }
	include("./includes/google-analytics.php");
	?>
    </head>

    <body>
	<!--  CdP <div w3-include-html='<?=$config->urls->root?>header1.html'></div> -->
	<div id='masthead' class='uk-margin-large-top uk-margin-bottom'>
	    <div id='primary-headline' class='uk-container uk-container-center uk-margin-bottom'>
		<h2 style='float:left;'>
		    <?php
		    echo "<!-- region(headline)  -->\n";
		    //$home->set('headline', 'Home');
		    foreach($page->parents as $k=>$p) if($k>0)
			echo x("a href=".x("'",$p->url), $p->title).
			     x("i class='uk-icon-angle-right'");
		    echo region('headline');
		    ?>
		</h2>
		<!-- Search and login -->
		<ul class='uk-navbar-nav' style='float:right; list-style-type:"";'>
		    <?php
		    include './includes/search_form_short.php';
		    echo (user()->isGuest()
			? x("li",x("a href='{$config->urls->admin}login/'",x("i class='uk-icon-user'"))) //        .' '.__('Login')))
			: (page()->editable() ? x("li",x("a href='$page->editUrl'",x("i class='uk-icon-edit'").' '.__('Edit'))) : "").
			  x("li",x("a href='{$config->urls->admin}login/logout/'"),  x("i class='uk-icon-user'").' '.__('Logout')));
		    ?>
		</ul>
	    </div>
	    
      <nav id='topnav' class='uk-navbar uk-navbar-attached uk-hidden-small'>
	  <div class='uk-container uk-container-center'>
	      <ul class='uk-navbar-nav float_left'>
		  <!-- Main navigation -->
<?php
//echo "page=$page->title, spot_home=$spot_home->title, rootParent title=".$page->rootParent->title.", page parent=".$page->parent->title."<br>";

$root = false;
$itemCount = 0;
$items = [];
foreach(($GLOBALS['SPOT_url']
       ? $spot_home->and($spot_home->children)
       : $home->and($home->children)) as $item) {
    if (!$item->viewable()) continue;
    if (preg_match(";(spot)/;",$item->url) && !$GLOBALS['SPOT_url'])  continue;
    //if ($page->title == $page->rootParent->title) {
    // Detect the active tab
    if ($root) {
	$class = '';
    } elseif ($page->id == $spot_home->id) {
        $class = 'uk-active';
        $root = true;
    } elseif ($item->id == $page->id) {
        $class = 'uk-active';
        $root = true;
    } elseif ($item->id == $page->parent->id && $page->parent->id != $spot_home->id) {
        $class = 'uk-active';
    } else {
        $class = '';
    }
    $line = x("li class='menu-item $class'", x("a href='$item->url'", x("h3",$item->title)));

    // Impose the menu items order
    ++$itemCount;
    $position = (strpos($item->template, 'artworks') !== false
	? 110
	: (strpos($item->template, 'persons') !== false
	    ? 120
	 : (strpos($item->template, 'brands') !== false
	     ? 130
	     : 100 * $itemCount)));
    $items[$position] = $line;
}
ksort($items);
foreach($items as $k=>$v) echo $v;
if(false && $CdP)echo x("li class='menu-item menu-item-type-post_type menu-item-object-page'",
			x("a href=https://carredeparis.me/",
			  x("h3",'CdP')));
?>
	      </ul>
	      <?php
              if (!empty($languages)){
		  echo "<!-- ---------------------------------------------------------- language switcher  -->\n".
                       "<ul class='languages uk-navbar-nav' role='navigation' style='float:right;'>\n";
		  static $flags = ['default'=>'gb', 'russian'=>'ru', 'swedish'=>'se', 'french'=>'fr'];
		  foreach($languages as $language) {
                      if($page->viewable($language))printf("<li%s><a hreflang='%s' href='%s'>%s</a></li>\n",
							   ($language->id==$user->language->id ? " class='uk-active'" : ""),
							   $home->getLanguageValue($language, 'name'),
							   $page->localUrl($language),
							   x("div uk-tooltip=$language->title",
                                                             x("img src=".urls('templates')."flags/".$flags[$language->name].".png")));
                      //echo "\t<li><a hreflang='$hreflang' href='$url'>".$language->title."</a></li>\n";
		  }
              }
	      ?>
          </ul>
          <!-- ---------------------------------------------------------- language switcher / navigation end -->
	  </div>
      </nav>
	</div><!--/masthead-->
	
	<div id='main'>
            <div class='uk-container uk-container-center'>
		<?=region('mainHeader')?>
		<div class='uk-grid uk-grid-medium'>
		    <!-- ---------------------------------------------------------- content -->
		    <div id='content' class="uk-width-large-<?=($in_search?'3-4':'1-1')?> uk-margin-bottom">
			<?=region('content')?>
		    </div>
		    <?php
		    if ($in_search) {
			echo "<div id='sidebar' class='uk-width-large-1-4'>\n";
			echo region('sidebarHeader');
			// include("./includes/search_form.php");
			echo region('sidebar');
			include("./includes/sidebar-links.php");
			echo "</div>\n";
		    }
		    ?>
		</div>
	    </div>
	</div> <!--/main-->
	
	<footer id='foot' class='uk-margin-large-top'>
	    <div class='uk-container uk-container-center uk-margin-bottom'>
		<div class='uk-text-muted uk-text-center'>
		    <!--
			 <span class='foot-text'>Powered by <a href='https://processwire.com'>ProcessWire Open Source CMS</a></span>
			 <span class='foot-line uk-text-small'>Data and photos from Wikipedia and private sources</span>
		    -->
		</div>
	    </div>
	</footer>
	
	<?php include("./includes/offcanvas.php"); ?>
	
	<!--  CdP  <script>  includeHTML(); </script> -->
	<script src='https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js'></script>
	<script src='<?=$config->urls->root?>site/uikit/js/uikit.min.js'></script>
	<script src='<?=$config->urls->root?>site/uikit/js/components/lightbox.min.js'></script>
	<script src='<?=$config->urls->root?>site/uikit/js/components/tooltip.min.js'></script>
	<script src='<?=urls('templates')?>scripts/objects.js'></script>
	
    </body>
</html>
