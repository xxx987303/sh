<?php namespace ProcessWire;
/**
 * Set field values in CLI mode
 * All fields: See file "0_fields.txt"
 */

define('setKeyValueDEBUG', false);

/**
 *
 */
function setKeyValue(object $o, $keyArg, $value, bool $saveToDB=false) {
    //b_debug::_dbg(sprintf("setKeyValue(o=%s, key=%s, value=%s)", $o->name, $keyArg, $value));
    
    /**
     *
     */
    $createOptionPage = function(Object $o, Field $key, Page $donorPage, String $value, $saveToDB=false) { 
	global $dummyID; if (empty($dummyID)) $dummyID = 10000;

	if ($o->$key && (pageName($now=$o->$key->title) == pageName($value))) {
            say::ok($o, $key, ($got=$value));
	    return $o->key;
	} else {
            if (($page = pages()->get("name=".pageName($value)))->id) {
		say::ok($page, $page->name, ($got=$value));
	    }else{
		$page = new Page();
		$page->name     = pageName($value);
		$page->title    = $value;
		b_debug::_dbg("Creating Options ".$page->title);
		$page->template = $donorPage->template;
		$page->parent   = $donorPage->parent;

		if ($saveToDB == true)     $page->save();
		elseif(!$page->id) $page->id = ++$dummyID;
		tidy_dump($page, "Created page");
		
		if ($o->$key instanceof PageArray) {
		    if (setKeyValueDEBUG) say::notice('instanceof PageArray');
		    $o->$key->add($page);
		} else {
		    $o->$key = $page;
		    if (setKeyValueDEBUG) say::warning('$o->$key is NOT PageArray');
		}
		if ($saveToDB == true){
		    $o->save();
		    $o->$key->save();
		}
		// function load($p, $key, $data = '', $now = '', $reply = '', $p_key0 = '', $id = '>> Load') {
		say::load($o, $key, $value, $now, $o->key);
	    }
	    return $page;
	}
    };

    /**
     */
    $getKey = function ($keyArg) {
        $key     = (is_object($keyArg) ? $keyArg  : (is_object($f=fields()->get($keyArg)) ? $f : null));
        $keyName = (is_object($key)    ? $key->name : null);
	if (empty($key) || empty($keyName)) {
	    say::error("Can't get the key for '$keyArg'...");
	    return null;
	}
	return [$key,$keyName];
    };
    
  /**
   */
    $setKeyValue_simple = function (object $o, string $key, $value, $saveToDB) {
        global $dejaVu_key;

        if ($value == '<unset>') {
            $value = 0;
        }
	
        static $roles = ['viewRoles','editRoles','addRoles','createRoles'];
        if (($tRoles = ($o instanceof Template) && in_array($key, $roles))) {
	    if (setKeyValueDEBUG) say::notice('-- instanceof Template');
            if (!$o->$key) {
                $o->$key = [];
            }
            if (!$o->useRoles) {
                $o->useRoles = 1;
            }
            if (!$o->hasRole($g=roles()->get('guest'))) {
                $o->setRoles([$g->id]);
            }
            if($saveToDB == true) $o->save();
        }
        $id = (is_object($value) ? $value->id : null);
        $got = $now = ($tRoles
           ? (in_array($id, $o->$key) ? $value->name : null)
           : $o->$key);
        if ($value === 'present') {
            b_debug::_dbg("Replace '$value' ==> ".($x="2037-01-01"));
            $value = $x;
        }
        $valid_date = (b_time::is_valid($value)==1 || b_time::$is_valid==2);
        if ($got == $value || ($valid_date && b_time::is_equil($got, $value))) {
            if (!@$dejaVu_key[$o->name.$key]++) {
                say::ok($o, $key, (is_object($value)?$value->name:$value));
            }
        } else {
            if ($tRoles) {
                $o->setRoles(array_merge($o->$key, [$id]), str_replace('Roles', '', $key));
                $got = (in_array($id, $o->$key) ? $value->name : null);
            } else {
                $o->$key = $value;
                $got = $o->$key;
            }
            if ($saveToDB == true) $o->save();
            say::add($o, $key, $value, $now, $got, $o->$key);
        }
        return [$now,$got];
    };

  /**
   */
    $setTags = function (object $o, $key, $value, $saveToDB) {
        $got = $now = $o->getTags(true);
        if ($o->hasTag($value)) {
            say::ok($o, $key, $value);
        } else {
            $o->addTag($value);
            if ($saveToDB == true) $o->save();
            say::add($o, $key, $value, $now, $got=$o->getTags(true), $o->$key);
        }
        return [$now,$got];
    };

    // Prolog.... =======================================================================================================
    if (is_null($keys = $getKey($keyArg))) return;
    list($key,$keyName) = $keys;
    
    // *   name type derefAsPage inputfield inputfieldClass
    $summary = ['key' => $keyName];
    $summary['value'] = $value;
    $summary['type']             = ($type = (string) $key->type);
    $summary['inputfield']       = ($inputfield      = (string) $key->inputfield);
    $summary['inputfieldClass']  = ($inputfieldClass = (string) $key->inputfieldClass);
    $summary['derefAsPage'] = (!empty($derefAsPage=$key->derefAsPage) && $derefAsPage !== 0) ? $derefAsPage : "";
    
    // b_debug::_dbg(joinX($summary));
	
    if (($v1=($o instanceof NullPage)) || ($v2=($value instanceof NullPage))) {
	say::warning("Skip... " . ($v1
	    ? "Trying to update a NullPage"
	    : "Trying to assign $keyName=NullPage"));
	return;
    } elseif (is_object($value)  && $value->id == 0) { 
	say::warning("Trying to assign empty object to $keyArg, skip");
	return;
    } elseif (empty($keyArg)) {
	abortIt("??? Empty keyArg");

	// Fields, Templates ================================================================================================
    } elseif ($o instanceof Field || $o instanceof Template) {
    	if (setKeyValueDEBUG) say::notice('-- instanceof Field|Template');
        if ($keyName == 'tags') {
            list($now,$got) = $setTags($o, $keyName, $value, $saveToDB);
        } else {
            list($now,$got) = $setKeyValue_simple($o, $key, $value, $saveToDB);
        }
	
	// Role =========================================================================================================
    } elseif ($o instanceof Role) {
	if (setKeyValueDEBUG) say::notice('-- instanceof Role');
        if ($key == 'permission') {
            if (!$value instanceof Permission) {
                abortIt(_formatData($value)." is not instanceof Permission");
            }
            if ($o->hasPermission($value)) {
                say::ok($o, $key, $value->name);
            } else {
                $result = $o->addPermission($value);
                if ($saveToDB == true) $o->save();
                say::add($o, $key, $value->name, $now='', $got=($o->hasPermission($value)?$value->name:''));
                if (!$result) {
                    say::warning (sprintf("%s(%s,$key,$value->name) can't be set", __function__, $o->name));
                }
            }
        } else {
            abortIt("Unexpected argument key=\"".var_export($key, true)."\"");
        }

	// User =========================================================================================================
    } elseif ($o instanceof User) {
	if (setKeyValueDEBUG) say::notice('-- instanceof User');
        if ($key == 'role') {
            if ($o->hasRole($value)) {
                say::ok($o, $key, ($now=$got=$value));
            } else {
                $result = $o->addRole($value);
                if ($saveToDB == true) {
                    $of=$o->of();
                    $o->of(false);
                    $o->save();
                    $o->of($of);
                }
                say::add($o, $key, $value, $now='', $got=($o->hasRole($value)?$value:''));
                if (!$result) {
                    say::warning (sprintf("%s(%s,$key,$value) can't be set", __function__, $o->name));
                }
            }
        } else {
            list($now,$got) = $setKeyValue_simple($o, $key, $value, $saveToDB);
        }

    } // Page =========================================================================================================
    elseif ($o instanceof Page) {
	if (setKeyValueDEBUG) say::notice('-- instanceof Page');
        $o->of(false);

	if (in_array($type, ['FieldtypeText',
			     'FieldtypeTextLanguage',
			     'FieldtypePageTitleLanguage'])) {
	    if (setKeyValueDEBUG) say::notice("-- setKeyValue_simple($keyArg)");
            list($now,$got) = $setKeyValue_simple($o, $key, $value, $saveToDB);
	    
	} // FieldtypePage && $key->inputfield == 'InputfieldSelect'" =====================================================   
	elseif ($type == 'FieldtypePage' && $key->inputfield == 'InputfieldAsmSelect') {
	    if (setKeyValueDEBUG) say::notice("-- type == FieldtypePage && key->inputfield == 'InputfieldAsmSelect'");			
	    if ($derefAsPage == 1) { // -----------------------------------------------------------------------------------
		if ($o->$key && (($got=$o->$key->id) == ($now=$value->id))) {
		    say::ok($o, $keyName, (string)$value->title);
		} else {
		    $o->$key = $value;
		    if ($saveToDB == true) $o->$key->save();
		    say::load($o, $o->$key, $value, ($now=""), ($got=(string)$o->$key->title));
		}
	    } elseif ($o->$key instanceof PageArray) { // -----------------------------------------------------------------
		foreach ($o->$key as $p) {
		    if ($ok1=($p->id == $value->id)) {
			say::ok($o, $keyName, (string)$value->title);
		    }
		}
		if (empty($ok1)) {
		    $o->$key->add($value);
		    if ($saveToDB == true) $o->$key->save();
		    say::load($o, $o->$key, $value, ($now=""), ($got=(string)$value->title));
		}
	    } else {
		say::notice('.Not yet ready... '.joinX($summary));
	    }

	} // type==FieldtypePage && key->inputfield==InputfieldSelect =====================================================
	elseif ($type == 'FieldtypePage' && $key->inputfield == 'InputfieldSelect'){
	    if (setKeyValueDEBUG) say::notice("-- type == FieldtypePage && key->inputfield == 'InputfieldSelect'");			
	    // Check the current value
	    $now = (string)(is_object($k=$o->$key) ? $k->title : "");
	    if ($now == ($got=$value)) {
                say::ok($o, $keyName, $value);
	    } else {
	        $o->$key = $createOptionPage($o,
					     $key,
					     pages()->get($keyName=='h_aw_size'
						 ? "template=h_size"
						 : "template={$key->template_id}"),
					     $value,
					     $saveToDB);
                if ($saveToDB == true) {
		    $o->save();
		    $o->$key->save();
		}
                say::load($o, $o->$key, $value, $now, ($got=(string)$o->$key->title));
	    }

	} // Options ========================================================================================================
	/**
	 * Sets only 1 option, the code below fails for several options...
	 */
	elseif ($type == 'FieldtypeOptions' && $inputfieldClass == 'InputfieldCheckboxes') {
	    if (setKeyValueDEBUG) say::notice('-- $type == FieldtypeOptions && $inputfieldClass == InputfieldCheckboxes');

	    if (is_object($value)) {
		abortIt("unexpected object "._formatData($value));
	    } elseif ($o->$key->title == $value) {
                say::ok($o, $key, $value);
	    } else {
		$f=fields()->get($key);
		// Check that the value is legal
		foreach(wire('modules')->get('FieldtypeOptions')->getOptions($f) as $opt) {
		    if($opt->title === $value) { $optOK = $opt; break; }
		}
		if (!isset($optOK) || !$optOK->id) {
                    say::error(sprintf("%s(%s,$key,$value) Option can't be set", __function__, "Unexpected option \"$value\""));
		    return;
		}
		$now = $got = $o->$key->title;
		
		$Manager = new SelectableOptionManager();
		foreach ($Manager->getOptions($f, ['title'=>$value]) as $option) {
                    if ($o->$key->hasTitle($value) || $o->$key->hasValue($value)) {
			say::ok($o, $key, $value);
                    } else {
			$o->$key = new SelectableOptionArray();
			$o->$key->setField($f);
			$o->$key->add($option);
			if ($saveToDB == true) { $o->save(); $o->$key->save(); }
			say::load($o, $key, $value, $now, ($got = $o->$key->title), $o->$key);
                    }
		}
		if (empty($option)){
                    say::error  (sprintf("%s(%s,$key,$value) Option can't be set", __function__, $o->name));
                    say::warning(sprintf("%s(%s,$key,$value) Option can't be set", __function__, $o->name));
		}
	    }
	} else {
	    say::error("..Not yet ready... ".joinX($summary));
	    $got = $now = $value = "Not yet ready";
	}
    } else {
	echo tidy_dump($o, $msg="Unexpected argument keyName=\"".var_export($keyName, true)."\"");
	abortIt($msg);
    }
    if (empty($got) && !empty($now) && $value!=='<unset>') {
	abortIt(sprintf(__function__."(%s,%s,%s,%s)",
			$o->name, $keyName, $value, $saveToDB)."\ncancels value $o->name.$key now==\"$now\" got=\"\"");
    }
}
