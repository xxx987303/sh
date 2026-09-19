<?php namespace ProcessWire;

/***************************************************************************************
 * This is the global init file included before all template files.
 *
 * Use of this is optional and set via $config->prependTemplateFile in /site/config.php.
 * We are using this init file to define shared functions and variables. 
 * See _main.php for the main markup file where everything is output.
 *
 */

include_once __dir__.'/_func.php';   // shared functions
include_once __dir__.'/_debug.php';  // debug functions
if (USE_SIMPLE_SSO) {
    require_once __dir__.'/SSOBridge.php';         WD_message("LOADING SSOBridge.php",        'red');
    require_once __dir__.'/SSO_PW_get_bridge.php'; WD_message("LOADING SSO_PW_get_bridge.php",'red');
}else                                              WD_message("No SimpleSSO",'red');

/***************************************************************************************
 * DEFINE REGIONS
 *
 * These are the regions we've decided template files may choose to populate.
 * and they are ultimately output by the _main.php file. 
 *
 */

$SU = $GLOBALS['SU'] = $user->hasRole('superuser');

region('*', '');
region('browserTitle', page('title'));
region('headline',     page('title'));
region('mainHeader',   '');
region('content',      page('body'));
region('sidebar',      '');
region('sidebarHeader','');
region('afterText','');

if($input->get->logout) {
    $session->logout();
    $session->redirect($pages->get('/sh/')->url);
}

if($input->post->logout && $user->isLoggedin()) {
    if(!$session->CSRF->validate('logout')) { throw new WireException('Invalid CSRF token'); }
    $session->logout();

    // Hard stop + redirect
    $session->redirect($pages->get('/sh/')->url, false);
    exit;
}
