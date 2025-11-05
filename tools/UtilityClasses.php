<?php namespace ProcessWire;

/**
 * ProcessWire CAA(Computer Aided Admin) + nordita.org site by Iouri Belokopytov. Copyright 2020-2021 Nordita
 *
 * Utility classes and wrappers
 */
//require_once __dir__."/Debug.php";

/**
 * Frequently used constants
 */
if (!defined('CONST_noname')) {
    define('CONST_noname', 'none');
    define('CONST_year_not_considered', -2147483648);
    define('CONST_eternity_year', 2038);
    define('CONST_eternity_t', mktime(0, 0, 0, 1, 1, CONST_eternity_year));
    define('CONST_eternity', date("Y-m-d", CONST_eternity_t));
    define('CONST_near_future', time() + 99 * 24 * 3600);
    define('CONST_cnfOptions', 'my_options');
}

/**
 * JavaScript wrupper
 */
function bJS() {
    static $bJS = null;
    if (empty($bJS)) {
        $bJS = new b_js();
    }
    return $bJS;
}

class b_js
{
  /**
   */
    function __construct() {
        if (empty($GLOBALS['bJS_plugin'])) {
            $GLOBALS['bJS_plugin'] = '';
        }
    }

  /**
   */
    function add_css_inline($text) {
        if (cnf_CLI || @$dejaVu[$text]++ || empty($css=trim($text))) {
            return;
        }
        @$GLOBALS['_mainPlugin1'] .= "<style>$css</style>\n";
    }

  /**
   * Require that "the bJS-aware" _main.php contains line:
   * <?=@$GLOBALS['bJS_plugin']?>
   */
    function add_js_inline($js_code, $custom_jQuery = true) {

        static $count = 0, $d_ready = '$(document).ready';
        $js_code = preg_replace(";onClick=\'[^\']*\';i", '', $js_code);

        if ($custom_jQuery) {
            $j = '$add_js_inline'.(++$count);
            $prefix = "$j=jQuery.noConflict(); jQuery(document).ready(function($j)";
            $js_code = (stripos($js_code, $d_ready) === false
            ? "$prefix { " . str_replace('$', $j, $js_code) . " });"
            : str_replace(
                "_PREFIX_",
                $prefix,
                str_replace(
                    '$',
                    $j,
                    str_replace(
                        "$d_ready(function()",
                        "_PREFIX_",
                        $js_code
                    )
                )
            ));
        }
        $GLOBALS['bJS_plugin'] .= x("script media='screen' type='text/javaScript'", $js_code)."\n";
    }
  /**
   *
   */
    function add_js_file($file) {
        $GLOBALS['bJS_plugin'] .= x("script src='".urls('templates')."scripts/$file'")."\n";
    }
  /**
   *
   */
    function tip($target, $tip_text = '') {
        $tip = b_fmt::escape($tip_text);    // (b_fmt::compact_html($tip_text,True));
        return "<span onmouseover=\"xtooltip.show('$tip');\" onmouseout=\"xtooltip.hide();\">".$target."</span>\n";
    }
  /**
   * PW tabs
   */
    function tabs() {

        wire('modules')->get('JqueryWireTabs');

        $this->add_js_inline(
            '$("#element").WireTabs({ // tabs will be prepended to #element
    items: $(".WireTab"), // items that it should tab (REQUIRED)
    rememberTabs: true, // whether it should remember current tab across requests
    skipRememberTabIDs: ["DeleteTab"], // array of tab IDs it should not remember between requests
    id: "PageEditTabs", // id attribute for generated tabbed navigation (optional)
    itemsParent: null, // parent element for items (better to omit when possible)
    cookieName: "WireTab", // Name of cookie it uses to remember tabs
});'
        );
    }
}

/*
 * Keep configuration settings
 */
class b_cnf
{

  /**
   * Basic settings
   */
    private static $never_cache = array();
  //
  // Those _GET variables are always kept across the session,
  // they define the global myBasicClass context
  //
    public static $_GET_to_keep = [];

  //
  // Those variables are used durng edit/search sessions and should be cleaned
  // if the edit/search session is interrupted by the "cancel" button
  //
    public static $_GET_dropped_by_drop_all_array= array('function',     //
                               'ed_bList',     // bUnit / bList dialog
                               '(lm|act)_.*',  // bEdit dialog
                               'form',         // bForm class-name & ID
                               '_after_.*',    // search dialog
                               '(id|av_id)',
                               );
    public static $_GET_dropped_by_drop_all = null;

  //
  // Those variables define the "local context", and should not be cleaned if (any) session is interrupted by "cancel"
  //
    public static $_GET_never_dropped      = array('myPear_.*',    // myBasicClass defaults
                         'cnf_.*',       // Configuration sections
                         'sBy.*',        // Sort By when showing various lists
                         '_checkbox_.*', // Various selections during the session
                         'timing',       // timing request
                         'YBhere',       // as stated
                         '(warnings|.*debug.*|show.*|no(drupal|cache))',  // debug switched
                         );
  /*
   * Give back the names of the caches _GET variables
   */
    static function _() {
        if (empty($_SESSION[CONST_cnfOptions])) {
            $_SESSION[CONST_cnfOptions] = array();
        }
        return array_keys($_SESSION[CONST_cnfOptions]);
    }


  /*
   * Check the set of conditions
   *
   */
    public static function check_conditions($c_array, $class, $verbose = false) {
        if (cnf_dev && !is_object($class)) {
            b_debug::traceBack("arg is not object");
        }
        $reply = null;
        $msg   = '?';
        foreach ($c_array as $answer => $conditions) {
            if (!is_array($conditions)) {
                $conditions = array($conditions);
            }
            foreach ($conditions as $msg => $condition) {
                if ($answer === 'default') {
                      $reply = $condition;
                      $msg   = 'default';
                      break 2;
                } elseif ($condition) {
                    $reply = $answer;
                    break 2;
                }
            }
        }
        if (empty($reply)) {
            $reply = false;
        }
      // b_debug::_dbg(($reply ? 'YES - ' : 'NO - ')."$msg<br>",'b');
        return $reply;
    }


  /**
   * Get the option from the _GET and/or _POST
   * and store it in the _SESSION
   */
    public static function get($key, $default = null) {
        static $inside = 0;
        if ($inside++) {
            die("recursion in b_cnf::get($key,$default)");
        }
        if ($ask_only = ($default === 'ask_only')) {
            $default = null;
        }
        if (!$ask_only) {
            self::set($key);
        }
        $keyL = strToLower($key);
        if (isset($_SESSION[CONST_cnfOptions][$keyL])) {
            $reply= trim($_SESSION[CONST_cnfOptions][$keyL]);
            switch (strToLower($reply)) {
                case '1':
                case 'on':
                case 'yes':
                    $reply = true;
                    break;
                case 'no':
                case 'off':
                    $reply = false;
                    break;
            }
        } elseif ($default !== null) {
            $reply = $default;
            if (!$ask_only) {
                self::set($key, $reply);
            }
        }
        if (stripos($keyL, '_once') !== false) {
            unset($_SESSION[CONST_cnfOptions][$keyL]);
        }
        $inside = 0;

        if (!isset($reply)) {
            $reply = null;
        }
        b_debug::_dbg($reply, $color='m', $class=null, $extra_level=0, $showIf=input::get('show_cnf'));
        return $reply;
    }

  /*
   * Save the key from _REQUEST into the session
   * Note, the _POST & _GET arrays might be modified during the execution.
   * _REQUEST is never changed (? to be confirmed)
   */
    public static function set($key, $forcedValue = null) {
        $keyL  = strToLower($key);
        if (empty($_SESSION[CONST_cnfOptions])) {
            $_SESSION[CONST_cnfOptions] = array();
        }
        if (isset($_SESSION[CONST_cnfOptions][$keyL])) {
            $oldValue=$_SESSION[CONST_cnfOptions][$keyL];
        }
        if ($forcedValue !== null) {
            $value=$forcedValue;
        } elseif (isset($_GET[$key])) {
            $value=$_GET[$key];
        } elseif (isset($_GET[$keyL])) {
            $value=$_GET[$keyL];
        } elseif (isset($_POST[$key])) {
            $value=$_POST[$key];
        } elseif (isset($_POST[$keyL])) {
            $value=$_POST[$keyL];
        } elseif (isset($oldValue)) {
            $value=$oldValue;
        }
        if (isset($value) && ($keyL === 'org')) {
            $value=strToLower($value);
        }
        if (!in_array($keyL, self::$never_cache) && isset($value)) {
            $_SESSION[CONST_cnfOptions][$keyL] = (string)$value;
        }
        if (isset($oldValue)) {
            return $oldValue;
        }
    }
}


/**
 *
 */
class b_t
{
    static $_debug = true;
    static function _($text, $no_need_to_translate = true, $substituteIfEmpty = true) {

        if (is_string($text)) {
            $reply = $text;
        } elseif (is_array($text)) {
            if (!empty($text['item'])) {
                $reply = $text['item'];
            } else {
                $class = array_shift($text);
                $field = array_shift($text);
                $reply = (!empty($text)
                ? array_shift($text)
                : $class->getValue($field));
            }
        }
        if (!isset($reply)) {
            b_debug::var_dump(is_object($text) ? "----------object ".get_class($text) : $text);
            $reply = $text;
        }
        return $reply;
    }
}


/**
 *
 */
if (!defined('CONST_TIME')) {
    define('CONST_TIME', '12:00:00'); // noon
}
if (!defined('CONST_TIME_CI')) {
    define('CONST_TIME_CI', '15:00:00'); // Accommodation check-in (arrival time in general)
}
if (!defined('CONST_TIME_CO')) {
    define('CONST_TIME_CO', '10:00:00'); // Accommodation check-out (departure time in general)
}
if (!defined('CONST_TIME_OAS')) {
    define('CONST_TIME_OAS', '08:00:00'); // Office hours start
}
if (!defined('CONST_TIME_OAE')) {
    define('CONST_TIME_OAE', '19:00:00'); // Office hours end
}

/**
 *
 */
class b_posix
{

  /**
   * Impose namespace
   */
    public static function class_exists($class) {
        return in_array(__NAMESPACE__."\\$class", get_declared_classes());
    }

    public static function function_exists($function) {
        if (!($reply=function_exists($function))) {
            $reply = !empty(preg_grep('/\b'.$function.'\b/i', get_defined_functions()['user']));
        }
      // b_debug::_dbg($reply);
        return $reply;
    }

    public static function is_int($value) {
        $reply = !empty($value) && (is_int($value) || is_numeric($value));
        return $reply;
    }

  /*
   * (string)'0' & (int)0 are NOT empty value for this function
   */
    public static function is_empty($value, $id = '') {
        if (is_string($value)) {
            $value = trim($value);
        }
        $is_empty = empty($value) && ($value !== 0) && ($value !== '0');
        if (!$is_empty && is_string($value) && !preg_match('/[0-9a-zA-ZА-Яа-яЁё]/u', $value)) {
            say::notice("Drop ".($id ? "$id=" : "value ")."'".var_export($value, true)."' as meaningless");
            $is_empty = true;
        }
        return $is_empty;
    }
}


class b_time
{

  /**
   * Convert unix time to a human-readable form
   */
    public static function unix2txt($value, $fmt = 'Y-m-d H:i') {
        switch (b_time::is_valid($value)) {
            case -1:
                $reply = 'Not considered';
                break;
            case 1:
                $reply = date($fmt, $value);
                break;
            default:
                $reply = $value;
        }
        return $reply;
    }

  /**
   */
    public static function microtime($asInt = '') {
        global $microtime0, $microtime9;

        $microtimeNorma = 1000;

        list($usec, $sec) = explode(" ", microtime());
        if (!isset($microtime0)) {
            $microtime0 = $sec;
        }
        $time = (float)$usec + (float)$sec - (float)$microtime0;
        $microtime9 = max($microtime9, $time);

        if (!is_string($asInt)) {
            $asInt = (string)$asInt;
        }
        if ($asInt == 'getNorma') {
            return       $microtimeNorma;
        }
        if ($asInt == 'getTotal') {
            return (int)($microtimeNorma*$microtime9);
        }

        if ($asInt) {
            return (int)($microtimeNorma*$time);
        } else {
            return                       $time;
        }
    }

  /**
   * Compate two DateTimes
   */
    static function is_equil($arg1, $arg2) {
        $toText = function ($arg) {
            if (is_numeric($arg)) {
                $text = date("Y-m-d H:i:s", $arg);
            } else {
                list($d,$t) = (  preg_match("/[ T]/", $arg)
                 ? preg_split("/[ T]/", $arg, 2)
                 : [$arg, '00:00:00']);
                $text = "$d $t";
            }
            return $text;
        };
        return ($toText($arg1) == $toText($arg2));
    }

  /**
   * Get the Easter date with a formula "a la Gauss".
   *        Iouri Belokopytov, 1998
   *        Crafted after Christian Walck's VMS Fortran code
   *
   * Those days this for sure might be done in a more simple way,
   * but i want to keep this code...
   * One day you will understand why.
   */
    static function easter_date($year) {
        $m = 24;
        $n =  5;
        $a = $year - 19*floor($year/19);
        $b = $year -  4*floor($year/ 4);
        $c = $year -  7*floor($year/ 7);
        $x = 19 * $a + $m;
        $d = $x - 30*floor($x/30);
        $x = 2*$b + 4*$c + 6*$d + $n;
        $e = $x - 7*floor($x/7);
        $x = 22 + $d + $e;
        if ($x <= 31) {
            $easter['m'] = 3;
        } else {
            $easter['m'] = 4;
            $x = $d + $e - 9;
            if ($x == 26) {
                $x = 19;
            }
            if ($a >=10 && $d == 28 && $x==25) {
                $x = 18;
            }
        }
        $easter['y']= $year;
        $easter['d'] = $x;
        return b_time::noon($easter['y'], $easter['m'], $easter['d']);
    }

