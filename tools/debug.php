<?php namespace ProcessWire;

/**
 * ProcessWire CAA(Computer Aided Admin) + nordita.org site by Iouri Belokopytov. Copyright 2020-2021 Nordita
 *
 * Debugging tools
 */

if (is_file($f=__dir__.'/functions.php')) require_once $f;
if (!defined('cnf_CLI')) define ('cnf_CLI', true);

/**
 * Initialise internal debug
 */
function initDebug(){
    if (!defined('starting')) {
        define('starting', 'Тронули, барин...');   // Means "Let's go, sir..."
        define('exiting',  'Приехали, барин...');  // Means "We have arrived, sir..."
    }
    
    //
    // Set global "DEBUG" flag
    if (isset($_GET['debug'])) {
        $_SESSION['DEBUG'] = (int)$_GET['debug'];
    } elseif (!isset($_SESSION['DEBUG'])) {
        $_SESSION['DEBUG'] = 0;
    }
    
    if (defined('DEBUG')) {
        $_SESSION['DEBUG'] = DEBUG;
    } else {
        define('DEBUG', (cnf_CLI ? 1 : (int)$_SESSION['DEBUG']));
    }
    
    // Who is logged in?
    if (DEBUG > 4) {
        b_debug::_dbg("User ".user()->name);
        foreach (
            ['superUser_here','ORG_manager_here','ORG_admin_here',
             'WIW_manager_here',
             'PRP_manager_here','PRP_endorser_here','PRP_submitter_here',
             'VM_manager_here','VM_prg_coordinator_here','VM_prg_coordinator_here','VM_organizer_here',
             'VM_admin_here','VM_observer_here','VM_endorser_here','VM_employee_here','VM_registrant_here',
             'VM_external_registrant_here','VM_stranger_here',
            ] as $c) {
            if (constant($c)) { b_debug::_dbg($c); }
        }
    }
    
    // Is PageFrontEdit module installed?
    if (function_exists('modules')) {
        b_debug::_dbg("PageFrontEdit is".(modules()->isInstalled('PageFrontEdit')?" ":" NOT ")."installed", 'force');
    }
}
initDebug();


/**
 * Error exit
 */
function abortIt($text = 'Shit...', $extras=[]) {
    echo (cnf_CLI
      ? sprintf("\n%s\n", `echo "$(tput bold)$(tput setaf 1)"`)
      : str_replace("font-size:small;", "", @$GLOBALS['debug_messages']) . "<pre>\n\n<span style='color:red'>$text</span>\n\n");
    if ($extras){
        if (cnf_CLI) var_dump($extras);
        else echo tidy_dump($extras,'extras');
    }
    debug_print_backtrace(); // DEBUG_BACKTRACE_IGNORE_ARGS
    echo (cnf_CLI
      ? sprintf("\n%s\n%s\n", $text, `echo $(tput sgr0)`)
      : "</pre>\n");
    die("\n");
}

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
    if(true) $reply = preg_replace('/.* => \n/', "", $reply);
    if ($title === 'get_object_name') {
        return "Object ".trim(str_replace(['ProcessWire','\\','Object'], '', $reply));
    }
    list($o,$c) = (cnf_CLI ? ["",""] : ["<pre>","</pre>"]);
    $reply = str_replace(['Array()','Array(',')'], ['[]','[',']'], sprintf(
        "$o\n%s%s$c\n",
        ($return ? "" : str_replace(__NAMESPACE__.'\\', "", $title).": "),
        str_replace(__NAMESPACE__.'\\', "", $reply)
    ));
    if ($trim) { $reply = trim($reply)."\n"; }
    if (!$return && strpos(@$GLOBALS['debug_messages'], $reply)===false) {
        @$GLOBALS['debug_messages'] .= $reply;
    }
    return ($return || cnf_CLI ? $reply : "");
}

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

/**
 *
 */



/**
 *
 */
class say
{

    static $t = array();

