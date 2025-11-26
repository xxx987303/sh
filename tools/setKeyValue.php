<?php namespace ProcessWire;

/**
 * Set field values in CLI mode
 */
function setKeyValue(object $o, $key_arg, $value, $saveToDB = null) {

    //  b_debug::_dbg();
    if ($o instanceof NullPage || $value instanceof NullPage) {
	say::notice("Trying to set/assign NullPage, skip");
	return;
    }
    if (is_object($value)  && $value->id == 0) {
	say::notice("Trying to assign empty object $key_arg, skip");
	return;
    }

    if ($key_arg==='e_inst' && $value=='Home') { abortIt("!!!!!!!!!!!!!!!!!"); }
    if (empty($key_arg)) { abortIt('??? Empty $key_arg'); }

    /**
     *
     */
    $createOptionPage = function(Object $o, Field $key, Object $donorPage, String $value, $saveToDB=false) { 
	global $dummyID; if (empty($dummyID)) $dummyID = 10000;

	b_debug::_dbg(sprintf("o=%s, key=%s, value=%s, donor=%s", $o->name, $key->name, $value, $donorPage->name)); 
	tidy_dump($o->$key->each("id={id} name={name} title={title}, "),"value=$value");
	if (0) foreach($o->$key as $p) {
	    if ($p->name == 'size') {
		echo "-------------got it!\n";
		$p->delete();
		$p->save();
	    }
	}

	if ($o->$key && (pageName($now=$o->$key->last->title) == pageName($value))) {
            say::ok($o, $key, ($got=$value));
	} else {
            if (!($page = pages()->get("name=".pageName($value)))->id) {
		$page = new Page();
		$page->name     = pageName($value);
		$page->title    = $value;
		$page->template = $donorPage->template;
		$page->parent   = $donorPage->parent;
		if ($saveToDB) $page->save();
		else           $page->id = ++$dummyID;
		b_debug::_dbg("Creating ".$page->title);
		tidy_dump($page, "Created ".$page->title);
            }
            if ($o->$key instanceof PageArray) {
say::notice('$o->$key is PageArray');
		$o->$key->add($page);
            } else {
		$o->$key = $page;
say::notice('$o->$key is NOT PageArray');
            }
            if ($saveToDB !== false) $o->save();
            say::load($o, $key, $value, (empty($now)?'':$now), $page->name);
	}
    };

    /**
     */
    $getKey = function ($key_arg, $expectObject = true) {
        if ($expectObject) {
            $key      = (is_object($key_arg) ? $key_arg  : (is_object($f=fields()->get($key_arg)) ? $f : $key_arg));
            $key_name = (is_object($key)     ? $key->name : $key);
            if (!is_object($key)) say::notice("setKeyValue(): \"$key\" is not an object as expected");
        } else {
            if (is_object($key_arg)) {
                echo tidy_dump($key_arg);
                abortIt("??? $key->title");
            }
            $key = $key_name = $key_arg;
        }
        return [$key,$key_name];
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
            if (!$o->$key) {
                $o->$key = [];
            }
            if (!$o->useRoles) {
                $o->useRoles = 1;
            }
            if (!$o->hasRole($g=roles()->get('guest'))) {
                $o->setRoles([$g->id]);
            }
            if($saveToDB!==false) $o->save();
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
            if ($saveToDB !== false) $o->save();
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
            if ($saveToDB !== false) $o->save();
            say::add($o, $key, $value, $now, $got=$o->getTags(true), $o->$key);
        }
        return [$now,$got];
    };

  //
  // Fields, Templates
  //
    if ($o instanceof Field ||
      $o instanceof Template) { // ==========================================================================================================================
        list($key,$key_name) = $getKey($key_arg, $expectObject=false);
        if ($key_name == 'tags') {
            list($now,$got) = $setTags($o, $key_name, $value, $saveToDB);
        } else {
            list($now,$got) = $setKeyValue_simple($o, $key, $value, $saveToDB);
        }
    } elseif ($o instanceof Role) {// ==========================================================================================================================
        list($key,$key_name) = $getKey($key_arg, $expectObject=false);

        if ($key == 'permission') {
            if (!$value instanceof Permission) {
                abortIt(_formatData($value)." is not instanceof Permission");
            }
            if ($o->hasPermission($value)) {
                say::ok($o, $key, $value->name);
            } else {
                $result = $o->addPermission($value);
                if ($saveToDB !== false) $o->save();
                say::add($o, $key, $value->name, $now='', $got=($o->hasPermission($value)?$value->name:''));
                if (!$result) {
                    say::notice (sprintf("%s(%s,$key,$value->name) can't be set", __function__, $o->name));
                }
            }
        } else {
            abortIt("Unexpected argument key=\"".var_export($key, true)."\"");
        }
    } elseif ($o instanceof User) {// ==========================================================================================================================
        list($key,$key_name) = $getKey($key_arg, $expectObject=false);

        if ($key == 'role') {
            if ($o->hasRole($value)) {
                say::ok($o, $key, ($now=$got=$value));
            } else {
                $result = $o->addRole($value);
                if ($saveToDB !== false) {
                    $of=$o->of();
                    $o->of(false);
                    $o->save();
                    $o->of($of);
                }
                say::add($o, $key, $value, $now='', $got=($o->hasRole($value)?$value:''));
                if (!$result) {
                    say::notice (sprintf("%s(%s,$key,$value) can't be set", __function__, $o->name));
                }
            }
        } else {
            list($now,$got) = $setKeyValue_simple($o, $key, $value, $saveToDB);
        }
    } elseif ($o instanceof Page) {// ==========================================================================================================================
        list($key,$key_name) = $getKey($key_arg, $expectObject=true);
        $o->of(false);

        if (!empty($o->av_current_er)&&count($o->av_current_er) && templates()->get('ea_emp_record')->fieldgroup->hasField($f=preg_replace("/^av_/", "er_", $key_name))) {
          // Employment record has precedence over person
            return setKeyValue($o->av_current_er->first, $f, $value, $saveToDB);
        } elseif ($key instanceof FieldtypeDatetime) {                                    // FieldtypeDatetime ====================================================
            list($now,$got) = $setKeyValue_simple(
                $o,
                $key,
                ($key->hasTag('date')
                         ? b_time::datetime2date($value)
                         : b_time::txt2unix($value)),
                $saveToDB
            );
        } elseif (is_object($key) && ($key->hasTag('country') || $key->tags=='country')) {// Field  'country' =====================================================
            $value = b_cc::get($value);
            if (empty($value)) {
                return;
            }
	    
	    $createOptionPage($o, $key, pages()->get("template=country"), $value, $saveToDB);;
	    /*
               if ($o->$key && (pageName(($now=$o->$key->title)) == pageName($value))) {
               say::ok($o, $key, ($got=$value));
               } else {
                if (!($page_country = pages()->get("name=".pageName($value)))) {
                    $page_country = new Page();
                    $page_country->name  = pageName($key_name);
                    $page_country->title = $value;
                    $page_country->template = 'country';
                    $page_country->parent = pages()->get('template=countries');
                    $page_country->save();
                    b_debug::_dbg("Creating ".$page_country->title);
                }
                if ($o->$key instanceof PageArray) {
                    $o->$key->add($page_country);
                } else {
                    $o->$key = $page_country;
                }
                if ($saveToDB !== false) $o->save();
                say::load($o, $key, $value, (empty($now)?'':$now), $got=@$o->$key->title);
            }
	    */
        } elseif (is_object($key) && $key->type instanceof FieldtypePage) { // FieldtypePage  =====================================================
	    

            if ($key_name == 'er_org_position' && !is_object($value)) {
                $value = findPageByTitle($value, ['org_position']);
            }elseif (is_string($value) && $key instanceof PageField) {
		$pages = pages()->get("template=".$key->template_id);
		foreach ($pages as $p){
		    //if ($p->name == ($n=$key->template->name)) echo "??????????????????????? $n\n";
		}
		$createOptionPage($o, $key, pages()->get("template=".$key->template_id), $value, $saveToDB);
		return;
		// Check the current value
		if ($o->$key->last->title == $value) {
                    say::ok($o, $key_name, $value);
		    return;
		}

		// Check that the option exists in the list
		if (!($p = pages()->get($s=sprintf("template=%s, title=%s", $key->template_id, $value)))->id) {
		}
		exit;
		if ($p->title == $value) {
                    say::ok($o, $key_name, $value);
		    return;
		}
		
		tidy_dump($p,"s=$s");
		tidy_dump($p->id,"id");
		tidy_dump($p->name,"name");
		tidy_dump($p->title,"title");
		echo "s = $s\n";
//		tidy_dump($key);
tidy_dump($p);
		exit;
	    }


	    if (!is_object($value)) {
                tidy_dump($key, $key_name);
                abortIt(var_export($value, true)." is not an object");
            }
            if ($o->id == $value->id) {
		echo "setKeyValue(object $o->name, $key_arg, $value->name(id=$value->id))\n";
		echo $o->title.": ".tidy_dump($o);
                abortIt("Linking '".$value->name."' to itself");
            }
            if ($ok=($o->$key instanceof PageArray)
            ? $o->$key->has($got=$now=$value)
            : !empty($o->$key) && (($got=$now=$o->$key->title) == $value->title)) {
                say::ok($o, $key_name, $now);
            } else {
                if ($o->$key instanceof PageArray) {
                    $o->$key->add($value);
                    $o->$key->save();
                    $got = ($o->$key->has($value) ? $value->title : "?");
                } else {
                    $o->$key = $value;
                    $got = (is_object($o->$key) ? $o->$key->title : null);
                }
                if ($saveToDB !== false) $o->save();
                say::hook($o, $key, $value->title, $now="", $got, $o->$key);
            }
        } elseif ($o->$key instanceof LanguagesPageFieldValue) { // Languages  ==================================================================
            $langID =  (is_numeric($saveToDB) ? $saveToDB : languages()->get($saveToDB)->id);
            $lang_name=(is_numeric($saveToDB) ? languages()->get($langID)->name : $saveToDB);
            $fl  = ($langID==0 ? $key : "{$key}_{$lang_name}");
            $got = $now = trim($langID==0
             ? $o->$key->getDefaultValue()
             : $o->$key->getLanguageValue($langID));
            $pf = ($langID == 0 ? "" : $langID);
          // echo"lang_name=$lang_name fl=$fl langID=$langID now=$now value=$value\n";
            if ($now == $value) {
                say::ok($o, $fl, _formatData($now));
                $o->set("status$pf", (empty($pf) ? 'unique' : 1));
                if ($saveToDB !== false) $o->save();
            } else {
                if (empty($value) && !empty($now)) {
                        say::warning(sprintf(__function__."(%s,%s,%s,%s)", $o->name, $key_name, $value, $saveToDB)."\ncancels value $o->name.$key_name now==\"$now\"");
                } else {
                    if ($langID == 0) {
                        $o->$key = $value;
                    } else {
                        $o->$key->setLanguageValue($langID, $value);
                    }
                    $o->set("status$pf", 1);
                    if ($saveToDB !== false) $o->save();
                    if (!is_object($o->$key)) {
                        $o->$key = new LanguagesPageFieldValue($o, $key); // Well...
                    }
                    say::load($o, $fl, $value, $now, $got=($langID==0?$o->$key->getDefaultValue():$o->$key->getLanguageValue($langID)));
                }
            }
        } elseif ($key_name == 'images') {                         // Images  =====================================================================
            $hasImage = function ($o, $fn, $verbose = false) {
                if ($o->images->has($fn)) {
                    // echo "OK hasImage(has) $fn\n";
                       return true;
                } else { // debug...
                    foreach ($o->images as $i) {
                        if (($x=basename($i->filename)) == $fn) {
                  // echo "OK hasImage(img) $fn\n";
                            return true;
                        } elseif ($verbose) {
                            if (!@$counter++) {
                                printf("---%s\n", var_export($fn, true));
                            }
                            printf("   %s\n", var_export($x, true));
                        }
                    }
                }
                return false;
            };

            $sani = function ($image_path) {
                return preg_replace(
                    '/_(gif|jpg|jpeg|png)$/',
                    '.\\1',
                    str_replace(['.','-'], '_', basename(sanitizer()->filename(strToLower($image_path))))
                );
            };

            if (!is_array($value)) {
                $value = [$value];
            }
            if (!$o->images) {
                $o->images = new Pageimages($o);
            }
            foreach (array_unique($value) as $image_path) {
                $fn = $now = $got = $sani($image_path);
                if ($hasImage($o, $fn, true)) {
                        say::ok($o, $key_name, $fn);
                } else {
                    //echo "$fn does not exist\n"; return;
                    $o->of(false);
                    $o->images->add($image_path);
                    if ($saveToDB !== false) $o->save();
                    say::load($o, $key_name, $fn, $now="", $got=($hasImage($o, $fn, false) ? $fn : ""), $o->$key_name);
                }
            }
        } elseif ($key_name == 'parent') {                   // Parent =======================================================================
            if (empty($value->id)) {
                abortIt("'parent' argument is not a page: "._formatData($value));
            }
            if (($got=$now=$o->parent->name) == $value->name) {
                say::ok($o, 'parent', $value->name);
            } else {
                $o->parent = $value;
                if ($saveToDB !== false) $o->save();
                say::hl(sprintf(">> Hook %s.parent(%s) = %s", $o->name, $o->parent->id, ($got=$o->parent->name)), 'g');
            }
        } elseif ($o->$key instanceof SelectableOptionArray) {  // Options =======================================================================
	    /**
	     * Sets only 1 option, not goot if there several options...
	     */
            if (is_object($value)) {
		abortIt("unexpected object "._formatData($value));
	    //}elseif (($p=$o->$key->hasTitle($value)) || ($p=$o->$key->hasValue($value))) {
	    //}elseif (($p=$o->$key->getByTitle($value)) && $p->value>0) {
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
			if ($saveToDB !== false) { $o->save(); $o->$key->save(); }
			say::load($o, $key, $value, $now, ($got = $o->$key->title), $o->$key);
                    }
		}
		if (empty($option)){
                    say::error  (sprintf("%s(%s,$key,$value) Option can't be set", __function__, $o->name));
                    say::notice (sprintf("%s(%s,$key,$value) Option can't be set", __function__, $o->name));
		}
	    }
        } elseif ($key == 'tags') {                          // Tags ========================================================================
            list($now,$got) = $setTags($o, $key, $value, $saveToDB);
        } else {                                           // ===========================================================================
            if ($key_name == 'title' && is_string($value)) {
                $value = preg_replace("/^\d\d\d\d\d\d-/", "", trim(str_replace(
                    ['[>]', '   ', '  '],
                    ' ',
                    escape_uml(strip_tags($v_orig=$value))
                )));
          // if($value != $v_orig) say::notice("fix title: \"$v_orig\" ==> \"$value\"");
            }
            list($now,$got) = $setKeyValue_simple($o, $key, $value, $saveToDB);
        }
    } else {
        echo tidy_dump($o, $msg="Unexpected argument key_name=\"".var_export($key_name, true)."\"");
        abortIt($msg);
    }
    if (empty($got) && !empty($now) && $value!=='<unset>') {
        abortIt(sprintf(__function__."(%s,%s,%s,%s)", $o->name, $key_name, $value, $saveToDB)."\ncancels value $o->name.$key now==\"$now\" got=\"\"");
    }
}
