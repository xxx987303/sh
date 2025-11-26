<?php namespace ProcessWire;

if (!function_exists('ProcessWire\tidy_dump') && !function_exists('tidy_dump')){
    
    /**
     * Compact version of print_r, mostly for debuging
     */
    function tidy_dump($object, $title = 'tidy_dump', $trim = false, $skip_empty = true) {
	if (empty(@$GLOBALS['debug_messages'])) $GLOBALS['debug_messages'] = "";
	if ($title == 'return') { $return=true; $trim='do'; } else { $return = false; }
	if (!DEBUG && !input::get('show_tidy') && $trim !== 'do') { return ''; }
	if ($trim === 'do') { $trim = true; }

	if ($title === 'get_object_name') {
            $tt = array('/object.([^\)]*)\).(\d*).*/'=> '$1',
			'/string\([0-9]*\) /'        => '',
			'/\n.*/'                     => '');
	} else {
            $tt = [
		'/(\[|\])/'     => '',
		'/\n *(\(|\))/' => '$1',
		'/\)\n\)/'      => '))', // (((( help emacs
		//  '/\(\n *([^\)^\n]*\))\n/'  => '($1'."\n",
		'/\n\n/'        => "\n",
		//'/\)\n\)/'      => "))",
            ];
            if ($skip_empty) {
		$tt = array_merge($tt, ['/\n[^=]*\>?\n/' => "\n"]);
            }
	}
	ob_start();
	print_r($object);
	$output = ob_get_clean();
	$reply = preg_replace(array_keys($tt), array_values($tt), $output);
	// Skip empty items
	if(true) $reply = preg_replace('/.* => \n/', "", $reply);
	if ($title === 'get_object_name') {
            return "Object ".trim(str_replace(['ProcessWire','\\','Object'], '', $reply));
	}
	if ($trim) { $reply = trim($reply)."\n"; }
        $line = preg_replace("/ProcessWire./","",
			     sprintf("%s %s",
				     ($title=="tidy_dump" ? $title : "tidy_dump($title): "),
				     $reply));
	//str_replace("\n","\n          ","\n".$reply));
	echo (CLI_MODE
            ? "$line\n"
            : x('pre', $line));
        return "";
    }
}

if (!function_exists('ProcessWire\_formatData')){

    /**
     *
     */
    function _formatData($data, $maxLength = 66) {

	static $tp = array("/\n/"          => '',
			   "/ => /"        => '=>',
			   "/ *\( */"      => '(',
			   "/ *\) */"      => ')',
			   "/[\s]+/"       => ' ',
			   "/ *\[\d*\]=>/" => ',',
			   "/ *\[0\]=>/"   => '',
			   "/\(,/"         => '(',
			   "/\)\[/"        => '),[',
			   "/".__NAMESPACE__."./"=> '');
	static $ts = array("\n"            => ' ',
			   " => "          => '=>');

	list($o,$c) = (!empty($_SERVER['TERM']) ? ["",""] : ["<pre>","</pre>"]);
	list($o,$c) = ["",""];

	if (is_array($data)) {
            ob_start();
            print_r($data);
            $output = ob_get_clean();
            return $o.shortText(str_replace(
		array_keys($ts),
		array_values($ts),
		preg_replace(array_keys($tp), array_values($tp), $output),
		$maxLength
            )).$c;
	} elseif ($data instanceof NullPage) {
            return "NullPage";
	} elseif (is_object($data)) {
            return (empty($data->name)
		? tidy_dump($data, 'get_object_name')
		  : $data->name);
	} elseif (is_bool($data)) {
            return var_export($data, true);
	} elseif (is_string($data)) {
            return $o.shortText($data, $maxLength).$c;
	} elseif (is_numeric($data)) {
            return $data;
	} elseif (is_null($data)) {
            return 'NULL';
	} else {
            return 'UNKNOWN TYPE '. var_export($data, true);
	}
    }
}

if (!function_exists('ProcessWire\shortText')){

    /**
     *
     */
    function shortText($text, $maxLength = 500) {
	if (!strlen($text)) {
            return '';
	}
	$summary = trim(strip_tags($text));
	if (strlen($summary) <= $maxLength) {
            return $summary;
	}
	$summary = substr($summary, 0, $maxLength);
	$lastPos = 0;
	foreach (array('. ', '!', '?',' ') as $punct) {
            $pos = strrpos($summary, $punct);
            if ($pos > $lastPos) {
		$lastPos = $pos;
            }
    }
	if ($lastPos) {
            $summary = substr($summary, 0, $lastPos + 1); // and truncate to last sentence
	}
	return trim($summary).'...';
	return trim($summary);
    }
}
