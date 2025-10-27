<?php namespace ProcessWire;

if (empty($cols)) $cols = 1; 
if($headline && empty($itemsByType))   echo x("h2",$headline);

if($pagination) echo x("div class='uk-grid uk-margin-bottom pagination'",
		       x("div class='uk-width-medium-2-3'",$pagination).
		       x("div class='uk-width-medium-1-3'",$sortSelect));

if(!empty($items)){
  foreach($items as $k=>$item) $li[] = "<!-- $k ".str_repeat('-',50)." -->\n".x("li",$item);
  echo x("div class='ul-list'",
	 x("ul class='uk-grid uk-grid-width-medium-1-$cols'",
	   join("\n",$li)));
}

if(!empty($itemsByType)){
  foreach($itemsByType as $duty=>$items){
    echo x("h2",$duty);
    $li=[]; foreach($items as $k=>$item) $li[] = "<!-- $k ".str_repeat('-',50)." -->\n".x("li",$item);
    echo x("div class='ul-list'",
	   x("ul class='uk-grid uk-grid-width-medium-1-$cols'",
	     join("\n",$li)));
  }
}

if(empty($items) && empty($itemsByType)){
  echo x("div class='uk-alert uk-alert-danger'",
	 x("i class='uk-icon-warning'")." No objects found");
}elseif($selector){
  echo x("p class='uk-alert uk-margin-bottom'",
	 "The selector used to find the pages shown above is:<br />".
	 x("span class='pw-selector'",$selector));
}