  /*
   * Get the unix time from the year.
   * Set the number of seconds to "13" as the flag "this is an 'artificial' date"
   *
   * YB Well... this does not work... Bad idea to conver year to "first of July", very misleading...
   */
    private static $y2d_conversion = 13;
    public static function y2d($year) {
        $reply = $year;
        return $reply;
    }

  /**
   * Check that the date&time is within interval
   */
    static function inInterval($time1, $time2, $start, $end) {
        if (!$time1 || !$time2 || !$start || !$end) {
            b_debug::internalError(b_debug::__());
        }
        if ((int)$time2 <  (int)$time1) {
            $x = (int)$time1;
            $time1=(int)$time2;
            $time2=$x;
        }
        if ((int)$time1 >= (int)$start && (int)$time1 <= (int)$end) {
            $r = true;
        } elseif ((int)$time2 >= (int)$start && (int)$time2 <= (int)$end) {
            $r = true;
        } elseif ((int)$time1 <= (int)$start && (int)$time2 >= (int)$end) {
            $r = true;
        } else {
            $r = false;
        }
        if (false) {
            b_debug::_dbg(x(
                'pre',
                "test ".b_time::strftime("%F", $time1).' '.b_time::strftime("%F", $time2)."\n".($r?'IN ':'OUT').
                   "  ".   b_time::strftime("%F", $start).' '.b_time::strftime("%F", $end)
            ));
        }
        return $r;
    }

  /**
   * Number of days from $time1 to $time2
   *
   * $reply = $time1 - $time2
   */
    public static function diff($time1, $time2) {
        return (int)((b_time::_($time1) - b_time::_($time2))/86400 + 0.5);
    }

  /**
   * Holidays:
   *       easter
   *       easter - 2
   *       easter + 1
   *       easter + 39
   *       easter + 49  (Not in Sweden!)
   *       easter + 50
   */
    public static function isRedDay($date) {
        if (b_time::strftime('%u', $date)>5) {
            return true; // Sunday Saturday
        }
        if (b_time::strftime("%m%d", $date) == '0101') {
            return true; // 1 Jan
        }
        if (b_time::strftime("%m%d", $date) == '0106') {
            return true; // Swedish 6-Jan
        }
        if (b_time::strftime("%m%d", $date) == '0501') {
            return true;
        }
        if (b_time::strftime("%m%d", $date) == '0606') {
            return true; // Swedish national day
        }
        if (b_time::strftime("%m%d", $date) == '1225') {
            return true;
        }
        if (b_time::strftime("%m%d", $date) == '1226') {
            return true;
        }

        $year = b_time::strftime('%Y', $date);
        if ((b_time::is_valid($date) <= 0) || ($year > CONST_eternity_year)) {
          //      b_debug::traceBack();
            b_debug::_dbg("Y=$year? ".date('Y-m-d', $date), array(cnf_dev));
            return false;
        }
        if (function_exists('easter_date') && $date>0 && ($year >= 1970) && ($year <= CONST_eternity_year)) {
            $edate = easter_date($year);
        } else {
            $edate = self::easter_date($year);
        }

        $easter_holidays = array(-2, 0, 1, 39, 49);
        if (false) {
            $easter_holidays[] = 50; // The country code should be checked. Say, in Sweden this is NOT holiday
        }
        foreach ($easter_holidays as $daysafter) {
            if (b_time::strftime("%m", $edate+$daysafter*86400)==b_time::strftime("%m", $date) &&
            b_time::strftime("%d", $edate+$daysafter*86400)==b_time::strftime("%d", $date)) {
                return true;
            }
        }
        return false;
    }

  /*
   * check-in/check-out
   */
    public static function check_in($date = null) {
        return b_time::_($date, CONST_TIME_CI);
    }
    public static function check_out($date = null) {
        return b_time::_($date, CONST_TIME_CO);
    }
    public static function oa_start($date = null) {
        return b_time::_($date, CONST_TIME_OAS);
    }
    public static function oa_end($date = null) {
        return b_time::_($date, CONST_TIME_OAE);
    }

  /**
   * Monday of the current week, midday
   */
    public static function monday($date = null) {
        if (!(int)$date) {
            $date = time();
        }
        $wd = date('w', $date);    // 0 for Sunday through 6 for Saturday
        return self::_($date - ($wd -1) * 86400);
    }

  /**
   */
    public static function _($date = null, $time = null) {
        if ($date===null) {
            $date = time();
        }
        if ($time===null) {
            $time = CONST_TIME;
        }
        $date = self::txt2unix($date);
        switch ($time) {
            case 0:
                $time =  0;
                break;
            case 24:
                  $time = 24;
                break;
            case CONST_TIME_CO:
                $time = 10;
                break;
            case CONST_TIME_CI:
                $time = 15;
                break;
            case CONST_TIME:
                $time = 12;
                break;
        }
        return mktime(
            (int)$time,
            0,
            0,
            (int)date('n', (int)$date),
            (int)date('j', (int)$date),
            (int)date('Y', (int)$date)
        );
    }

    public static function long_date($date = null) {
        return self::_date('long', $date);
    }

    public static function medium_date($date = null) {
        return self::_date('medium', $date);
    }

    public static function medium_date_time($date = null) {
        return self::_date('medium', $date). ' ' .self::time($date, false);
    }

    public static function short_date($date = null) {
        return self::_date('short', $date);
    }

    public static function sql_timestamp($date = null) {
        if (empty($date)) {
            $date = time();
        }
        return date('Y-m-d G:i:s', $date);
    }

    public static function long_date_time($date = null) {
        return trim(self::long_date($date).' '.self::time($date));
    }

    public static function short_date_time($date = null) {
        return trim(self::short_date($date).' '.self::time($date, false));
    }

    public static function long_week($date = null) {
        return b_time::strftime(b_t::_('week').' '.rbs_weekNumberCode.', '.b_t::_('year').' %Y', $date);
    }

    public static function short_week($date = null) {
        return b_time::strftime(rbs_weekNumberCode, $date);
    }

    public static function long_month($date = null) {
        return b_time::strftime("%B %Y", $date);
    }
    public static function long_year($date = null) {
        return b_time::strftime(b_t::_('year').' %Y', $date);
    }

  /**
   *
   */
    static function _period($start, $end, $set_present = true) {
        $end = min(CONST_eternity, $end);
        $reply = self::short_date($start) . rarr . ($set_present
                        ? ($end > time() ? 'present' : b_time::short_date($end))
                        : self::short_date($er_end));
        return $reply;
    }

  /**
   * Unix time for Sunday of day 1 of the month
   */
    public static function f_sunday($date = null, $mode = 'month', $direction = 'left') {

        if (empty($date) || $date === 'now') {
            $date = time();
        } else {
            $date = self::txt2unix($date);
        }
        $y = date('Y', $date);
        $m = date('m', $date);
        $d = date('d', $date);
        switch ($mode) {
            case 'month':
                $day1 = self::noon(0, 0, 1, $date);
                break;
            case 'month-':
                  $day1 = self::noon(0, 0, 0, $date- 31*86400);
                break;
            case 'month+':
                $day1 = self::noon(0, 0, 0, $date+ 31*86400);
                break;
            case 'year-':
                $day1 = self::noon(date('Y', $date)-1, 1, 1);
                break;
            case 'year-':
                $day1 = self::noon(date('Y', $date)+1, 1, 1);
                break;
            case 'week':
                $day1 = $date;
                break;
            default:
                b_debug::internalError("Unpredicted mode = '$mode'");
        }

      // Shift to the first Sunday
      // if (strpos($mode,'+') !== False) $direction = 'right';
      // if (strpos($mode,'-') !== False) $direction = 'left';
        while (strftime('%w', $day1) != 0) {
            if ($direction == 'right') {
                $day1 += 86400;
            } else {
                $day1 -= 86400;
            }
        }
      // b_debug::_dbg(date('Y-m-d H:i',$date).' --> '.date('Y-m-d H:i',$day1));
        return $day1;
    }

  /**
   * Date presentation.
   * Valid options: short      / medium      / long            /full
   *                2011-01-05 / 05 Jan 2011 / 05 January 2011 / Sunday, 05 January 2011
   *
   */
    static function _date($presentation, $date = null) {
        $force_internal_format = true;

        if (empty($date)) {
            $date = time();
        }
        $date = self::txt2unix($date);

        if (self::is_valid($date) <= 0) {
            return $date;
        } else {
            switch ($presentation) {
                case 'short':
                    if (!$force_internal_format) {
                        if (function_exists('format_date')) {
                            return format_date($date, 'small');
                        }
                    }
                    $f = '%Y-%m-%d';
                    break;
                case 'medium':
                    if (!$force_internal_format) {
                        if (function_exists('format_date')) {
                            return format_date($date, 'medium');
                        }
                    }
                    $f = '%d %b %Y';
                    break;
                case 'long':
                    if (!$force_internal_format) {
                        if (function_exists('format_date')) {
                              return format_date($date, 'large');
                        }
                    }
                    $f = '%d %B %Y';
                    break;
                case 'full':
                    if (!$force_internal_format) {
                        if (function_exists('format_date')) {
                              return format_date($date, 'large');
                        }
                    }
                    $f = '%A, %d %B %Y';
                    break;
                default:
                    $f = $presentation;
            }
            return b_crypt::encode_utf8(strftime($f, $date));
        }
    }

  /**
   * Drop time from the datetime value
   */
    public static function datetime2date($datetime) {
        if (!is_string($datetime)) {
            $datetime = date("Y-m-d", $datetime);
        }
        list($year,$month,$day) = explode('-', date("Y-m-d", self::txt2unix($datetime)));
        if ($year >= CONST_eternity_year-1) {
            list($year,$month,$day) = explode('-', CONST_eternity);
        }
        $reply = mktime(0, 0, 0, $month, $day, $year);
        if ($datetime != date("Y-m-d", $reply)) {
            b_debug::_dbg(date("Y-m-d", $reply));
        }
        return $reply;
    }

  /**
   * Convert text date to the Unix Time
   *
   * The input might come in various formats, like
   * - 2012-06-17 18:00  = String
   * - 2012-06-17        = String
   * - 1577876400        = Unix time
   * - 2001              = Year
   * - 550302-1232       = Swedish personal number
   * - etc.
   */
    public static function txt2unix($date, $time = '') {
        switch ($case=b_time::is_valid($date)) {
            case -2: // empty
            case -1: // "not considered"
                $reply = null;
                break;
            case 0: // YYYY
                $reply = (false
                  ? $date
                  : self::unpack_date_string("$date-01-01", $time));
                break;
            case 1: // Unix time
                $reply = $date;
                break;
            case 2: // YYYYY-MM-DD
                $reply = self::unpack_date_string($date, $time);
                break;
            case 3: // SSN
                $reply = SSN::ssn2birthDate($date);
                break;
        }
        if ($case == 0 &&
        ($date != ($r=date('Y-m-d', (int)$reply))) &&
        ($date != ($r=date('Y-m-d H:i', (int)$reply))) &&
        ($date != ($r=date('d-F-Y-H:i', (int)$reply)))
        ) {
            b_debug::_dbg("case=$case? $reply != $r");
        }
        return $reply;
    }

  /*
   * Unix time for the midday y/m/d
   */
    public static function noon($y = 0, $m = 0, $d = 0, $date = 0) {
        if (func_num_args() == 1) {
            $date = $y;
        }
        if (empty($date) || $date === 'now') {
            $date = time();
        }
        if (empty($y)) {
            $y = date('Y', $date);
        }
        if (empty($m)) {
            $m = date('n', $date);
        }
        if (empty($d)) {
            $d = date('j', $date);
        }
        if ($y < 1900) {
            $y += 1900;
        }
        return mktime(12, 0, 0, $m, $d, $y);
    }

  /**
   *
   */
    static function safe_date($value, $fmt = 'Y-m-d') {
        switch ($case=self::is_valid($value)) {
            case 0:
                $reply = $value;
                break;
            case 1:
                // filter out the generated date
                // TBD if ($fmt == 'present')
                $reply = (date('m d H', $value) == '01 01 12'
                  ? date('Y', $value)
                  : date($fmt, $value));
                break;
            default:
                $reply = $value;
        }
        b_debug::_dbg($reply);
        return $reply;
    }

  /*
   * Catch the the integer "year"
   *
   * @reply:
   *   -2 - NOT valid, empty input value
   *   -1 - NOT valid, "not considered"
   *    0 - NOT valid, probably just a year number
   *    1 -     valid, integer unix time
   *    2 -     valid, string "YYYY-MM-DD" or
   *                   string "YYYY-MM-DD HH:MM"
   *                   string Registrant_RegistrationDate=12-January-2015-20:29
   *    3 -     valid, SSN (personnummer)
   */
    public static $is_valid = null;
    private static $match = array();
    public static function is_valid($arg) {

        static $months = array('Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec');
        self::$match = array();

        if (is_object($arg) || is_array($arg)) {
            $reply = 0;
        } elseif (empty($arg) || ($arg === '000000')) {
            $reply = -2;
            $dbg = 'empty';
        } elseif ($arg == CONST_year_not_considered) {
            $reply = -1;
            $dbg = 'not considered';
        } elseif (SSN::is_valid($arg, 'check_only')) {
            $reply = 3;
            $dbg = 'YES';
        } elseif (is_numeric($arg) && ($arg < CONST_eternity_t+365*3600) && (($arg<0) || ($arg>CONST_eternity_year))) {
            $reply = 1;
            $dbg = date('Y-m-d', $arg);
        } elseif (preg_match('/^\d?\d?\d\d-\d?\d-\d?\d/', $arg)) {
            $reply = 2;
            $dbg = 'YES';
        } elseif (preg_match('/^(\d\d?)-('.join('|', $months).')[^-]*-(\d\d\d\d)-(\d\d?):(\d\d?)/', trim($arg), self::$match)) {
            foreach ($months as $k => $n) {
                if ($n == self::$match[2]) {
                    self::$match[2] = $k+1;
                }
            }
            $reply = 2;
            $dbg = 'YES';
        } else {
            $reply = 0;
            $dbg = 'NO';
        }
      //if ($reply <= 0 && ($reply != -2))  b_debug::_dbg("$dbg, error code=$reply");
      // Save the result for the later use
        return (self::$is_valid = $reply);
    }