  /**
   * Paul's Simple Diff Algorithm v 0.1
   * (C) Paul Butler 2007 <http://www.paulbutler.org/>
   *
   * May be used and distributed under the zlib/libpng license.
   * This code is intended for learning purposes; it was written with short code taking priority over performance.
   * It could be used in a practical application, but there are a few ways it could be optimized.
   * Given two arrays, the function diff will return an array of the changes.
   *
   * diffHTML is a wrapper for the diff command, it takes two strings and returns the differences in HTML.
   */
    public static function diff($old, $new, $dropEmpty = false) {
        $maxlen = 0;
        foreach ($old as $oindex => $ovalue) {
            $nkeys = array_keys($new, $ovalue);
            foreach ($nkeys as $nindex) {
                $matrix[$oindex][$nindex] = isset($matrix[$oindex - 1][$nindex - 1]) ? $matrix[$oindex - 1][$nindex - 1] + 1 : 1;
                if ($matrix[$oindex][$nindex] > $maxlen) {
                    $maxlen = $matrix[$oindex][$nindex];
                    $omax = $oindex + 1 - $maxlen;
                    $nmax = $nindex + 1 - $maxlen;
                }
            }
        }

        if ($maxlen == 0) {
            $reply = array(array('d'=>$old, 'i'=>$new));
        } else {
            $reply = array_merge(
                self::diff(
                    array_slice($old, 0, $omax),
                    array_slice($new, 0, $nmax)
                ),
                array_slice($new, $nmax, $maxlen),
                self::diff(
                    array_slice($old, $omax + $maxlen),
                    array_slice($new, $nmax + $maxlen)
                )
            );
        }
        if ($dropEmpty) {
            $r = array();
            foreach ($reply as $l => $lines) {
                foreach ($lines as $c => $old_new) {
                    if (($c !== 'd') && ($c !== 'i')) {
                        continue;
                    }
                    foreach ($old_new as $line) {
                        if ($v = trim($line)) {
                            $r[$l][$c] .= "$v ";
                        }
                    }
                }
            }
            return $r;
        } else {
            return $reply;
        }
    }

    public static function diffHTML($old, $new, $compare_attributes = false) {

        static $synonyms = array("'"=>'&#146;');

        $ret = '';
        $n_diffs = 0;
        foreach (self::diff(
            self::diffHTML_prepare($old, $compare_attributes),
            self::diffHTML_prepare($new, $compare_attributes)
        ) as $k) {
            if (is_array($k)) {
                $del = implode(' ', @$k['d']);
                $ins = implode(' ', @$k['i']);
    
          // consider the elements equal if they are synonyms
                list($xd,$xi) = array("del class='highlightText'", "ins class='highlightText'");
                foreach ($synonyms as $l => $r) {
                    if (strstr($del, $l) && strstr($ins, $r)) {
                        list($xd,$xi) = array('','');
                    }
                    if (strstr($del, $r) && strstr($ins, $l)) {
                        list($xd,$xi) = array('','');
                    }
                }
                if ((trim($del) || trim($ins)) && !empty($xd)) {
                    $n_diffs++;
                }
                $ret .= ((!empty($del)?x($xd, $del):'').
                (!empty($ins)?x($xi, $ins):''));
            } else {
                $ret .= $k . ' ';
            }
        }
        if ($n_diffs > 0) {
            return $ret;
        } else {
            return false;
        }
    }

    static function diffHTML_prepare($text, $compare_attributes = false) {
        if ($compare_attributes) {
            $html = self::unEscape(trim($text));
            $html = str_replace("\n", " ", $html);
            $html = preg_replace('/>( *)?</', '>-SPLIT-<', $html);
            $html = str_replace('>', '>-SPLIT-', $html);
            $html = str_replace('<', '-SPLIT-<', $html);
            $html = preg_replace('/-SPLIT-( *)?-SPLIT-/', '-SPLIT-', $html);
            $html = preg_replace('/-SPLIT-( *)?-SPLIT-/', '-SPLIT-', $html);
            $html = preg_replace('/-SPLIT-( *)?-SPLIT-/', '-SPLIT-', $html);
            $reply = array();
            foreach (explode('-SPLIT-', $html) as $l) {
                $l = trim($l);
                if (!empty($l)) {
                    $reply[] = $l;
                }
            }
            return $reply;
        } else {
            $text = self::escape(trim($text));
            return preg_split("/[\n\s]/", $text);
        }
    }

