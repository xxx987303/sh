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