  /*
   *
   */
    private static function unpack_date_string($date, $time = '') {

        if (!empty(self::$match)) {
          /*
        return mktime(12,0,0,$m,$d,$y);
        [0] => 12-January-2015-20:29
        [1] => 12
        [2] => 1
        [3] => 2015
        [4] => 20
        [5] => 29
           */
            return mktime(
                (int)self::$match[4],
                (int)self::$match[5],
                0,
                (int)self::$match[2],
                (int)self::$match[1],
                (int)self::$match[3]
            );
        } elseif (preg_match('/^(\d?\d?\d\d)-(\d?\d)-(\d?\d) ?(\d?\d)?:?(\d?\d)?:?(\d?\d?)?/', $date, $match)) {
          // Catch time (the second argument), set time to the midday if not provided
            $t = explode(':', $time);
            foreach (array(1=>12, // HH
            2=> 0, // MM
            3=> 0, // SS
            ) as $k => $v) {
                if (!empty($t[$k-1])) {
                    $match[$k+3] = (string)$t[$k-1];
                }
                if (empty($match[$k+3])) {
                    $match[$k+3] = (string)$v;
                }
            }

          // w2k problem...
            if ($match[1] < 100) {
                $match[1] += 1900;
            }
            $match[1] = min($match[1], CONST_eternity_year);

            return mktime(
                (int)$match[4],
                (int)$match[5],
                (int)$match[6],
                (int)$match[2],
                (int)$match[3],
                (int)$match[1]
            );
        } elseif (cnf_dev) {
            b_debug::traceBack('?? Argument is not a date/time');
        }
    }

  /*
   *
   */
    public static function period($start, $end = 0, $noDate = false) {
        if (is_array($start)) {
            list($start,$end) = $start;
        }
        if (self::is_valid($start) == 2) {
            $start = self::txt2unix($start);
        }
        if (self::is_valid($end)   == 2) {
            $end   = self::txt2unix($end);
        }
        if (empty($start) && empty($end)) {
            $reply = '';
        } elseif ($noDate === 'full') {
            self::adjust_start_end($start, $end);
            $reply = date('Y-m-d H:i:s', self::txt2unix($start)).' --> '.date('Y-m-d H:i:s', self::txt2unix($end));
        } elseif ($noDate === 'short') {
            self::adjust_start_end($start, $end);
            $reply = date('Y-m-d', self::txt2unix($start)).' - '.date('Y-m-d', self::txt2unix($end));
        } else {
            $reply = '';
            if (is_numeric($start) && is_numeric($end)) {
                self::adjust_start_end($start, $end);
                $fmt = (date('Y', $start)==date('Y', $end)
                ? '%h'
                : '%h %Y');
                if ($noDate === 'h') { // human format
                          $reply = 'from '. b_time::strftime('%e %B', $start).' to '.b_time::strftime('%e %B %Y', $end);
                } else {
                    if (!$noDate) {
                        $fmt = "%d $fmt";
                    }
                    $reply = b_time::strftime($fmt, $start) . rarr . b_time::strftime(($noDate?'':'%d ').'%h %Y', $end);
                }
            } elseif (!empty($start) || !empty($end)) {
                if ($start) {
                    $reply .= b_time::strftime('%F', $start);
                }
                $reply .= rarr;
                if ((int)$end) {
                    $reply .= b_time::strftime('%F', $end);
                } elseif ($end == 'now') {
                    $reply .= 'now';
                } elseif ($end == 'present') {
                    $reply .= 'present';
                }
            }
        }
        return $reply;
    }

  /*
   * Make sure that $start < $end
   */
    public static function adjust_start_end(&$start, &$end) {
        if (b_posix::is_int($start) && b_posix::is_int($end) && ($start > $end)) {
            $t = $start;
            $start = $end;
            $end = $t;
        }
    }

    public static function strftime($fmt, $time = null) {
        if (empty($time)) {
            $time = time();
        }
        $time = self::txt2unix(str_replace('20016-08-31', '2016-08-31', $time));
        try {
            $reply = b_crypt::encode_utf8(strftime($fmt, $time));
            if (($x=strftime($fmt, $time)) != $reply) {
                b_debug::_dbg(date('Y-m-d ', $time)." $reply != $x ");
            }
        } catch (Exception $e) {
            if (cnf_dev) { var_dump($time, $time, $e->xdebug_message); }
        }
        return $reply;
    }
}


/*
 * Swedish Social Security Number treatment
 */
class SSN
{

  /* Year */
  //static private $yymmdd   =       '(\d\d)([01]\d)([0123]\d)'; // y m d
    private static $yymmdd   =       '(\d\d)(0[1-9]|1[012])([012]\d|3[01])'; // y m d
    private static $yyyymmdd = '([12]\d\d\d)([01]\d)([0123]\d)'; // Y m d

  /* Number */
    private static $n = '\w\d\d\d';

  /*
   * We know about the Swedish SSN only.
   */
    public static function known() {
        $reply = array('SE' => array('/^'.self::$yymmdd         .self::$n.'$/',
                 '/^'.self::$yymmdd  .'[-+]'.self::$n.'$/',
                 '/^'.self::$yyyymmdd       .self::$n.'$/',
                 '/^'.self::$yyyymmdd. '-'  .self::$n.'$/',
                 ));
        return $reply;
    }

  /*
   * Fix known mistakes when filling SSN
   */
    public static function fix($ssn) {
        $pattern = '/^('.self::$yymmdd.')('.self::$n.')$/';
        if (preg_match($pattern, $ssn, $m)) {
            $ssn = $m[1] .'-'. strToUpper($m[5]);
        }

        $pattern = '/^('.self::$yymmdd.')-('.self::$n.')\d*$/';
        if (preg_match($pattern, $ssn, $m)) {
            $reply = $m[1] .'-'. strToUpper($m[5]);
        } else {
            $reply = $ssn;
        }
        if ($ssn !== $reply) {
            say::warning("SSN '$ssn' ==> '$reply'");
        }
        return $reply;
    }

  /**
   * SE personal number checksum, taken "from Google" as the official algorithm
   * Modified however...
   */
    private static function checkPnr10($pnr) {
        if (strlen($pnr) == 12) {
            $pnr = substr($pnr, 2);
        } elseif (strlen($pnr) != 11) {
            return false;
        } else {
            $pnr = str_replace(array('-','+'), '', (string)$pnr);
            if (strlen($pnr) != 10) {
                return false;
            }
        }
        if (!preg_match('/^'.self::$yymmdd.'/', $pnr, self::$matches)) {
            return false;
        }

        $n = 2;
        $sum = 0;
        for ($i=0; $i<9; $i++) {
            if (!is_numeric($pnr[$i])) {
                return false;
            }
            $tmp = $pnr[$i] * $n;
            ($tmp > 9) ? $sum += 1 + ($tmp % 10) : $sum += $tmp;
            ($n == 2) ? $n = 1 : $n = 2;
        }
        $reply = (bool)(!(($sum + $pnr[9]) % 10));
        return (bool)$reply;
    }

  /*
   * SSN can't contain string "0000"
   */
    public static $matches = array();
    public static $ssn_country = '?';
    public static function is_valid($ssn, $verbose = false) {

        if (is_array($ssn) || is_object($ssn)) {
            $reply = false;
        } else {
            self::$ssn_country = 'SE';
            $ssn = preg_replace('/^(......)-[pP0]000$/', '\\1'.'-P123', (string)$ssn);
            $reply = !empty($ssn) && (strpos((string)$ssn, '000') === false) && (self::checkPnr10($ssn) || preg_match('/^(\d\d)?\d\d\d\d\d\d-[pP]\d\d\d$/', $ssn));

          // Print a warning if the SSN is not valid & the record is editable
            if ($verbose === 'check_only') {
                $verbose = false;
            }
            if (!$reply && !empty($ssn)) {
                $msg = "\"$ssn\" is not a valid Social Security Number";
                if (is_object($av=$verbose)) {
                    $msg .= ' for '.$av->fmtName('fl');
                    if (!$av->isWritable()) {
                        unset($verbose);
                    }
                }
                if (!empty($verbose) && !empty($msg)) {
                    say::error($msg);
                }
            }
        }
        return $reply;
    }

  /*
   * The birthdate is packed to the SSN
   * @param return
   *   - Null if SSN is not valid
   *   - unix time if SSN is ok
   */
    public static function ssn2birthDate($ssn, $av = false) {
        $reply = (self::is_valid($ssn, $av)
          ? b_time::noon(self::$matches[1], self::$matches[2], self::$matches[3])
          : false);
        return $reply;
    }
}

/**
 *
 */
class b_crypt
{

  /**
   */
    static function detect_encoding($string) {
        $mb = mb_detect_encoding($string, array(
                       'UTF-8',
                       'ISO-8859-1',
                       'ISO-8859-2',
                       'ISO-8859-3',
                       'ISO-8859-4',
                       'ISO-8859-5',
                       'ISO-8859-9',
                       'ISO-8859-10',
                       'KOI8-R',
                       ), true);
        $reply = (empty($mb)
          ? mb_detect_encoding($string, 'auto', true)
          : $mb);
        return $reply;
    }

  /**
   */
    static function encode_utf8($str) {
      // Those are easy cases...
        if (is_numeric($str)) {
            return $str;
        }
        if (!is_string($str)) {
            return $str;
        }
        if (empty($str)) {
            return '';
        }

        switch ($encoding=self::detect_encoding($str)) {
            case 'KOI8-R':     // the detection is not perfect...
            case 'ISO-8859-5':
                return b_fmt::cyr_utf8($str, 'i');
            case 'ASCII':
            case 'UTF-8':
                return $str;
            default:
                $str = utf8_encode($str); // Encodes an ISO-8859-1 string to UTF-8
              // b_debug::_dbg("$encoding - $str");
                return $str;
        }
    }

  /**
   */
    static function hash($string, $function = 'crc32') {
        if (is_array($string)) {
            $string = serialize($string);
        }
        if ($function == 'crc32') {
            return sprintf("%u", crc32($string));
        } else {
            return md5($string);
        }
    }

    private static $offsets = array(0);
    static function hex_encode($string) {
        $reply = "";
        for ($i = 0; $i < strlen($string); $i++) {
            $ch1 = substr($string, $i, 1);
            $val = ord($ch1);
            $j = $i % count(self::$offsets);
            $newval = $val + self::$offsets[$j];
            $newval %= 256;
            $reply .= bin2hex(chr($newval));
        }
        return $reply;
    }
}


/**
 *
 */
class b_url
{

  /**
   * Get referrer
   */
    public static $getReferrer_comment = '';
    public static $referrer_debug = false;
    static function getReferrer($args = array(), $id = 'common') {
        $url = '';
        if (!cnf_inside_fb) {
            if ((func_num_args()==1) && is_string($args)) {
                $id  = $args;
                $args= array();
            }
            if ($url = @$_SESSION['core_referrer'][$id]['url']) {
          //$url = b_url::repack($url,$args);
                self::$getReferrer_comment = @$_SESSION['core_referrer'][$id]['cmt'];
                b_debug::_dbg($url, array(2,'oliveText',true));
            }
        }
        return $url;
    }

  /**
   * Parse the arguments and create URL to the same page as the current one
   * @param  $myGET (array) keys to be added to the resulting query string
   * @param  $drop  (array) keys to be dropped from the resulting query string
   */
    static function same($myGET = [], $myDrop = [], $asA = '') {
        b_debug::$compactOutput = true;
        $items2keep = ['code','v_person','v_id'];
        if (!is_array($myGET)) {
            $myGET = (explode('&', trim($myGET, '?')));
        }
        foreach ($items2keep as $i) {
            if (!preg_match("/(\b${i}=[A-Za-z_]*\b)/", get_REQUEST_URI(), $m)) {
                continue;
            }
            list($k,$v) = explode('=', $m[1], 2);
            b_debug::_dbg("$k-$v");
            if (empty($myGET[$k])) {
                $myGET[$k] = $v;
                b_debug::_dbg($m[1], 'force');
            }
        }
        foreach (preg_grep("/^it=/", $myGET) as $k => $v) {
            unset($myGET[$k]); // PW internal URL copy
        }
        $reply = get_REQUEST_URI(true) . '?' . (b_fmt::isArrayAssociative($myGET)
                        ? b_fmt::joinX('&', $myGET)
                        : join('&', $myGET));
        b_debug::_dbg(str_replace('<','&lt;',$reply));
        return $reply;
    }
}

/**
 * Various formattings
 */
class b_fmt
{

  /**
   * Parse an e-mail address to be RFC_2822 compatible.
   * The order of the e-mails is kept, the duplications are skipped
   *
   * @return array
   */
    public static function RFC_2822($string) {
        static $re = "[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?";
        $reply = [];
        if (is_string($string)) {
            foreach (preg_split('/[;,\/]+/', trim(b_fmt::unEscape(strToLower(str_replace('@?.?', '@somewhere.earh', $string))))) as $email) {
                if (preg_match(";$re;", trim($email), $m)) {
                    $reply[] = $m[0];
                }
            }
        }
      //    b_debug::xxx(join(',',array_unique($reply)));
        return array_unique($reply);
    }

