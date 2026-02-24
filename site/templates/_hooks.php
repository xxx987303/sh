<?php namespace ProcessWire;

include_once '_func.php';
include_once '_debug.php';

//$caller = basename(debug_backtrace()[0]['file']);
/*
$wire->addHookAfter('ProcessPageEdit::buildForm', function(HookEvent $event) {
    $form = $event->return;
    $page = $event->object->getPage();
    $user = wire()->user;

    $txt = $page->title."\n";
    foreach($page->fields as $f){
	if (!fieldViewable($f, 'restricted')) {
	    $txt .= "remove $f->name\n";
            $form->remove($f);
        }
    }
    file_put_contents("/tmp/log",$txt);
});
 */


/*
$wire->addHookAfter('ProcessPageEdit::buildForm', function(HookEvent $event) {

  //$ProcessPageEdit = $event->object;
    $page = $event->object->getPage();
    $user = wire()->user;
    
    // An 'after' hook can retrieve and/or modify the return value
    $return = $event->return;
//tidy_dump($return);    
    // Get values of arguments sent to hook (if needed)
    $form = $event->arguments(0);
    foreach($page->fields as $f){
	//if (!fieldViewable($f)) $form->remove($f);
	//if (!fieldViewable($f)) $event->arguments(0)->remove($f);
if (!fieldViewable($f)) $form->remove($f);
    }
tidy_dump($form);    
//tidy_dump($event->arguments(0));    
    // Populate back return value, if you have modified it
    $event->return = $return;
//    $event->return = $form;
});

*/