  /**
   *
   */
    static function H1($text) {
        say::tbd($text);
    }

    static function error($text, $only_one = false) {
        static $dejaVu=[];
        if (!$only_one || !@$dejaVu[$text]++) {
            self::hl("ERROR: $text", "R");
        }
    }

    static function warning($text, $only_one = false) {
        static $dejaVu=[];
        if (!$only_one || !@$dejaVu[$text]++) {
            self::hl("WARNING: $text", "m");
        }
    }

  /**
   */
    static function notice($text, $only_one = true) {
        static $dejaVu=[];
        if (!$only_one || !@$dejaVu[preg_replace("/,.*$/", "", $text)]++) {
            self::hl("NOTICE: $text", "s");
        }
    }

  /**
   * Say "To Be Done..."
   */
    static function tbd($text = '', $imitateURI = false, $only_one = true) {
        if (!superUser_here) {
            return '';
        }
        static $dejaVu=[];
        $dbt=debug_backtrace(DEBUG_BACKTRACE_IGNORE_ARGS, 2);
        $caller = isset($dbt[1]['function']) ? $dbt[1]['function'] : '';
        $msg = "[ TBD $caller $text ]";
        if ($only_one && @$dejaVu[$msg]++) {
            return '';
        }
        self::hl($msg, "s");
        if (!cnf_CLI || $imitateURI) {
            $msg = x("span style='color:red;font-weight:bold'", $msg);
            @$GLOBALS['debug_messages'] .= "$msg<br>";
            return '';
        }
        return "\n$msg\n";
    }

    static function hl(string $text = 'Unexpected error', $c = ['r'], $keepCR = false) {
        static $text_previous = '?';
        if ($text == $text_previous) return;
        $text_previous = $text;
        if (cnf_CLI) {
            fwrite(STDERR, self::color($text, $c, $keepCR)."\n");
        } else {
            b_debug::_dbg($text, 'm', null, 2);
        }
    }

    static function hs($text) {
        if (!cnf_CLI) {
            return;
        }
        static $counter = 0;
        $n = 55;
        self::$t[] = ($pf=sprintf((++$counter)." %-{$n}s %s", substr(str_replace(array('"',"'"), "", trim($text)), 0, $n), str_repeat('=', 7*(10-count(self::$t)))));
        fwrite(STDERR, "\n".self::color("Start ".$pf, 'M')."\n");
    }
    static function he() {
        if (!cnf_CLI) {
            return;
        }
        $pf = array_pop(self::$t);
        fwrite(STDERR, self::color("End   ".$pf, 'M')."\n");
    }

  /**
   */
    static function hook($p, $key, $data = '', $now = '', $reply = '', $p_key0 = '?') {
        $now = $reply = $data;
        self::load($p, $key, $data, $now, $reply, $p_key0, '>> Hook');
    }

    static function drop($p, $key = '', $data = '', $now = '', $reply = '', $p_key0 = '?') {
        self::load($p, $key, $data, $now, $reply, $p_key0, '>> Drop');
    }

    static function ok($p, $key, $data = '', $now = '', $reply = '', $p_key0 = '?') {
        $now = $reply = $data;
        self::load($p, $key, $data, $now, $reply, $p_key0, '>>>  OK');
    }

    static function add($p, $key, $data = '', $now = '?', $reply = '?', $p_key0 = '?') {
        if ($now==='?')   { $now   = $data; }
        if ($reply==='?') { $reply = $data; }
        self::load($p, $key, $data, $now, $reply, $p_key0, '>>> Add');
    }