    /**
     * Build FieldtypeOptins from FuildtypeYalm
     *
     * @params $f_yaml array|string|Field - FieldtypeYaml field
     * @params $f_opt string|Field - FieldtypeOptions field 
     */
    static function yaml2options($f_yaml, $f_opt){
        b_debug::_dbg(starting);

        // Get the input data
        if (is_array($f_yaml)) {
            $associativeArray = $f_yaml;
        } else {
            $myOrg   = pages()->get("template=organization, title=".myOrg_name);
            $associativeArray = $myOrg->$f_yaml;
        }
        if (!is_object($f_opt)) { $f_opt = fields()->get($f_opt); }
        if (empty($f_opt->id))        { abortIt("Can't locate field FieldtypeOptions"); }
        if (empty($associativeArray)) { abortIt("Argument \"".var_export($f_yaml,true)."\" is not valid"); }
        
        // Convert an array to text for Options
        $ok=true;
        $options = [];
        $Manager = new SelectableOptionManager();
        // tidy_dump($Manager->getOptions($f_opt), 'Manager->getOptions');
        if(0){
            foreach ($associativeArray as $value=>$title){
                $options[] = "$value|$title";
                if (count($opts = $Manager->getOptions($f_opt, ['value'=>$value]))){
                    if ($title != $opts->last->title) {
                        $ok = false;
                        abortIt("This should not happen NOW, missing \"$value|$title\" in $f_opt->name"); 
                    }
                } else {
                    $ok = false;
                }
            }
            // @$GLOBALS['debug_messages'] .= join("<br>",$options);
            
            // Set options
            if ($ok){
                b_debug::_dbg("OK $f_opt->name options");
            } else {
                $reply = $Manager->setOptionsString($f_opt, join("\n",$options));
            //            $f_opt->save();
                b_debug::_dbg("Reply from setOptionsString "._formatData($reply));
            }
        } else {
            foreach ($associativeArray as $value=>$title){
                if (!($count=count($Manager->getOptions($f_opt, ['value'=>$value])))){
                    $option = new SelectableOption();
                    $option->set('value',$value);
                    $option->set('title',$title);
                    $Manager->addOptions($f_opt, [$option]);
                    b_debug::_dbg("Add $value | $title");
                }
                $option = $Manager->getOptions($f_opt, ['value'=>$value])->last;
                if (!$option instanceof SelectableOption) abortIt();
                if (($t=$option->getTitle()) != $title) {
                    $Manager->deleteOptions($f_opt, [$option]);
                    $option->set('title',$title);
                    $Manager->addOptions($f_opt, [$option]);
                    b_debug::_dbg("Update $value | $t-->$title");
                }
            }
        }
        b_debug::_dbg(exiting);
    }

    
    /**
     * Cut string containing HTML tags
     *
     * @param $text string
     * @param $maxL integer
     * @param $textOverflow string - optional text replacing the overhead symbols
     * @return string
     */
    public static function strcut(String $text, $maxL, $textOverflow = '', $doNotCutWord = true) {
        if (strlen($text) > $maxL) {
            $text = str_replace('&nbsp;', ' ', $text);
        }
        return self::htmlwrap($text, $maxL, $textOverflow, $cutAfterFirstWrap=true, $exact_cut=!$doNotCutWord);
    }
    
    /**
     * Same as 'wordwrap', but ignoring html tags
     */
    public static function htmlwrap(&$str, $maxLengthP, $char = '<br/>', $cutAfterFirstWrap = true, $exact_cut = false) {
        $newStr = '';
        $lastspace = $count = 0;
        $ignore_rest = $openTag = false;
        $lenstr = strlen($str);
        $maxLength = $maxLengthP;
        for ($i=0; $i<$lenstr; $i++) {
            if ($str[$i] == '<') {
                $openTag = true;
                $newStr .= $str[$i];
                continue;
            }
            if (!$ignore_rest || $openTag) {
                $newStr .= $str[$i];
            }
            if (($openTag) && ($str[$i] == '>')) {
                $openTag = false;
                continue;
            }
            if (!$openTag) {
                if ($str[$i] == ' ') {
                    if ($count == 0) {
                        if (!$ignore_rest) {
                            $newStr = substr($newStr, 0, -1);
                        }
                        continue;
                    } else {
                        $lastspace = $count + 1;
                    }
                }
                $count++;
                if (($count==$maxLength) && !$exact_cut) {
                    if (@$str[$count] != ' ') {
                        $maxLength++;
                    }
                } else {
                    $maxLength = $maxLengthP;
                }
                if ($count==$maxLength) {
                    if (@$str[$i+1] != ' ' && $lastspace && ($lastspace < $count)) {
                        $tmp = ($count - $lastspace)* -1;
                        if (!$ignore_rest || $openTag) {
                            $newStr = substr($newStr, 0, $tmp) . $char;
                        }
                        $ignore_rest = $cutAfterFirstWrap;
                        if (!$ignore_rest || $openTag) {
                            $newStr .= substr($newStr, $tmp);
                        }
                        $count = $tmp * -1;
                    } else {
                        if (!$ignore_rest) {
                            $newStr .= $char;
                        }
                        $ignore_rest = $cutAfterFirstWrap;
                        $count = 0;
                    }
                    $lastspace = 0;
                }
            }
        }
        return $newStr;
    }

  /*
   *
   */
    static function isArrayAssociative(&$array) {
        $reply = false;
        if (is_object($array)) {
            $reply = true;
        } elseif (is_array($array)) {
            $keys = array_keys($array);
            $reply = $keys !== array_keys($keys);
          //$reply = !empty($array) && ($array !== array_values($array));
        } else {
            b_debug::internalError("Argument in not an array", _formatData($array));
        }
        return $reply;
    }

  /*
   * @param return "<$glue><$glue2>$key</$glue2><i>$value</i></$glue>";
   */
    static function joinMap($glue, $items = array(), $glue2 = '') {
        if (!is_array($items)) {
            if (cnf_dev) {
                b_debug::traceBack('input is NOT array');
            }
        }

      // build closing attribute
        if (strpos($glue, ' ') === false) {
            $glue_close = $glue;
        } else {
            list($glue_close,$x) = explode(' ', $glue, 2);
        }

        $r = array();
        if (empty($glue2)) {
            foreach ($items as $item) {
                $r = array_merge($r, array("<$glue>",$item,"</$glue_close>",''));
            }
        } else {
            foreach ($items as $k => $v) {
                $r[] = "<$glue><$glue2>&lt;".self::escape($k)."/&gt;</$glue2>&nbsp;<i>$v</i></$glue_close>";
            }
        }
        return join("\n", $r);
    }

  /**
   * Wrap the long string
   */
    static function longString($string, $normalLine = 60, $brEncoded = true) {

        if (strpos($string, '-BR-') !== false) {
            return $string;
        }
        if (preg_match(';^<[^<^>]*>$;', $string)) {
            return $string;
        }

        $string_parsed = array('o'=>'','b'=>'','c'=>'');

        $string = trim(b_fmt::unEscape($string));
        if (preg_match(';^(<.*>)(.*)(</.*>)$;', $string, $m)) {
            if (strip_tags($m[2]) == strip_tags($string)) {
                $string_parsed = array('o'=>$m[1],
                   'b'=>$m[2],
                   'c'=>$m[3]);
            } else {
          // don't try to parse the complicated string, may be later...
                return $string;
            }
        } else {
            $string_parsed['b'] = strip_tags($string);
        }

        $formattedstring = array();
        foreach (preg_split(
            "/-ZZZZZZ-\s?/",
            preg_replace(
                "/ (..?.?.?).-ZZZZZZ-/",
                ' \1. ',
                preg_replace(
                    "/\.\s+/",
                    ".-ZZZZZZ-",
                    preg_replace(
                        "/\b(\w\w?\w?\w?)\./",
                        '\1&#46;',
                        str_replace("\n", " ", $string_parsed['b'])
                    )
                )
            )
        ) as $line) {
            if (strlen($line) > $normalLine) {
                while (strlen($line) > (int)(1.5 * $normalLine)) {
                      $n = strpos($line, ' ', $normalLine);
                      $formattedstring[] = b_fmt::escape(substr($line, 0, $n));
                      $line= substr($line, $n+1);
                }
            }
            if ($line=trim($line)) {
                $formattedstring[] = $line;
            }
        //if ($line=trim($line)) $formattedstring[] = nbsp($line);
        }
        return
        $string_parsed['o'].
        join(($brEncoded?'-BR-':'<br/>'), $formattedstring).
        $string_parsed['c'];
    }

  /**
   * Proper ucWords for the first/last name.
   * Extend the definition of a whitespace by adding 'dot' &'dash
   */
    static function ucWords($text, $catchMc = false) {
        static
        $dejaVu = 0,
        $stay_lower = array('at','in','by','the','for', 'für', 'and', 'of','och',// Connecting words
              //              'van','van de','van der'
              'v.','van','von','di','de','del','der','den','la','los',"'t", // Dutch, French, German nobility
              'degli'),   // Common names

      // specific words like PhD
        $specific   = array('PhD', 'I', 'II', 'III','ETH','CERN','MIT','IHEP','CNRS','EPFL','MIPT','HR','NBI','FYROM','USSR', 'USA', 'UK'),
      // d'Artagnan
        $sustr      = array("/\\bD'/i"=>"d'", "/\\bDe'/i"=>"de'");

      // Small optimization
        if (!$dejaVu++) {
            foreach (array_merge($stay_lower, $specific) as $l) {
                $sustr["/\\b$l\\b/i"] = $l;
            }
        }

      // Convert everything to the lower case, then selectively apply 'mb_convert_case'
        $text = mb_convert_case(mb_convert_case($text, MB_CASE_LOWER, 'utf-8'), MB_CASE_TITLE, 'utf-8');
        foreach (array(',','.','-','/',"'") as $s) {
            if (strpos($text, $s) !== false) {
                $words = array();
                foreach (explode($s, $text) as $word) {
                      /*
                      if ($w = @$specific[$word]){
                        print "$word ==> $w\n";
                        $word = $w;
                      }elseif (!in_array($word,$stay_lower)){
                      */
                      $word = mb_convert_case($word, MB_CASE_TITLE, 'utf-8');
                      // Catch 'van Nieuwkoop-McCall'
                    if ($catchMc) {
                        self::ucWords_Mc($word);
                    }
                    $words[] = $word;
                }
                $text = join($s, $words);
            }
        }

        if (!empty($sustr)) {
            $text = trim(preg_replace(array_keys($sustr), array_values($sustr), $text));
          // 't Hooft ...
            if (strpos($text, "'T ") === 0) {
                $text = preg_replace("/^.T /", "'t ", $text);
            }
        }

      // Catch 'McInne' && 'MacDenees', skip 'Macej'
        if ($catchMc) {
            self::ucWords_Mc($text);
        }
        return $text;
    }
    protected static function ucWords_Mc(&$word) {
        static $mc  = 'Mc';
        static $mac = 'Mac';
        foreach (array($mc,$mac) as $mm) {
            $az = ($mm === $mac
             ? '[bcdfhjlmnpqrstvwxyz]' // consonants (but not g,k) http://genforum.genealogy.com/macarthur/messages/595.html
             : '.');                   // any character
            if (preg_match("/^($mm)($az)(.*)$/", $word, $m)) {
                $word = $m[1] . mb_convert_case($m[2], MB_CASE_UPPER, 'utf-8') . $m[3];
                return;
            }
        }
    }

  /**
   *
   */
    private static function escape_init(&$mode = '') {
        $escape_url = array(' ' => '%20',           '<' => '%3C',
            '>' => '%3E',           '#' => '%23',
            '%' => '%25',           '{' => '%7B',
            '}' => '%7D',           '|' => '%7C',
            '\\'=> '%5C',           '^' => '%5E',
            '~' => '%7E',           '[' => '%5B',
            ']' => '%5D',           '`' => '%60',
            ';' => '%3B',           '/' => '%2F',
            '?' => '%3F',           ':' => '%3A',
            '@' => '%40',           '=' => '%3D',
            '&' => '%26',           '$' => '%24');

        $escapes = array(' ' =>'&nbsp;',
             '"' =>array('&quot;', '&#34;', '&#034;'),
             "'" =>array('&apos;', '&#39;', '&#039;'),
             '[' =>array(          '&#91;', '&#091;'),
             ']' =>array(          '&#93;', '&#093;'),
             ',' =>array(          '&#44;', '&#044;'),
             '.' =>array(          '&#46;', '&#046;'),
             '<' =>array('&lt;',   '&#60;', '&#060;'),
             '>' =>array('&gt;',   '&#62;', '&#062;'),
             );

        if ($mode == 'url') {
            return $escape_url;
        } else {
            if (!empty($mode)) {
                $mode = '';
                foreach (array('<','>') as $i) {
                    unset($escapes[$i]);
                }
            }
            return $escapes;
        }
    }

  /*
   * Unescape symbols
   */
    static function unEscape($line, $mode = '') {
        foreach (self::escape_init($mode) as $symbol => $codes) {
            if (!is_array($codes)) {
                $codes = array($codes);
            }
          //      foreach($codes as $f)  $line = str_replace($f,$symbol,$line);
            $line = str_ireplace($codes, $symbol, $line);
        }
        return $line;
    }

  /*
   * Escape the symbols. Never escape "space"
   */
    static function escape($line, $mode = '') {
        $line = self::unEscape($line, $mode);
        foreach (self::escape_init($mode) as $f => $t) {
            if (empty($mode) && ($f == ' ')) {
                continue;
            }
            if (!is_array($t)) {
                $t = array($t);
            }
            $line = str_replace($f, $t[0], $line);
        }
        return $line;
    }

