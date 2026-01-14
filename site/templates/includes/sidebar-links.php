<?php namespace ProcessWire;
switch ($GLOBALS['SPOT_id']) {
    case  'h':
?>
<div class='uk-panel uk-panel-box uk-panel-box-secondary uk-margin-top uk-margin-bottom'>
    <h3 class='uk-panel-title'><i class='uk-icon-link'></i><?php echo __('Quick Links'); ?></h3>
    <ul class='uk-nav uk-nav-side'>
<?php if   (pages()->get(restrictedSelector("h_aw_options=EL"))->id) { ?>
	<li><a href='<?=$GLOBALS['SPOT_search']?>?h_aw_options=EL&sort=-h_aw_popularity'>
	    <?php echo __('Édition limitée'); ?>
	</a></li>
<?php } if (pages()->get(restrictedSelector("h_aw_options=ES"))->id) { ?>
	    <li><a href='<?=$GLOBALS['SPOT_search']?>?h_aw_options=ES&sort=-h_aw_popularity'>
	    <?php echo __('Édition spéciale'); ?>
	</a></li>
<?php } if (pages()->get(restrictedSelector("h_aw_options=Remix"))->id) { ?>
	    <li><a href='<?=$GLOBALS['SPOT_search']?>?h_aw_options=Remix&sort=-h_aw_popularity'>
	    <?php echo __('Édition Remix'); ?>
	</a></li>
<?php } ?>
	<li><a href='<?=$GLOBALS['SPOT_search']?>?h_aw_rarity=3,4&sort=-h_aw_rarity'>	    
	    <?php echo __('Most rare scarves'); ?>
	</a></li>

	<li><a href='<?=$GLOBALS['SPOT_search']?>?h_aw_popularity=3,4&sort=-h_aw_popularity'>
	    <?php echo __('Most popular scarves'); ?>
	</a></li>

	<li><a href='<?=$GLOBALS['SPOT_search']?>?template=h_artwork&h_aw_price=@1&limit=6&sort=h_aw_price'>
	    <?php echo __('Cheapest scarves'); ?>
	</a></li>

	<li><a href='<?=$GLOBALS['SPOT_search']?>?h_aw_price=@1&limit=6&sort=-h_aw_price'>
	    <?php echo __('Most expensive scarves'); ?>
	</a></li>

	<li><a href='<?=$GLOBALS['SPOT_search']?>?h_aw_year=<?php printf("%s-%s&sort=-h_aw_year",date("Y")-10,date("Y"))?>'>
	    <?php echo __('Artworks from the last decade'); ?>
	</a></li>
	
	<li><a href='<?=$GLOBALS['SPOT_search']?>?h_aw_year=1900-1950&sort=h_aw_year'>
	    <?php echo __('Early artworks'); ?>
	</a></li>
    </ul>
</div>
<?php
break;
default:
}
?>