  /**
   * Show variable load progress
   */
    static function load($p, $key, $data = '', $now = '', $reply = '', $p_key0 = '', $id = '>> Load') {

      /** Compare 2 values which might be in different formats */
        $eq = function ($value, $expect) {
            $t = function ($v) {
		if (empty($v)) return false;
                return !is_array($v) && preg_match("/^\d\d\d\d-\d\d-\d\d/", $v);
            };
            if ($t($value) && $t($expect)) {
                return b_time::is_equil($value, $expect);
            } elseif (is_object($value) || is_object($expect)) {
                return (_formatData($value)==_formatData($expect));
            } elseif ($value == 1024 && $expect == 'hidden') {
                return true;
            } elseif (!empty($expect) && is_string($value) && is_string($expect) && preg_match('|'.str_replace('|', '.', $expect).'$|', $value)) {
                return true; // fa-home EXPECT home
            } elseif ($value == 1024 && $expect == 'hidden') {
                return true;
            } else {
                return (_formatData($value)==_formatData($expect));
            }
        };
    
        if (strpos($id, '>') === false) {
            $color = $id;
            $id = '>> Load';
        }
        if (preg_match("/Hook/", $id)) {
            $color = 'G';
        }
        if (preg_match("/Add|Load/", $id)) {
            $id = ($p instanceof Page) ? '>> Load' : '>>> Add';
        }
        if (is_object($key)) {
            $key = $key->name;
        }
        $f = preg_replace("/_(russian|french|swedish)/", "", $key);
        $m1 = substr($p->name, 0, 22).(empty($key)?'':'.'.substr($key, 0, 22));
        $m3 = ($eq($reply, $data) ? "" : sprintf(" EXPECT %-15s", _formatData($data, 15)));
        $M = (!is_object($p_key0) ? "" : (($w=tidy_dump($p_key0, 'get_object_name'))==($z=tidy_dump($p->$f, 'get_object_name'))
                      ? "" : (empty($p_key0)||empty($p_key0->id) ? $z : " SICK: $w=>$z")));
        $n = (empty($m3) ? 99 : 24);
        $m2 = (empty($now)||$eq($now, $reply)?"":"$now -> ").sprintf("%-".($n-1)."s", (empty($_=_formatData($reply, $n)) ? '""' : $_));
        $line = trim(sprintf("$id %-45s %s", $m1, $m2.$m3))."\n";
        if (cnf_CLI) {
            if (empty($color)) {
                fwrite(STDERR, $line);
            } else {
                fwrite(STDERR, say::color(trim(sprintf("$id %-45s %s\n", $m1, $m2.$m3)), $color)."\n");
            }
        } else {
            b_debug::_dbg($line, 'm', null, 1);
        }
    }

    static function _($key, $s_key = '', $value = '', $s = '   ', $act = '') {
        global $t_say;
        if (is_object($key)) {
            $key   = $key->name;
        }
        if (is_object($s_key)) {
            $s_key = $s_key->name;
        }
        if (is_array($value)) {
            $value = '('.join(',', $value).')';
        }
        if (!is_string($value)) {
            $value = _formatData($value);
        }
        if (!empty($t_say)) {
            $t_say = "($t_say) ";
        } else {
            $t_say='';
        }
        $msg = sprintf("$s $act %-10s ".(empty($value)?"":"$t_say= ")."%s\n", (empty($s_key) ? $key : "$key.$s_key"), $value);
        if (cnf_CLI) {
            fwrite(STDERR, $msg);
        } else {
            b_debug::_dbg($msg, 'm', null, 1);
        }
        $t_say = '';
    }

    static function strange($key, $s_key = '', $value = '', $cmt = '') {
        self::_($key, $s_key, $value, '???');
    }

    static function replace($from, $to, $cmt = 'Replace') {
        if (is_array($to)) {
            $to=join(',', $to);
        }if ($from!=$to) {
            self::_("$from => $to", '', '', '>>>', $cmt);
        }
    }