  /**
   * Convert an associative array into a URL-like string,
   * i.e. array(a=>aaa,b=>bbb) -> "a='aaa'&b='bbb'"
   */
    static function joinX($glue, $a, $glue2 = '', $glue3 = '=') {
        if (empty($a)) {
            $a = array();
        }
        $isArrayAssociative = b_fmt::isArrayAssociative($a);
        $aa = array();
        foreach ($a as $k => $v) {
            if (is_array($v)) {
                $v = b_fmt::join($v);
            } elseif (is_object($v)) {
                $v = get_class($v);
            } else {
                $v = trim($v);
            }
            if ($isArrayAssociative) {
                if (in_array($k, array('password','pwd'))) {
                    $v = 'x';
                }
                if ($glue2==':') {
                    $item = "$k: $v";
                } elseif ($glue2==' ') {
                    $item = "$k  $v";
                } elseif ($k=='') {
                    $item = "$glue2$v$glue2";
                } else {
                    $item = "$k$glue3$glue2$v$glue2";
                }
                $aa[] = $item;
            } else {
                $aa[] = $v;
            }
        }
        return join($glue, $aa);
    }
}


/**
 */
class b_table
{

    var $reallyPrint = true;
    var $tr = 0;
    var $td = 0;
    var $th = 0;
    var $headerPrinted = false;
    var $thead_opened = false;
    var $thead_closed = true;
    var $tbody_opened = false;
    var $nRows = 0;
    var $nRowsForPendingObject = 20;
    var $lines  = array();
    var $line   = array();
    var $format = "%-s%33s %s";
    var $maxL   = 32;
    var $delimiter = array();
    var $pendingObject = array();
    var $extraTD       = array();
    var $tbodyID = '';
    var $highlightRows = true;
    var $b_table_div= false;
    protected static $table_number = 0;
    private $n_pendingObjects = 0;
    private $tableOpened = 0;
    private $tableClosed = 0;
    public $attr_table = '';

  /*
   *
   */
    function __construct($attr = '', $prefix = '') {
        $this->tNumber = ++self::$table_number;
        $this->attr_table = $attr;
        if ($prefix && !cnf_CLI) {
            print "\n$prefix\n";
        }
    }

    function dbg($text = '', $if = true) {
        $if = self::$_debug;
        if ($if) {
            say::hl(preg_replace("/ProcessWire./", "", b_debug::__(array(2), $this)).": $text", 'y');
        }
    }

    function __toString() {
        return get_class($this).' '.$this->tNumber;
        ;
    }

    protected function open($attr = '') {
        if (!(bool)($this->tableOpened++)) {
            if (empty($attr)) {
                $attr = $this->attr_table;
            }
            $this->ID = "b_table".$this->tNumber;
            $this->line = array();
            $this->prt_tag(sprintf(
                "%s\n<table id='b_table%d' %s> <!-- open table %d -->\n",
                ($this->b_table_div ? "\n<div id='b_table_div".$this->tNumber."'>" : ""),
                $this->tNumber,
                $this->_parseAttr($attr, 'b_table'),
                $this->tNumber
            ));
        }
    }

    function getHeader($forced = false, $txt = '') {
    }

  /*
   *
   */
    protected function _parseAttr($attr, $imposedClass = array(), $droppedClass = array()) {
        if (!is_string($attr)) {
            $attr = '';
        }

      // Parse the attributes, optinally impose a class
        $attr_array = preg_split(
            '/\s/',
            preg_replace('/\s?=\s?/', '=', str_replace(array('"',"'"), '', trim($attr)))
        );
        $reply_array = $items = array();
        if (!empty($imposedClass)) {
            if (!is_array($imposedClass)) {
                $imposedClass = array($imposedClass);
            }
            $items['class'] = $imposedClass;
        }
        foreach ($attr_array as $i) {
            if (!trim($i)) {
                continue;
            }
            if (strpos($i, '=') !== false) {
                list($current_item,$v) = explode('=', $i, 2);
                $current_item = trim(strToLower($current_item));
                $items[$current_item][] = trim($v);
            } else {
                $items[$current_item][] = trim($i);
            }
        }

      // "b_wrap" has precidense over "b_nowrap"
        if ($class = @$items['class']) {
            if (in_array('b_nowrap', $class)) {
                $droppedClass[] = 'b_wrap';
            }
            $items['class'] = array_diff(array_unique($items['class']), $droppedClass);
        }

      // Build the reply
        foreach ($items as $item => $values) {
            $reply_array[] = "$item='".join(' ', array_unique($values))."'";
        }
        return ' '.join(' ', $reply_array);
    }

    function thead_o($txt = '') {
        if (!$this->thead_opened) {
            $this->prt_tag("\n<thead>");
            if (!empty($txt)) {
                $this->prt_tag(x('tr', x('td colspan=9', $txt)))."\n";
            }
            $this->thead_opened = true;
            $this->thead_closed = false;
        }
    }

    function thead_c() {
        if ($this->thead_opened && !$this->thead_closed) {
            $this->prt_tag("\n</thead>");
            $this->thead_opened = false;
            $this->thead_closed = true;
        }
    }

    function tro($attr = '') {
        $this->open();
        $this->thead_c();

        if ($this->thead_closed && !$this->tbody_opened) {
            $this->prt_tag("\n<tbody $this->tbodyID>");
            $this->tbody_opened = true;
        }

        $this->prt_tag("\n <tr" .$this->_parseAttr($attr).">");
        $this->tr++;
        $this->nRows++;
    }
    function tdo($attr = '') {
        $this->prt_tag("\n  <td".$this->_parseAttr($attr).">");
        $this->td++;
    }
    function tho($attr = '') {
        $this->prt_tag("\n  <th".$this->_parseAttr($attr).">");
        $this->th++;
    }
    function tdc() {
        $this->prt_tag("</td>");
        $this->td--;
    }
    function thc() {
        $this->prt_tag("</th>");
        $this->th--;
    }

    function trc($showPending = true) {
        if ($showPending) {
            if (($e=array_unique($this->pendingObject)) && !$this->n_pendingObjects) {
                $this->td();
                $this->td(
                    str_replace("'", '"', join("<br/>", $e)),  // tcpdf does not like "'"...
                    str_replace("'", '"', " rowspan='$this->nRowsForPendingObject' class='b_pending'")
                );
                $this->pendingObject = array();
                $this->n_pendingObjects++;
            }
        }
        $this->w('TD', $this->td);
        $this->w('TH', $this->th);
        $this->prt_data(); // to keep the empty cell narrow
        $this->prt_tag("\n </tr>");
        $this->tr--;
    }

    static $b_counter = 0;
    function close($postfix = '') {
        if ((bool)$this->tableOpened && !(bool)($this->tableClosed++)) {
            $this->w('TR', $this->tr);
            $this->w('TD', $this->td);
            $this->w('TH', $this->th);
            if ($this->n_pendingObjects) {
                for ($n=$this->nRows; $n < $this->nRowsForPendingObject; $n++) {
                    $this->tr();
                }
            }
            $this->prt_tag("\n".($this->tbody_opened?"</tbody>\n":'').
             "</table>".($this->b_table_div ? "\n</div>" : "")." <!-- close table $this->tNumber -->\n", true);
            $this->getRollOver();
            if ($postfix) {
                $this->prt_tag("$postfix\n");
            }
        }
    }

  /**
   *
   */
    function getRollOver() {
        if (function_exists('bJS') && $this->tbody_opened && $this->nRows > 10 && $this->highlightRows) {
            bJS()->add_js_file('highlightRow.js');
            bJS()->add_js_inline("addTableRolloverEffect('b_table$this->tNumber','hightlighRollOver','hightlighMarked');");
        }
    }

    function tr($body = ' ', $atTD = '', $atTR = '') {
        if ($thisIsTH = is_array($atTD)) {
            $atTD = @$atTD[0];
        }
        $this->tro($atTR);
        $this->td($body, $atTD, $thisIsTH);
        $this->trc();
    }

    function th($body = ' ', $attr = '') {
        $this->td($body, $attr, ($thisIsTH=true));
    }

  /*
   * the attributes might be packed into the array keys
   */
    function td($body = ' ', $attr = '', $thisIsTH = false) {
        if (!is_array($body)) {
            $body = array($body);
        }
        foreach ($body as $a => $td) {
            if ($thisIsTH) {
                $this->tho(is_numeric($a) ? $attr : $a);
                $this->prt_data($td);
                $this->thc();
            } else {
                $this->tdo(is_numeric($a) ? $attr : $a);
                $this->prt_data($td);
                $this->tdc();
            }
        }
    }

    function x($atr, $text = " ") {
        if (cnf_CLI) {
            return trim($text)."\n";
        }
        if ($atr) {
            return "<$atr>$text</".trim(preg_replace("/ .*/", '', $atr)).">";
        } else {
            return trim($text);
        }
    }

    function w($ID, $counter) {
        if ($counter != 0) {
            $this->prt_tag("<br/>\n".$this->x("font color='red'", "$ID counter = $counter  table=$tableClassCounter"));
        }
    }

  /*
   * Print the cell data
   */
    private function prt_data($text = '') {
        if ($this->reallyPrint) {
          // E.g. replace commas by '<br/>'.
          // Not a bright idea, but sometimes usefull
            foreach ($this->delimiter as $from => $to) {
                $text = str_replace($from, $to, $text);
            }
            if (cnf_CLI) {
                $text = str_replace('&nbsp;', ' ', strip_tags($text))."\n";
            }
            print $text;
        }
    }

    protected function prt_tag($text, $force = false) {
        $this->open();
        if ($this->reallyPrint && !cnf_CLI) {
            print $text;
        }
    }

    function utf8_encode($str) {
        if ($str === mb_convert_encoding(mb_convert_encoding($str, "UTF-32", "UTF-8"), "UTF-8", "UTF-32")) {
            return $str;
        } else {
            return utf8_encode($str);
        }
    }
}

/**
 */
class b_table_KEEP
{

    var $reallyPrint = false;
    var $tr = 0;
    var $td = 0;
    var $th = 0;
    var $headerPrinted = false;
    var $thead_opened = false;
    var $thead_closed = true;
    var $tbody_opened = false;
    var $nRows = 0;
    var $nRowsForPendingObject = 20;
    var $lines  = array();
    var $line   = array();
    var $format = "%-s%33s %s";
    var $maxL   = 32;
    var $delimiter = array();
    var $pendingObject = array();
    var $extraTD       = array();
    var $tbodyID = '';
    var $highlightRows = true;
    var $b_table_div= false;
    protected static $table_number = 0;
    private $n_pendingObjects = 0;
    private $tableOpened = 0;
    private $tableClosed = 0;
    public $html = '';
    public $attr_table = '';

  /*
   *
   */
    function __construct($attr = '', $prefix = '') {
        $this->tNumber = ++self::$table_number;
        $this->attr_table = $attr;
        if ($prefix && !cnf_CLI) {
            print "\n$prefix\n";
        }
    }

    function dbg($text = '', $if = true) {
        $if = self::$_debug;
        if ($if) {
            say::hl(preg_replace("/ProcessWire./", "", b_debug::__(array(2), $this)).": $text", 'y');
        }
    }

    function __toString() {
        return get_class($this).' '.$this->tNumber;
        ;
    }

    protected function open($attr = '') {
        if (!(bool)($this->tableOpened++)) {
            if (empty($attr)) {
                $attr = $this->attr_table;
            }
            $this->ID = "b_table".$this->tNumber;
            $this->line = array();
            $this->prt_tag(sprintf(
                "%s\n<table id='b_table%d' %s> <!-- open table %d -->\n",
                ($this->b_table_div ? "\n<div id='b_table_div".$this->tNumber."'>" : ""),
                $this->tNumber,
                $this->_parseAttr($attr, 'b_table'),
                $this->tNumber
            ));
        }
    }

    function getHeader($forced = false, $txt = '') {
    }

  /*
   *
   */
    protected function _parseAttr($attr, $imposedClass = array(), $droppedClass = array()) {
        if (!is_string($attr)) {
            $attr = '';
        }

      // Parse the attributes, optinally impose a class
        $attr_array = preg_split(
            '/\s/',
            preg_replace('/\s?=\s?/', '=', str_replace(array('"',"'"), '', trim($attr)))
        );
        $reply_array = $items = array();
        if (!empty($imposedClass)) {
            if (!is_array($imposedClass)) {
                $imposedClass = array($imposedClass);
            }
            $items['class'] = $imposedClass;
        }
        foreach ($attr_array as $i) {
            if (!trim($i)) {
                continue;
            }
            if (strpos($i, '=') !== false) {
                list($current_item,$v) = explode('=', $i, 2);
                $current_item = trim(strToLower($current_item));
                $items[$current_item][] = trim($v);
            } else {
                $items[$current_item][] = trim($i);
            }
        }

      // "b_wrap" has precidense over "b_nowrap"
        if ($class = @$items['class']) {
            if (in_array('b_nowrap', $class)) {
                $droppedClass[] = 'b_wrap';
            }
            $items['class'] = array_diff(array_unique($items['class']), $droppedClass);
        }

      // Build the reply
        foreach ($items as $item => $values) {
            $reply_array[] = "$item='".join(' ', array_unique($values))."'";
        }
        return ' '.join(' ', $reply_array);
    }

    function thead_o($txt = '') {
        if (!$this->thead_opened) {
            $this->prt_tag("\n<thead>");
            if (!empty($txt)) {
                $this->prt_tag(x('tr', x('td colspan=9', $txt)))."\n";
            }
            $this->thead_opened = true;
            $this->thead_closed = false;
        }
    }

    function thead_c() {
        if ($this->thead_opened && !$this->thead_closed) {
            $this->prt_tag("\n</thead>");
            $this->thead_opened = false;
            $this->thead_closed = true;
        }
    }

    function tro($attr = '') {
        $this->open();
        $this->thead_c();

        if ($this->thead_closed && !$this->tbody_opened) {
            $this->prt_tag("\n<tbody $this->tbodyID>");
            $this->tbody_opened = true;
        }

        $this->prt_tag("\n <tr" .$this->_parseAttr($attr).">");
        $this->tr++;
        $this->nRows++;
    }
    function tdo($attr = '') {
        $this->prt_tag("\n  <td".$this->_parseAttr($attr).">");
        $this->td++;
    }
    function tho($attr = '') {
        $this->prt_tag("\n  <th".$this->_parseAttr($attr).">");
        $this->th++;
    }
    function tdc() {
        $this->prt_tag("</td>");
        $this->td--;
    }
    function thc() {
        $this->prt_tag("</th>");
        $this->th--;
    }

