<?php namespace ProcessWire;

include_once '_func.php';

/**
 */
$wire->addHookAfter("ProcessPageEdit::buildFormContent", function ($event) {
    $form = $event->return;
    $page = $event->object->getPage();                                                                                                                          
    foreach($page->fields as $f){
	$was = $f->collapsed;
	if (fieldViewable($f)) $f->collapsed = Inputfield::collapsedNo;
	else                   $f->collapsed = Inputfield::collapsedHidden;
	if ($was != $f->collapsed) $f->save();
    }
    $event->return = $form;
});

if (SHOW_MESSAGES) {
    /**
     * Add html snippet before '</footer>'
     */
    $wire->addHookAfter('Page::render', function(HookEvent $event) {
	WD_message('entry'); WD_message('Page::render'); 
	$page = $event->object;
	
	// only target admin pages
	// if ($page->template != 'admin') return;
	if ($snippet = WD_getAllMessages()) {
	    $html = str_replace('<footer', "\n<!-- messages -->\n".$snippet."\n<!-- /messages -->\n" . '<footer', $event->return);
	    $event->return = $html;
	}
	WD_message('exit');
    });
}

$wire->addHookAfter('ProcessLogin::buildLoginForm', function(HookEvent $event) {
    // Get the object the event occurred on, if needed
    $ProcessLogin = $event->object;
    
    // An 'after' hook can retrieve and/or modify the return value
    $return = $event->return;
    
    WD_message('addHookAfter(ProcessLogin::buildLoginForm)');
    WD_message($return);
    error_log( 'addHookAfter(ProcessLogin::buildLoginForm)');

    // Populate back return value, if you have modified it
    $event->return = $return;
});

$wire->addHookBefore('ProcessLogin::loginFormProcessed', function(HookEvent $event) {
    // Get the object the event occurred on, if needed
    $ProcessLogin = $event->object;
    
    // Get values of arguments sent to hook (and optionally modify them)
    $form = $event->arguments(0);
    $name = $event->arguments(1);
    
    /* Your code here, perhaps modifying arguments */
    WD_message('addHookBefore(ProcessLogin::ProcessLogin::loginFormProcessed)');
    error_log( 'addHookBefore(ProcessLogin::ProcessLogin::loginFormProcessed)');
    
    // Populate back arguments (if you have modified them)
    $event->arguments(0, $form);
    $event->arguments(1, $name);
});

$wire->addHookAfter('ProcessLogin::loginFormProcessed', function(HookEvent $event) {
    // Get the object the event occurred on, if needed
    $ProcessLogin = $event->object;
    
    // An 'after' hook can retrieve and/or modify the return value
    $return = $event->return;
    
    // Get values of arguments sent to hook (if needed)
    $form = $event->arguments(0);
    $name = $event->arguments(1);
    
    WD_message('addHookAfter(ProcessLogin::loginFormProcessed)');
    error_log( 'addHookAfter(ProcessLogin::loginFormProcessed)');

    // Populate back return value, if you have modified it
    $event->return = $return;
});