    /**
     */
    static function color($text, $args = array(), $keepCR = false) {
        static $t = ['black ' =>0, // black
                     'red'    =>1,
                     'green'  =>2,
                     'yellow' =>3,
                     'sinij'  =>4, // blue
                     'magenta'=>5,
                     'cyan'   =>6,
                     'white'  =>7];
        
        if (is_string($args) && preg_match("/^[A-Z]$/", $args)) {
            $args=[strToLower($args),'B'];
        }

        if (!is_array($args) && !empty($args)) {
            $args = array(substr($args, 0, 1));
        }
        
        $c = 0;
        foreach ($t as $h => $ai) {
            if (in_array(substr($h, 0, 1), $args)) {
                $c = $ai;
            }
        }

        $cmd = (in_array('B', $args) ? "\$(tput bold)":"")."\$(tput setaf $c)";
      // echo __function__." color=$c bold=".var_export(in_array('B',$args),true)." cmd=$cmd\n";
        $reply = `echo "$cmd"` . $text . `echo $(tput sgr0)`;
        if (!$keepCR) {
            $reply = str_replace("\n", "", $reply);
            $reply = preg_replace("/\s/", " ", $reply);
        }
        return $reply;
    }

    static function act($code='+', $o=null, $v='') {
        $type = (empty($o->type)?"":$o->type);
        if ($code == '+') {
            self::_add($o, $type, $v);
        } elseif ($code == '-') {
            self::_drop($o, $type, $v);
        } else {
            self::_ok($o, $type, $v);
        }
    }
}

/**
 *
 */
class b_debug
{

    public static $compactOutput = true;
    public static $backtraceData = '';
    public static $starting_exiting = false;
    private static $s_e_depth = 0;
    private static $cache = [];
    public static $noArgs = false;

  /**
   */
    public static function internalError($msg) {
        abortIt($msg);
    }

    static function print_r($arg, $txt = '') {
        echo tidy_dump($arg, $txt);
    }
    static function var_dump($arg, $txt = '') {
        ob_start();
        var_dump($arg);
        $out = ($txt?"$txt:\n":"") . trim(ob_get_clean());
        @$GLOBALS['debug_messages'] .= sprintf("<pre>%s</pre>", trim(str_replace(['<',"\n\n"], ['&lt;',"\n"], $out)));
    }
  
    static function _tt($text = '') {
        @$GLOBALS['debug_messages'] .= sprintf("<pre>%s</pre><br/>", trim(str_replace(['<',"\n\n"], ['&lt;',"\n"], $text)));
    }

  /**
   *
   */
    public static $color = null;
    public static function _dbg($text='', $color='m', $class=null, $extra_level=0, $showIf=false) {
        switch($color) {
        case false:
            self::$noArgs = false;
            $color=self::$color;
            break;
        case true:
            self::$noArgs = true;
            $color=self::$color;
            break;
        case 'force':
            $showIf = $showIf || superUser_here;
            $color = 'R';
            break;
        }
        $noArgs = self::$noArgs;
        if (!DEBUG && !$showIf) { return; }
    
        if ($color === '?') { $color = self::$color; }
        static $style = ['m' => 'magenta',
                         'b' => 'blue',
                         'r' => 'red',
                         'y' => 'steelblue',
                         'g' => 'green',
                         'R' => 'red;font-weight:bold',
                         'c' => '#D2691E']; // chocolate
        if (!in_array($color, array_keys($style))) { $color = 'm'; }
        self::$color = $color;
        if (is_bool($text) || is_null($text) || is_array($text)) {
            $text = var_export($text, true);
        }

      // Start/End of a block
        if (self::$starting_exiting = is_string($text)) {
            $s_e_s = (strpos($text, starting) !== false);
            $s_e_e = (strpos($text, exiting)  !== false);
            if (self::$starting_exiting = ($s_e_s || $s_e_e)) {
                if ($s_e_e) { self::$s_e_depth--; }
                $toPrint = true;
                $color = 'o';
                $style[$color] = '#f85'; // orange
            }
        }

      // Prefix = indent + caller
        $dbg_prefix = str_replace('<', '&lt;', self::s_e_depth() . ($args=str_replace(__NAMESPACE__.'\\', "", self::__([2+$extra_level], $class))));
        if (self::$starting_exiting && $s_e_s) {
            self::$s_e_depth++;
            self::$cache = [];
        }
        if (!self::$compactOutput) {
            self::$cache = [];
        }

        if (self::$starting_exiting || !@self::$cache[$args.$text]++) {
            if (cnf_CLI) {
                say::hl($dbg_prefix.(empty($text)?"":": $text"));
            } else {
                if (is_numeric($text) && ($d=date('Y', $text)) > 2000 && $d < 2040) {
                    $text .= " ".x("(", date("Y-m-d H:i:s", $text));
                }
                @$GLOBALS['debug_messages'] .= x(
                    "div style='color:".$style[$color].";font-size:smaller;line-height:1em'",
                    "$dbg_prefix: <em style='font-size:x-small'>$text</em>"
                )."\n";
            }
        }
        self::$noArgs = $noArgs;
    }
    public static function s_e_depth($extra_shift = 0) {
        return (self::$s_e_depth > 0 ? str_repeat((cnf_CLI?' ':'&nbsp;'), 5*(self::$s_e_depth+$extra_shift)) : '');
    }