    function trc($showPending = true) {
        if ($showPending) {
            if (($e=array_unique($this->pendingObject)) && !$this->n_pendingObjects) {
                $this->td();
                $this->td(
                    str_replace("'", '"', join("<br/>", $e)),  // tcpdf does not like "'"...
                    str_replace("'", '"', " rowspan='$this->nRowsForPendingObject' class='b_pending'")
                );
                $this->pendingObject = array();
                $this->n_pendingObjects++;
            }
        }
        $this->w('TD', $this->td);
        $this->w('TH', $this->th);
        $this->prt_data(); // to keep the empty cell narrow
        $this->prt_tag("\n </tr>");
        $this->tr--;
    }

    static $b_counter = 0;
    function close($postfix = '') {
        if ((bool)$this->tableOpened && !(bool)($this->tableClosed++)) {
            $this->w('TR', $this->tr);
            $this->w('TD', $this->td);
            $this->w('TH', $this->th);
            if ($this->n_pendingObjects) {
                for ($n=$this->nRows; $n < $this->nRowsForPendingObject; $n++) {
                    $this->tr();
                }
            }
            $this->prt_tag("\n".($this->tbody_opened?"</tbody>\n":'').
             "</table>".($this->b_table_div ? "\n</div>" : "")." <!-- close table $this->tNumber -->\n", true);
            $this->getRollOver();
            if ($postfix) {
                $this->prt_tag("$postfix\n");
            }
        }
        return $this->html;
    }

  /**
   *
   */
    function getRollOver() {
        if (function_exists('bJS') && $this->tbody_opened && $this->nRows > 10 && $this->highlightRows) {
            bJS()->add_js_file('highlightRow.js');
            bJS()->add_js_inline("addTableRolloverEffect('b_table$this->tNumber','hightlighRollOver','hightlighMarked');");
        }
    }

    function tr($body = ' ', $atTD = '', $atTR = '') {
        if ($thisIsTH = is_array($atTD)) {
            $atTD = @$atTD[0];
        }
        $this->tro($atTR);
        $this->td($body, $atTD, $thisIsTH);
        $this->trc();
    }

    function th($body = ' ', $attr = '') {
        $this->td($body, $attr, ($thisIsTH=true));
    }

  /*
   * the attributes might be packed into the array keys
   */
    function td($body = ' ', $attr = '', $thisIsTH = false) {
        if (!is_array($body)) {
            $body = array($body);
        }
        foreach ($body as $a => $td) {
            if ($thisIsTH) {
                $this->tho(is_numeric($a) ? $attr : $a);
                $this->prt_data($td);
                $this->thc();
            } else {
                $this->tdo(is_numeric($a) ? $attr : $a);
                $this->prt_data($td);
                $this->tdc();
            }
        }
    }

    function x($atr, $text = " ") {
        if (cnf_CLI) {
            return trim($text)."\n";
        }
        if ($atr) {
            return "<$atr>$text</".trim(preg_replace("/ .*/", '', $atr)).">";
        } else {
            return trim($text);
        }
    }

    function w($ID, $counter) {
        if ($counter != 0) {
            $this->prt_tag("<br/>\n".$this->x("font color='red'", "$ID counter = $counter  table=$tableClassCounter"));
        }
    }

  /*
   * Print the cell data
   */
    private function prt_data($text = '') {
        $this->html .= $text;
        if ($this->reallyPrint) {
          // E.g. replace commas by '<br/>'.
          // Not a bright idea, but sometimes usefull
            foreach ($this->delimiter as $from => $to) {
                $text = str_replace($from, $to, $text);
            }
            if (cnf_CLI) {
                $text = str_replace('&nbsp;', ' ', strip_tags($text))."\n";
            }
            if ($this->reallyPrint) {
                print $text;
            }
        }
    }

    protected function prt_tag($text, $force = false) {
        $this->open();
        $this->html .= $text;
        if ($this->reallyPrint && !cnf_CLI) {
            print $text;
        }
    }

    function utf8_encode($str) {
        if ($str === mb_convert_encoding(mb_convert_encoding($str, "UTF-32", "UTF-8"), "UTF-8", "UTF-32")) {
            return $str;
        } else {
            return utf8_encode($str);
        }
    }
}

/**
 *
 */
class b_table_zebra
{
    public $showLineCount = false;
    public $extraTD = [];
    public $header = [];
    private $args = [];
    private $html_td = [];
    private $destroyed = false;
    private $prt_count = 0;
    private $signature = '';

    function __construct(array $header = [], array $args = []) {
        if ($this->destroyed) {
            abortIt("Class is destroyed");
        }
        $this->dbg();
        $this->header = $header;
        foreach (['id','class'] as $i) {
            if (empty($args[$i])) {
                $args[$i] = '';
            }
        }
        foreach ($args as $k => $v) {
            $this->args[$k] = $v;
        }
    }

    function __destructor() {
        b_debug::_dbg('', 'force');
    }

    function dbg($text = '') {
        b_debug::_dbg($text, 'y', null, 1);
    }

    function prt($rec) {
        if ($this->destroyed) {
            abortIt("Class is destroyed");
        }
        $this->prt_count++;
        $odd = ($this->prt_count%2 ? 'tr_odd' : 'tr_even');
        foreach ($this->header as $k => $v) {
            $td[] = "  <td class='$odd $k'>".($rec instanceof Page ? getValue($k, $rec, false) : @$rec[$k])."</td>";
        }
        foreach ($this->extraTD as $k => $v) {
            $td[] = "  <td class='extraTD'>$v</td>";
        }
        $this->html_td[] = join("\n", $td);
        $this->extraTD = [];
    }

    function td($td) {
        $this->prt_count++;
        $this->html_td[] = $td;
    }

    function signature(array $items) {
        $this->signature = x(
            "tr",
            x("td class='signature' colspan=".count(array_keys($this->header)), join("\n", $items))
        );
    }

    function close($only_return = false) {
        $this->dbg();
        if ($this->destroyed) {
            abortIt("Class is already destroyed");
        }
        if ($this->prt_count != ($c=count($this->html_td))) {
            abortIt("prt_count $this->prt_count != $c");
        }
        if ($this->prt_count) {
            if ($this->showLineCount) {
                $th[] = "  <th></th>";
            }
            foreach ($this->header as $k => $v) {
                $th[] = "  <th class='$k'>$v</th>";
            }
            foreach ($this->html_td as $k => $html_td) {
                $tr[] = "<tr>";
                if ($this->showLineCount) {
                    $tr[] = sprintf("  <td class='line-count'>%s&nbsp;-&nbsp;</td>", $k+1);
                }
                $tr[] = $html_td;
                $tr[] = "</tr>";
            }
            $html = join("\n", ["",
             sprintf("<table id='%s' class='%s'>", $this->args['id'], $this->args['class']),
             "<thead><tr>",
             join("\n", $th),
             "</tr></thead>",
             "<tbody>",
             join("\n", $tr),
             $this->signature,
             "</tbody>",
             "</table>",
             ""]);
        } else {
            $html = sprintf("\n<!-- empty b_table_zebra('%s',%s) -->\n\n", _formatData($this->header), _formatData($this->args));
        }
        $this->html_td = $this->extraTD = $this->args = $this->header = [];
        $this->destroyed = true;
        if ($only_return) {
            return $html;
        } else {
            echo   $html;
        }
    }
}

/**
 *
 */
define('input_debugColor', 'r');

class input
{

    static $placeHolders = ['masterReferrer' => 'session',
              'show_.*'        => 'session',
                //'ea_year'        => 'session',
              ];

  /**
   */
    public static function _dbg($text = '', $color = input_debugColor, $class = null, $extra_level = 0) {
        if (!self::show('input')) { return; }
        $noArgs=b_debug::$noArgs;
        b_debug::$noArgs = false;
        $compactOutput=b_debug::$compactOutput;
        b_debug::$compactOutput = true;
        b_debug::_dbg(str_replace('<', '&lt;', $text), input_debugColor, $class, $extra_level+1, true);
        b_debug::$noArgs = $noArgs;
      //b_debug::$compactOutput = $compactOutput;
    }

    /**
     * Set _GET/_POST/GLOBALS/_SESSION value. Default $GLOBALS
     *
     * @$item string
     * @$value
     * @$destination string get/post/globals/session optional, default 'get'
     */
    static function set(string $item, $value, $destination = 'get') {
        if ($i=preg_grep("/^$item$/", array_keys(self::$placeHolders))) {
            $destination = self::$placeHolders[$i[0]];
        }
        static::_dbg("destination=$destination", input_debugColor);
        if ($destination == 'get') {
            $v=$_GET[$item]  = $_REQUEST[$item] = $value;
        } elseif ($destination == 'post') {
            $v=$_POST[$item] = $_REQUEST[$item] = $value;
        } elseif ($destination == 'globals') {
            $v=$GLOBALS[$item] = $value;
        } elseif ($destination == 'session') {
            $v=$_SESSION['cnf'][$item] = $value;
        } else {
            abortIt("unknown destination");
        }
      //if ($item == 'ea_year') @$GLOBALS['debug_messages'] .= __method__."($item,$value,$destination) = ".var_export(self::get($item,$destination),true)."<br>\n";
    }

    /**
     * To show or not a selected object
     */
    static function show($item){
        $item = 'show_' . preg_replace("/show_/","",$item);
        if (empty($_SESSION['cnf'])) { $_SESSION['cnf'] = []; }
        if (isset($_GET[$item])) { $_GET[$item] = $_SESSION['cnf'][$item] = (bool)$_GET[$item]; }
        return @$_SESSION['cnf'][$item];
    }
    
    /**
     * Merged input()->post & input()->get()
     */
    static function get($item, $source = 'auto') {
        // Debug option - show the selected object
        if (preg_match("/^show_/", $item)) { self::show($item); }

        if ($i=preg_grep("/^$item$/", array_keys(self::$placeHolders))) {
            $source = self::$placeHolders[$i[0]];
            if ($source == 'session' && isset($_GET[$source])) {
                self::set($item, $_GET[$source], $source);
            }
        }
        
        // Optionally cancel all "show_" debug settings
        if (isset($_GET['show_']) && !$_GET['show_']) {
            foreach (preg_grep("/^show_/", array_keys($_SESSION['cnf'])) as $i) {
                unset($_SESSION['cnf'][$i]);
            }
        }
        
        switch ($source) {
        case 'get':
                $r = @$_GET[$item];
                break;
        case 'post':
                  $r = @$_POST[$item];
                  break;
        case 'globals':
                $r = @$GLOBALS[$item];
                break;
        case 'session':
                $r = @$_SESSION[$item];
                break;
        case 'auto':
            if ($r=@$_GET[$item])        { $source = 'get';}
            elseif ($r=@$_POST[$item])   { $source = 'post';}
            elseif ($r=@$GLOBALS[$item]) { $source = 'globals';}
            elseif ($r=@$_SESSION[$item]){ $source = 'session';}
        }
        $reply = @$r;
        if (self::show('input')){
            $dbg = b_debug::s_e_depth().($d0=str_replace(['ProcessWire\\',',auto'],'',
                                                         __method__."($item,$source): ".x('em',var_export($reply,true))."<br>\n"));
            if (strpos(@$GLOBALS['debug_messages'],$d0) === false) @$GLOBALS['debug_messages'] .= x("span style='color:red'",$dbg);
        }
        return $reply;
    }

  /**
   */
    static function post($item) {
        return input()->post($item);
    }
    static function globals($item) {
        return self::get($item, 'globals');
    }
    static function session($item) {
        return self::get($item, 'session');
    }

  /**
   * Unset _GET/_POST/_SESSION value
   */
    static function unset($item, $source = 'auto') {
        static::_dbg();
        if ($source == 'get') {
            unset($_GET[$item], $_REQUEST[$item]);
        } elseif ($source == 'post') {
            unset($_POST[$item], $_REQUEST[$item]);
        } elseif ($source == 'globals') {
            unset($GLOBALS[$item]);
        } elseif ($source == 'session') {
            unset($_SESSION[$item]);
        } else {
            unset($_GET[$item], $_POST[$item], $_REQUEST[$item], $GLOBALS[$item], $_SESSION[$item]);
        }
        if (self::$placeHolders[$item] == 'session') {
            unset($_SESSION[$item]);
        }
    }
}

/**
 *
 */
class b_btn
{

  /**
   */
    public static function _dbg($text = '', $color = 'y', $class = null, $extra_level = 0) {
        $noArgs=b_debug::$noArgs;
        b_debug::$noArgs=true;
        b_debug::_dbg(str_replace('<', '&lt;', $text), $color, $class, $extra_level+1, input::get('show_btn'));
        b_debug::$noArgs = $noArgs;
    }

  /**
   * Confirm an action without javascript (pop-up the yes/no question)
   *
   *  switch(b_btn::confirm()){
   *  case 'no':
   *    return "NO, will not do it";
   *
   *  case 'yes':
   *    return "YES, sure";
   *
   *  case Null:
   *  default:      // ask for confirmation
   *    $hidden_args = array('key1'=>'value1', 'key2'=>'value2');
   *    $confirm = b_btn::confirm("Are you sure you want to do this?", False, $hidden_args);
   *    print bJS()->modal_inline($text, $confirm, $showTouteSuite=True, $showCloseButton=False);
   *  }
   */
    public static $confirm_waiting = false;
    static function confirm($text = null, $printQuestion = true, $hidden_args = array()) {
        static $act_confirmation = 'act_confirmation';
        if (empty($text)) {
            self::$confirm_waiting = false;
            return input::get($act_confirmation); // b_cnf::getValue($act_confirmation);
        } else {
            self::$confirm_waiting = true;
            $hd = array();
            foreach ($hidden_args as $n => $v) {
                $hd[] = "<input type='hidden' name='$n' value='$v' />";
            }

            $txt = x(
                "div class='error align_center messages'",
                bIcons()->get('32-phone2').' '.$text.
                x(
                    "form method='post' enctype='multipart/form-data' name='confirmator'",
                    (join("\n", array(join("\n", $hd),
                    "<input type='submit' class='form-submit' name='$act_confirmation' value='yes'>",
                    "<input type='submit' class='form-submit' name='$act_confirmation' value='no'>")))
                )
            );
            if ($printQuestion) {
                print  $txt;
            } else {
                return $txt;
            }
        }
    }

