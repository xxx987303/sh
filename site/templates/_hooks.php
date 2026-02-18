<?php namespace ProcessWire;

include_once '_func.php';

$caller = basename(debug_backtrace()[0]['file']);

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
/*    
    if(!$user->hasRole('price-editor')) {
        if($field = $form->get('price')) {
            $form->remove($field);
        }
    }
*/
});