  /**
   * Give the name and arguments of the function/method calling sequence
   */
    public static function __($flags = array(), $class = null) {
        static $inside = 0;
        if ($inside++) {
            abortIt("recursion in b_debug::__($flags)");
        }
        $includeClass = true;
        $includeLine  = false;

      // Parse input arguments
        if (!is_array($flags)) {
            $flags = [$flags];
        }
        foreach ($flags as $item) {
            if (is_bool($item)) {
                $includeClass = $item;
            } elseif ($item==='l') {
                $includeLine  = true;
            } elseif (is_object($item)) {
                $clas = get_class($item);
            } else {
                $level        = (int)$item;
            }
        }
        if (empty($level)) {
            $level = 1;
        }

      // Get the class identifiers (name, ID, mode)
        if (is_object($class)) {
            $clas = self::parse_value($class);
        } elseif (is_string($class) && !empty($class)) {
            $clas = $class;
        }

        $calls = debug_backtrace();
        while (true) {
            if (isset($calls[$level])) {
                $call = $calls[$level];
                break;
            } else {
                $level--;
            }
        }

        if (@$call['type']=='::') {
            $includeClass = true;
        }
        if (@$call['type']=='->' && !empty($clas) && $clas!='b_debug') {
            $call['class'] = $clas;
        }

        if (self::$noArgs || !is_array($call['args'])) {
            $call['args'] = [];
        }
        $args = [];
        foreach ($call['args'] as $a) {
            $args[] = self::parse_value($a);
        }
        $reply = str_replace(
            '[',
            '',
            str_replace(
                ']',
                '',
                str_replace('bForm_', '', join('', array((empty($call['class']) || !$includeClass ? '' : @$call['class'].@$call['type']),
                                       @$call['function'],
                                       "(".join(', ', $args).")",
                                       ($includeLine ? ' line '.@$call['line'] : ''))))
            )
        );
        $inside = 0;
        return $reply;
    }

  /**
   *
   */
    static function traceBack($id = '', $object = null, $ignore_args = false) {
        echo say::tbd();
        return;
        static $recursion = 0;
        if (!$recursion++) {
            ob_start();
            $callStack = debug_backtrace(false);
            $t = new b_table_zebra(array('n'=>' ','b'=>' ','l'=>' '));
            $t->showLineCounter = false;
            foreach ($callStack as $k => $call) {
                $t->prt(array('n'=>x('tt class=smaller-text', "$k"),
                             'b'=>x('tt class=smaller-text', self::parse_tb_entry($call)),
                             'l'=>x('tt class=smaller-text', preg_replace(';(.*/caa|'.trim(`pwd`).')/;', '', @$call['file'].'#'.@$call['line']))));
            }
            $t->close();
            $tb = array(x('strong', (empty($id) ? 'TraceBack:' : $id)), ob_get_clean());
            b_debug::_dbg(join('<br>', $tb));
        }
        $recursion--;
    }