  /**
   * Really Big Button
   */
    static function big_button($text, $url = '', $bgColor = 'green', $smaller = false, $confirm = true) {
        if (is_array($url)) {
            $url = '?'.b_fmt::joinX('&', $url);
        }
        if (!empty($url) && (strpos($url, '?') === 0)) {
            $url = b_url::same($url);
        }
        return self::submit(
            $text,
            $url,
            $confirm,
            //$class=($smaller ? "mdl" : "big" )."_button bg_$bgColor"
            $class="button-colored button-colored__register"
        );
    }

    static function big_button_grey($text, $url = '', $bgColor = null, $smaller = null, $confirm = null) {
        return self::big_button(
            $text,
            $url,
            ($background=(stripos($text, 'delete') === false ? 'grey' : 'red')),
            ($smaller_font=(is_bool($smaller) ? $smaller : true)),
            ($confirm=(stripos($text, 'delete') !== false))
        );
    }

  /**
   * Mid size button
   */
    static function mdl_button($text, $url = '', $confirm = false, $bgColor = 'green', $smaller_font = true) {
        return self::big_button($text, $url, $bgColor, $smaller_font, $confirm);
    }

  /**
   * Button type="submit", uses Java-Script for the submittion, hence works without the <form> as well.
   * Raison d'être - to have multiple submit buttons in the form, not all of them "parts" of the <form>
   */
    static function submit($text, $url = '', $confirm = false, $class = '', $img = '') {

        $style = "style='padding:1px; font-size:small;'";
        $style = '';
      //if (strpos($img,'src=')!==false) $img=trim(trim(preg_replace("/ .*/","",preg_replace("/^.*src=/","",$img)),'>'));
        list($img,$type)= (!empty($img)
               ? ["src=$img", 'image']
               : ['',         'submit']);

      // Check for the explicit confirmation request encoded in the URL
        if (stripos($url, 'confirm_yes')  !== false) {
            $confirm = true;
        }
        if (stripos($url, b_crypt::hex_encode('confirm_yes')) !== false) {
            $confirm = true;
        }

        if (empty($url)) {
            $reply = sprintf(
                "<input type='$type' value='$text' $style class='%s' title='$text' name='_${url}' />\n",
                trim("$class form-submit")
            );
        } else {
          //if (strpos($url,'?')===0) $url = b_url::repack($url);
            $url = str_replace('&amp;', '&', $url);
            $reply = sprintf(
                "<input type='$type' value='$text' $style class='%s' $img onClick='%s' title='$text' name='%s' />\n",
                trim("$class form-submit"),
                ($confirm
                ? "return submitConfirm(this);"
                : "document.location.href=\"$url\";return false;"),
                $url
            );
        }
        static::_dbg($reply);
        return $reply;
    }

  /*
   * Icon as <a href='$url'>$text</a>  button
   */
    static function submit_icon($icon, $text_action, $url, $confirm = true, $min100 = 'min100') {
        $text_action = strip_tags($text_action);
      //if (!is_array($icon)) $icon = ['i'=>$icon,'d'=>$text_action,'class'=>"form-submit $min100"];
        if (!is_array($icon)) {
            $icon = ['i'=>$icon,'d'=>$text_action,'class'=>"button-disother-close"];
        }
        $reply = x(
            "span class='only_online'",
            x(
                "a href='$url'".($confirm ? " onClick='return confirm(\"Really $text_action?\");'" : ""),
                bIcons()->get($icon)
            )
        );
        static::_dbg($reply);
        return $reply;
    }

  /*
   * return "<a href='$url'>$text</a>"
   */
    static function a($text, $url) {
      //if (strpos($url,'?') === 0) $url = b_url::repack($url);
        return x("a href='$url' class='mypear_a'", $text);
    }

  /*
   * Click-able link like "[ next view ]" OR 16x16 icon
   */
    static function link($text, $url, $img = null) {

      // First try $text as an 16x16 icon name
        foreach (array(bIcons()->get($text, '', true),
          bIcons()->getThumbnail($text)) as $i) {
            if (!empty($i)) {
                $button = $i;
                $text   = '';
                if (is_string($img) && stristr($img, 'onclick') !== false) {
                    $onclick = $img;
                }
                break;
            }
        }

      // Then check that the text is not a button already
        if (empty($button) && (stripos($text, '<img') !== false)) {
            $button = $text;
            $text   = '';
        }

      // If the text in not an icon name, then continue
        if (empty($button)) {
            if (!empty($text)) {
                $text = trim(b_t::_($text));
                if (!preg_match('/^<.*>/', $text)) {
                    $text = str_replace(' ', '&nbsp;', $text);
                }
            }
            $button = (is_string($img) ? "<img src=$img ".(strpos($img, 'alt=')?'':" alt='$text' title='$text'")."/>" : '').$text;
            if (!empty($text)) {
                $button = "&nbsp;[&nbsp;$button&nbsp;]&nbsp;";
            }
        }

      // Optionally confirm the request
        if (is_bool($img) && ($confirm = $img)) {
            $onclick = "class='form-submit' title='$text' onclick='return submitConfirm(this);'";
        }

      //if (strpos($url,'?') === 0) $url = b_url::repack($url);
        $reply = x("span class='only_online'", "<a class='mypear_a' ".@$onclick." href='$url'>$button</a>");
        static::_dbg($reply);
        return $reply;
    }

  /**
   *
   */
    static function UL_buttons($submits) {
        if (is_string($submits)) {
            $submits = array($submits);
        }
        return x(
            "div class='centralized'",
            x("ul", b_fmt::joinMap(
                "li style='float:left;margin:2px;list-style:none;background:none'",
                $submits
            ))
        );
    }

  /**
   *
   */
    static function buttons_line($submits, $print = true) {
        if (empty($submits)) {
            $reply = "<!-- empty 'buttons_line' -->\n";
        } else {
            if (!is_array($submits)) {
                $submits = array($submits);
            }
            $reply =
            x("div style='clear:both'", '').
            x(
                'div class="buttons_line only_online"',
                x(
                    'ul',
                    b_fmt::joinMap('li', $submits)
                )
            ).
            x("div style='clear:both'", '');
        }
        if ($print) {
            print "$reply\n";
        } else {
            return $reply;
        }
    }
}
/*
 * Country Codes support
 */
class b_cc
{

    public static $cc = ['AD' => 'Andorra',
                         'AE' => 'United Arab Emirates',
                         'AF' => 'Afghanistan',
                         'AG' => 'Antigua',
                         'AL' => 'Albania',
                         'AM' => 'Armenia',
                         'AN' => 'Netherlands Antilles',
                         'AO' => 'Angola',
                         'AR' => 'Argentina',
                         'AS' => 'American Samoa',
                         'AT' => 'Austria',
                         'AU' => 'Australia',
                         'AW' => 'Aruba',
                         'AZ' => 'Azerbaijan',
                         'BA' => 'Bosnia',
                         'BB' => 'Barbados',
                         'BD' => 'Bangladesh',
                         'BE' => 'Belgium',
                         'BF' => 'Burkina Faso',
                         'BG' => 'Bulgaria',
                         'BH' => 'Bahrain',
                         'BI' => 'Burundi',
                         'BJ' => 'Benin',
                         'BM' => 'Bermuda',
                         'BN' => 'Brunei',
                         'BO' => 'Bolivia',
                         'BR' => 'Brazil',
                         'BS' => 'Bahamas',
                         'BT' => 'Bhutan',
                         'BW' => 'Botswana',
                         'BY' => 'Belarus',
                         'BZ' => 'Belize',
                         'CA' => 'Canada',
                         'CC' => 'Cocos Islands',
                         'CD' => 'Democratic Republic of Congo',
                         'CF' => 'Central African Republic',
                         'CG' => 'Congo',
                         'CH' => 'Switzerland',
                         'CI' => 'Ivory Coast',
                         'CL' => 'Chile',
                         'CM' => 'Un. Rep. of Cameroon',
                         'CN' => 'China',
                         'CO' => 'Colombia',
                         'CR' => 'Costa Rica',
                         'CU' => 'Cuba',
                         'CV' => 'Cape Verde',
                         'CY' => 'Cyprus',
                         'CZ' => 'Czech Republic',
                         'DE' => 'Germany',
                         'DJ' => 'Djibouti',
                         'DK' => 'Denmark',
                         'DM' => 'Dominica',
                         'DO' => 'Dominican Republic',
                         'DZ' => 'Algeria',
                         'EC' => 'Ecuador',
                         'EE' => 'Estonia',
                         'EG' => 'Egypt',
                         'EH' => 'Western Sahara',
                         'ER' => 'Eritrea',
                         'ES' => 'Spain',
                         'ET' => 'Ethiopia',
                         'FI' => 'Finland',
                         'FJ' => 'Fiji',
                         'FR' => 'France',
                         'GA' => 'Gabon',
                         'GB' => 'United Kingdom',
                         'GD' => 'Grenada',
                         'GE' => 'Georgia',
                         'GF' => 'French Guiana',
                         'GH' => 'Ghana',
                         'GI' => 'Gibraltar',
                         'GL' => 'Greenland',
                         'GM' => 'Gambia',
                         'GN' => 'Guinea',
                         'GP' => 'Guadeloupe',
                         'GQ' => 'Equatorial Guinea',
                         'GR' => 'Greece',
                         'GT' => 'Guatemala',
                         'GU' => 'Guam',
                         'GW' => 'Guinea Bissau',
                         'GY' => 'Guyana',
                         'HK' => 'Hongkong',
                         'HN' => 'Honduras',
                         'HR' => 'Croatia',
                         'HT' => 'Haiti',
                         'HU' => 'Hungary',
                         'ID' => 'Indonesia',
                         'IE' => 'Ireland',
                         'IL' => 'Israel',
                         'IN' => 'India',
                         'IQ' => 'Iraq',
                         'IR' => 'Iran',
                         'IS' => 'Iceland',
                         'IT' => 'Italy',
                         'JM' => 'Jamaica',
                         'JO' => 'Jordan',
                         'JP' => 'Japan',
                         'KE' => 'Kenya',
                         'KG' => 'Kyrgyzstan',
                         'KH' => 'Democratic Kampuchea',
                         'KM' => 'Comoros',
                         'KP' => 'Dem. Peo. Rep. of Korea',
                         'KR' => 'Republic of Korea',
                         'KW' => 'Kuwait',
                         'KY' => 'Cayman Islands',
                         'KZ' => 'Kazakhstan',
                         'LA' => 'Lao People\'s Dem. Rep.',
                         'LB' => 'Lebanon',
                         'LC' => 'Saint Lucia',
                         'LI' => 'Liechtenstein',
                         'LK' => 'Sri Lanka',
                         'LR' => 'Liberia',
                         'LS' => 'Lesotho',
                         'LT' => 'Lithuania',
                         'LU' => 'Luxemburg',
                         'LV' => 'Latvia',
                         'LY' => 'Libyan Arab Jamahirya',
                         'MA' => 'Morocco',
                         'MB' => 'Montenegro',
                         'MC' => 'Monaco',
                         'MD' => 'Moldova',
                         'MG' => 'Madagascar',
                         'MK' => 'Macedonia FYROM',
                         'ML' => 'Mali',
                         'MM' => 'Myanamar',
                         'MN' => 'Mongolia',
                         'MO' => 'Macau',
                         'MQ' => 'Martinique',
                         'MR' => 'Mauritania',
                         'MT' => 'Malta',
                         'MU' => 'Mauritius',
                         'MV' => 'Maldives',
                         'MW' => 'Malawi',
                         'MX' => 'Mexico',
                         'MY' => 'Malaysia',
                         'MZ' => 'Mozambique',
                         'NA' => 'Namibia',
                         'NC' => 'New Caledonia',
                         'NE' => 'Niger',
                         'NG' => 'Nigeria',
                         'NI' => 'Nicaragua',
                         'NL' => 'Netherlands',
                         'NO' => 'Norway',
                         'NP' => 'Nepal',
                         'NZ' => 'New Zealand',
                         'OM' => 'Oman',
                         'PA' => 'Panama',
                         'PE' => 'Peru',
                         'PF' => 'French Polynesia',
                         'PG' => 'Papua New Guinea',
                         'PH' => 'Philippines',
                         'PK' => 'Pakistan',
                         'PL' => 'Poland',
                         'PR' => 'Puerto Rico',
                         'PS' => 'Palestine',
                         'PT' => 'Portugal',
                         'PY' => 'Paraguay',
                         'QA' => 'Qatar',
                         'RE' => 'Reunion',
                         'RO' => 'Romania',
                         'RU' => 'Russia',
                         'RW' => 'Rwanda',
                         'SA' => 'Saudi Arabia',
                         'SC' => 'Seychelles',
                         'SD' => 'Sudan',
                         'SE' => 'Sweden',
                         'SG' => 'Singapore',
                         'SI' => 'Slovenia',
                         'SK' => 'Slovakia',
                         'SL' => 'Sierra Leone',
                         'SM' => 'San Marino',
                         'SN' => 'Senegal',
                         'SO' => 'Somalia',
                         'SR' => 'Surinam',
                         'ST' => 'Sao Tome Principe',
                         'SU' => 'USSR',
                         'SV' => 'El Salvador',
                         'SX' => 'Serbia',
                         'SY' => 'Syrien Arab Republic',
                         'SZ' => 'Swaziland',
                         'TD' => 'Chad',
                         'TG' => 'Togo',
                         'TH' => 'Thailand',
                         'TJ' => 'Tajikistan',
                         'TM' => 'Turkmenistan',
                         'TN' => 'Tunisia',
                         'TO' => 'Tonga',
                         'TR' => 'Turkey',
                         'TT' => 'Trinidad Tobago',
                         'TW' => 'Taiwan',
                         'TZ' => 'Un. Rep. of Tanzania',
                         'UA' => 'Ukraine',
                         'UG' => 'Uganda',
                         'US' => 'USA',
                         'UY' => 'Uruguay',
                         'UZ' => 'Uzbekistan',
                         'VA' => 'Vatican City State',
                         'VE' => 'Venezuela',
                         'VG' => 'British Virgin Islands',
                         'VN' => 'Vietnam',
                         'XX' => 'Multiple Countries',
                         'YD' => 'Yemen Democratic',
                         'YE' => 'Yemen',
                         'YU' => 'Serbia And Montenegro',
                         'ZA' => 'South Africa',
                         'ZM' => 'Zambia',
                         'ZW' => 'Zimbabwe',
    ];
    
