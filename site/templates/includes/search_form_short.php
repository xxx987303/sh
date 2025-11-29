<?php namespace ProcessWire;
$action = $GLOBALS['SPOT_search'];
echo x("form class='pw-search-form' data-action='$action' action='$action' method='get'",
       x("label for='search' class='visually-hidden'",_x('Search:', 'label')).
       x("input type='text' name='keywords' id='search' placeholder='"._x('Search', 'placeholder')."'").
       x("input type='hidden' name='tags' value='$GLOBALS[SPOT_id]'").
       x("button type='submit' name='submit' class='visually-hidden'", _x('Search', 'button')));