  /*
   * Another debug helper
   *   $max_a_m = 3; // number of array elements to parse
   *   $max_s_l = 30;// maximal string length
   */
    private static $current_class = '';
    public static function parse_value($argP, $max_a_m = 3, $max_s_l = 30) {
        if (strpos(self::$current_class, 'bDB')!== false) {
            $max_s_l = 999; // show the full DB query string
        }
        if (is_object($argP)) {
            if (false) {
                $arg = $argP->__toString();
            } else {
                $a = array();
                if (($id=@$argP->ID)||($id=@$argP->id)||($id=@$argP->parent_ID)) {
                    $a[] = $id;
                }
                if ($argP instanceof BasicClass) {
                    $a[] = $argP->MODE;
                }
                $arg = str_replace("'", "", get_class($argP) . "(".join(', ', $a).")");
            }
        } elseif (is_array($arg=$argP)) {
            if (empty($arg)) {
                $arg = '[]';
            } else {
                $a=array();
                $ids = preg_grep('/(_id|_aid)$/', array_keys($arg));
                foreach ($ids as $i) {
                    if (count($a)<$max_a_m) {
                                  $a[$i]=self::parse_value($arg[$i]);
                    }
                }
                if (empty($a)) {
                    foreach ($arg as $k => $v) {
                        if (count($a)<$max_a_m) {
                            if (is_array($v)) {
                                $a[$k] = self::parse_value($v);
                            } elseif (b_fmt::isArrayAssociative($arg)) {
                                $a[$k]=$v;
                            } else {
                                $a[]=$v;
                            }
                        }
                    }
                }
                if (count($a) < count($arg)) {
                    $a[''] = '...';
                }
                $arg = sprintf('&#91;%s&#93;', b_fmt::joinX($a));
            }
        } elseif (is_numeric($arg)) {
          // keep as is
        } elseif (is_bool($arg) || ($arg === null)) {
            $arg = var_export($arg, true);
        } elseif (is_string($arg)) {
            if (defined('SITE_ROOT')) $arg = str_replace(SITE_ROOT, '', $arg);
            $arg = (strlen($arg)>$max_s_l?substr($arg, 0, $max_s_l).' ...' : $arg);
            if (strip_tags(trim($arg)) !== trim($arg)) {
                $arg = b_fmt::escape($arg);
            }
            $arg = "'$arg'"; // as var_export does...
        } else {
            $arg = var_export($arg, true);
        }
        return escape_uml($arg);
    }
}

/**
 */
function diff($old, $new) {
    $matrix = array();
    $maxlen = 0;
    foreach ($old as $oindex => $ovalue) {
        $nkeys = array_keys($new, $ovalue);
        foreach ($nkeys as $nindex) {
            $matrix[$oindex][$nindex] = isset($matrix[$oindex - 1][$nindex - 1])
            ? $matrix[$oindex - 1][$nindex - 1] + 1
            : 1;
            if ($matrix[$oindex][$nindex] > $maxlen) {
                $maxlen = $matrix[$oindex][$nindex];
                $omax = $oindex + 1 - $maxlen;
                $nmax = $nindex + 1 - $maxlen;
            }
        }
    }
    if ($maxlen == 0) {
        return array(array('d'=>$old, 'i'=>$new));
    }
    return array_merge(
        diff(array_slice($old, 0, $omax), array_slice($new, 0, $nmax)),
        array_slice($new, $nmax, $maxlen),
        diff(array_slice($old, $omax + $maxlen), array_slice($new, $nmax + $maxlen))
    );
}

function htmlDiff($old, $new) {
    $ret = '';
    $diff = diff(preg_split("/[\s]+/", $old), preg_split("/[\s]+/", $new));
    foreach ($diff as $k) {
        if (is_array($k)) {
            $ret .= (!empty($k['d'])?"<del>".implode(' ', $k['d'])."</del> ":'').
                (!empty($k['i'])?"<ins>".implode(' ', $k['i'])."</ins> ":'');
        } else {
            $ret .= $k . ' ';
        }
    }
    return $ret;
}