    /**
     *
     */
    static function getCC($country_name){
        self::init();
        foreach (self::$cc2country as $cc=>$name){
            if (strToLower($country_name)===strToLower($name)) $reply = $cc;
            if (strToLower($country_name)===strToLower($cc))   $reply = $cc;
        }
        if (empty($reply))  $reply = '';
        if (cnf_show_c) b_debug::xxx("$reply ");
        return $reply;
    }
  
  /**
   * Get country name from county_code and/or locale
   *
   * @return String
   */
    static function get($country_code, $only_validate = false) {
        static $cc_lowerCase = [];
        if (empty($cc_lowerCase)) {
            foreach (self::$cc as $cc => $country) {
                $cc_lowerCase[strToLower($cc)] = strToLower($country);
            }
        }
      // Protect against typos
        $cc = strToLower($country_code);
        if (!empty($reply = @$cc_lowerCase[$cc])) {
            $valid = true;
        } else {
            if (in_array($cc, array_values($cc_lowerCase))) {
                $valid = true;
                $reply = $cc;
            } else {
                $valid = false;
                say::warning("Unexpected country_code \"$country_code\"");
                $reply = '';
            }
        }
        if (empty($reply) && is_numeric($country_code)) {
            if (($c = pages()->get($country_code))->id) {
                $valid = true;
                $reply = $c->name;
            }
        }
        $reply = b_fmt::ucWords($reply);
        if ($only_validate) {
            return $valid;
        }
        return $reply;
    }

  /**
   *
   */
    static function autocomplete($name) {
        foreach (self::$cc as $cc => $cname) {
            $names[] = "\"$cname\"";
        }
        bJS()->add_js_inline("$(function(){ var names=[".join(',', $names)."];$('#$name').autocomplete({source:names});});");
    }
}

/**
 * Timing utility wrapper
 */
function bTiming() {
    static $class = null;
    if ($class === null) {
        $class = new b_timing();
    }
    return $class;
}

/**
 * Timing utility
 */
class b_timing
{

    var $call_stack = array();
    var $tags = array();
    var $cpus = array();
    var $shet = array();
    var $cald = array();
    var $level= 0;


    function __construct() {
        $this->time0 = b_time::microtime(true);
        $this->doTheWork = (b_cnf::get('timing') && !cnf_inside_fb);
    }

    function cpu($identificationString = null) {
        if ($this->doTheWork) {
            if (!empty($identificationString)) {
                if (is_array($identificationString)) {
                    $identificationString = join('.', $identificationString);
                }

                $this->call_stack[] = $identificationString;
                if (count($this->call_stack)>33) {
                    b_debug::internalError('too deep call stack... why?', $this->call_stack);
                }

                $id = join('/', array_merge($this->call_stack));

                $this->times0[$id][] = b_time::microtime(true);
                $this->cald[$id] = max(count(@$this->times0[$id]), @$this->cald[$id]);
            } else {
                $id = join('/', array_merge($this->call_stack));
                if (empty($this->times0[$id])) {
                    $this->times0[$id] = array();
                }
                array_pop($this->call_stack);

                $cpu = b_time::microtime(true) - array_pop($this->times0[$id]);
                if (!isset($this->cpuMin[$id])) {
                    $this->cpuMin[$id] = $cpu;
                }
                @$this->cpus[$id] += $cpu;
                $this->cpuMin[$id] = min($cpu, $this->cpuMin[$id]);
                if (@$this->cpuMax[$id] < $cpu) {
                    $this->cpuMax[$id] = $cpu;
                }
                @$this->shet[$id]++;
            }
        }
    }

  /*
   *
   */
    function show() {
        static $own_level = array('bAuth',
                  'transaction',
                  'load_located_file',
                  'getValue','getMembers','getMember','get_memberInfo','getButton',
                  'qSELECT*','qSELECTx','qNEXT','qUPDATE','qALTER','qINSERT',
                  'outOfScope','e_ID');

        if ($this->doTheWork && !empty($this->cpus)) {
            $tt = new b_table();
            $tt->tro();
            $tt->tdo();

          // timings
            $t  = new b_table_zebra(array('id' =>'',
                    'pr' =>'CPU<br/>%',
                    'cpu'=>'CPU<br/>sec.',
                    'n'  =>'N<br/>calls',
                    's'  =>'mSecs<br/>aver.',
                    'mx' =>'mSecs<br/>range',
                    'fr' =>'form',
                    ));
            $t->showLineCounter = false;
            $keys = array_keys($this->cpus);
            foreach ($keys as $id) {
                foreach ($own_level as $item) {
                    if (strpos($id, $item) !== (strlen($id)-strlen($item))) {
                        continue;
                    }
                    $id_virt = '___'.$item.'___';
                    if (empty($this->cpuMin[$id_virt])) {
                        $this->cpuMin[$id_virt] = $this->cpuMin[$id];
                    }
                    if (empty($this->cpuMax[$id_virt])) {
                        $this->cpuMax[$id_virt] = 0;
                    }
                    @$this->cpus[$id_virt] += $this->cpus[$id];
                    @$this->shet[$id_virt] += $this->shet[$id];
                    $this->cpuMin[$id_virt] = min(@$this->cpuMin[$id], @$this->cpuMin[$id_virt]);
                    $this->cpuMax[$id_virt] = max(@$this->cpuMax[$id], @$this->cpuMax[$id_virt]);
                    break;
                }
            }

            ksort($this->cpus);
            $lost = $this->cpus[''] = b_time::microtime('getTotal');
            foreach (array_keys($this->cpus) as $id) {
                $pr = (int)(0.5+$this->cpus[$id]*100/$this->cpus['']);
                $cpu= (float)$this->cpus[$id]/(float)b_time::microtime('getNorma');
                $strong = 'x';
                if (empty($id)) {
                      $cpul = (float)$lost/(float)b_time::microtime('getNorma');
                      $prl = (int)(0.5+$lost*100/$this->cpus['']);
                      print "<tr><td></td></tr>";
                      $t->prt(array('id' =>x('em', '??? black hole'),
                    'cpu'=>x('em', $cpul),
                    'pr' =>x('em', "<b>$prl%</b>")));
                            print "<tr><td></td></tr>";
                } elseif (strpos($id, '/')===false && strpos($id, '___')===false) {
                        $strong = 'strong';
                        $lost = $lost - $this->cpus[$id];
                    if ($pr > 0) {
                        print "<tr><td></td></tr>";
                    }
                }
          // Don't show entries with less then 1% of the total cpu
                if ($pr > 0) {
                      $resultat = array('id' =>x($strong, preg_replace(
                          '/bDB_myBasicClass.|bHolder_|bList_|bUnit_|bForm_|getInstance|\(|\)/',
                          '',
                          str_replace(
                              'processTemplates',
                              'templates',
                              str_replace(
                                  '/load_located_file',
                                  '/load',
                                  str_replace(
                                      '____',
                                      '___locateAndInclude___',
                                      str_replace(
                                          'locateAndInclude',
                                          'l&i',
                                          str_replace(
                                              '___locateAndInclude___',
                                              '____',
                                              str_replace(
                                                  '__construct',
                                                  'NEW',
                                                  str_replace(
                                                      'isWritable',
                                                      'isWrtbl',
                                                      str_replace('::', '.', $id)
                                                  )
                                              )
                                          )
                                      )
                                  )
                              )
                          )
                      )),
                      'n'  =>x($strong, @$this->shet[$id]),
                      'mx' =>(@$this->shet[$id] > 1 ? x($strong, $this->cpuMin[$id].'-'.$this->cpuMax[$id]) : ''),
                      's'  =>@$this->shet[$id] ? x($strong, (int)(0.5+$this->cpus[$id]/$this->shet[$id])) : '',
                      'cpu'=>x($strong, $cpu),
                      'pr' =>(empty($pr)  ? '' : x($strong, "<b>$pr%</b>")),
                      'd'  =>@$this->cald[$id]>1 ? x($strong, $this->cald[$id]) : '',
                      );
                      if (cnf_CLI) {
                          echo tidy_dump($resultat);
                      } else {
                          $t->prt($resultat);
                      }
                }
            }
            $t->close();

            $tt->tdc();
            $tt->tdo();

          // counters
            if (b_cnf::get('timing')=='all') {
                $t = new b_table_zebra(array('id' =>'',
                     't'  =>'Time tag'));
                $level= 1;
                foreach ($this->tags as $tag) {
                    foreach ($tag as $id => $timeStemp) {
                        if (preg_match('/END/', $id)) {
                            $level--;
                        }
                        $t->prt(array('id' =>$this->_prefix($level).$id,
                        't'  =>(float)($timeStemp - $this->time0)/(float)b_time::microtime('getNorma')));
                        if (preg_match('/START/', $id)) {
                            $level++;
                        }
                    }
                }
                $t->close();
            }
            $tt->tdc();
            $tt->trc();
            $tt->close();
        }
        $this->cpus = array();

      // bList counters
        ksort(bList::$counterL);
        ksort(bUnit::$counterU);
        new b_table_simple(
            array(tidy_dump(bList::$counterL, 'bList', true),
                 tidy_dump(bUnit::$counterU, 'bUnit', true)),
            "id='counters' class='centralized' style='width:90%;'"
        );
    }

    function tag() {
    }

    protected function _prefix($level) {
        $s='';
        for ($n=0; $n< $level; $n++) {
            $s .= '&nbsp;&nbsp;&nbsp;';
        }
        return $s;
    }

    protected function _id($identificationString, $class = '') {
        $i = array();
        if (is_object($class)) {
            if (!empty($class->ID)) {
                $i[] = $class->ID;
            } elseif (!empty($class->parent_ID)) {
                $i[] = $class->parent_ID;
            }
            if ($identificationString) {
                $i[] = $identificationString;
            }
            return get_class($class).x('(', join(',', $i));
        } else {
            return $identificationString;
        }
    }
}

/*
 *
 */
function bCount() {
    static $class = null;
    if ($class === null) {
        $class = new counter();
    }
    return $class;
}

/*
 * checkBox pane
 */
class b_checkBox
{

  /*
   *
   */
    public static $ON = array('on','yes');
    public static $OFF= array('off','no');

    private static $cb_ID = '_checkbox_';

  /*
   * We need to distinguish between multiple check-boxes
   */
    private static $prefix = '';
    public static function set_prefix($prefix) {
        self::$prefix = $prefix;
        self::$cb_ID  = $prefix . '_checkbox_';
    }

    private static function id($id) {
        return self::$cb_ID . str_replace(self::$cb_ID, '', $id);
    }

  /**
   */
    public static function create(array $ids = [], string $separator = '<br/>', string $onClick = 'default', string $classes = '') {
        static $createCounter = 0;
        if (empty($ids)) {
            return;
        }
        if ($onClick === 'default') {
            $onClick = "onclick='submit()' onchange='submit()' class='form-submit'";
        }

        $boxes = [];
        foreach ($ids as $id => $text) {
            $_ID = self::id($id);
            $isOn= self::isOn($id);
            if (!empty(self::$prefix)) {
                $boxes[] = "<input name='".self::$prefix."' value='b_checkBox' type='hidden'/>";
            }
            $boxes[] =
            "<input name='".$_ID."' type='checkbox' $isOn $onClick />$text".
            "<input name='".$_ID."_cb_expected' type='hidden' value='".self::$OFF[0]."' />";
        }
        return x(
            "span class='align_left only_online".($classes ? " $classes" : "")."'",
            x(
                $onClick?"form name='selectBox".(++$createCounter)."' method='post'":'',
                join($separator, $boxes)
            )
        );
    }

  /*
   * Return array of the selected checkboxes
   */
    public static function whatIsOn($prefix = '') {
        $reply = [];
        if (!empty($prefix)) {
            b_checkBox::set_prefix($prefix);
        }
        foreach (preg_grep('/^'.self::$cb_ID.'/', array_keys($_POST)) as $k) {
            $id = str_replace(self::$cb_ID, '', $k);
            if (self::isOn($id)) {
                $reply[] = $id;
            }
        }
        b_debug::_dbg($reply);
        return $reply;
    }

    public static function isOff($value) {
        $reply = empty($value) || in_array(strToLower($value), self::$OFF);
        return $reply;
    }

    public static function isOn($id) {
        $_ID = self::id($id);
        $reply = (bool)b_cnf::get($_ID);
      //b_debug::_dbg($reply);
        return ($reply ? 'checked' : '');
    }

  /*
   * Set the checkbox value
   */
    public static function set($id, $value = null) {
        $_ID = self::id($id);
        if ($value != self::$OFF[0]) {
            $value = self::$ON[0];
        }
        $_POST[$_ID] = $value;
        b_cnf::set($_ID, $value);
    }
}
