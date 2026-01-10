<?php namespace ProcessWire;
define ("CLI_MODE",false);
require_once __dir__ . '/debug.php';
require_once __dir__ . '/../site/templates/_func.php';
require_once "/Users/yb/Sites/sh/index.php";
echo "
<div class='uk-navbar-right'>
  <ul class='uk-navbar-nav uk-margin-right pw-user-nav'>
    <li>
      <a id='tools-toggle' class='pw-dropdown-toggle' href='/sh/processwire/profile/'>
	<i class='fa fa-user-circle fa-lg pw-nav-icon fa-fw'></i>YB
      </a>
      <ul class='pw-dropdown-menu' data-my='left top' data-at='left bottom' style='display:none;'>
	<li>
	  <a target='_top' class='toggle-light-dark-mode' onclick='return AdminDarkMode.toggleDialog();' data-label-light='Light mode' data-label-dark='Dark mode' data-label-auto='Light/dark mode' data-icon-light='sun-o' data-icon-dark='moon-o' data-icon-auto='adjust' href='#toggle-light-dark-mode'>
	    <i class='fa fa-adjust pw-nav-icon fa-fw'></i>
	    <span>Light/dark</span>
	  </a>
	</li>
	<li><a target='_top' href='/sh/'><i class='fa fa-eye pw-nav-icon fa-fw'></i><span>View site</span></a></li>	  
	<li><a href='/sh/processwire/profile/'><i class='fa fa-user pw-nav-icon fa-fw'></i><span>Profile</span></a></li>
	<li><a target='_top' href='/sh/processwire/login/logout/'><i class='fa fa-power-off pw-nav-icon fa-fw'></i><span>Logout</span></a></li>
      </ul>
    </li>
  </ul>	
</div>
";

echo
x("div class='uk-navbar-right'",
  x("ul class='uk-navbar-nav uk-margin-right pw-user-nav'",
    x("li",
      x("a id='tools-toggle' class='pw-dropdown-toggle' href='/sh/processwire/profile/'",
	x("i class='fa fa-user-circle fa-lg pw-nav-icon fa-fw'").user()->name).
      x("ul class='pw-dropdown-menu' data-my='left top' data-at='left bottom' style='display:none;'",
	x("li",x("a target='_top' href='/sh/'",      x("i class='fa fa-eye pw-nav-icon fa-fw'"). x("span","View site"))).
	x("li",x("a href='/sh/processwire/profile/'",x("i class='fa fa-user pw-nav-icon fa-fw'").x("span","Profile"))).
	x("li",x("a target='_top' href='/sh/processwire/login/logout/'",x("i class='fa fa-power-off pw-nav-icon fa-fw'").
									x("span","Logout")))))));


