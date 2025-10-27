<?php namespace ProcessWire; ?>

<div class='uk-panel uk-panel-box uk-panel-box-secondary uk-margin-top uk-margin-bottom'>
  <h3 class='uk-panel-title'><i class='uk-icon-link'></i>__('Quick Links')</h3>
  <ul class='uk-nav uk-nav-side'>
    <li><a href='<?=$GLOBALS['SPOT_search']?>?h_aw_rarity=R,1,2&amp;sort=-h_aw_rarity'><?=__('Most rare scarves')?></a></li>
    <li><a href='<?=$GLOBALS['SPOT_search']?>?h_aw_popularity=A,B&amp;sort=-h_aw_popularity'><?=__('Most popular scarves')?></a></li>
    <li><a href='<?=$GLOBALS['SPOT_search']?>?h_aw_year=<?php printf("%s-%s",date("Y")-10,date("Y")); ?>'><?=__('Artworks from the last decade')?></a></li>
    <li><a href='<?=$GLOBALS['SPOT_search']?>?h_aw_year=1900-1950&amp;sort=H_aw_year'><?=__('Early artworks')?></a></li>
    <li><a href='<?=$GLOBALS['SPOT_search']?>all/'><?=__('All artworks')?> (A-Z)</a></li>
  </ul>
</div>

