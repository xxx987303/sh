<?php namespace ProcessWire;
/*
 *
 */
include_once __dir__.'/setKeyValue.php';
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
 *
 */
function pageName($item, $cleanOnly = false) {
    static $maxLength = 33;
    $reply = trim(preg_replace("/ +/", " ",
                               str_ireplace(["(",")",".","*","?","&",","], " ",
                                            preg_replace("/&[a-zA-Z]*;/", " ",
                                                         (is_array($item) ? $item['english'] : $item)
                                            ))));
    if (!$cleanOnly) {
        $reply = sanitizer()->pageName(sanitizer()->transliterate($reply));
        $reply = substr($reply, 0, $maxLength);
    }
    return $reply;
}

/**
 * Create a page if not yet done (hook done by an argument)
 *
 * @param $data array
 * return page|nullPage
 */
function join_keys(Array &$a, String $delim=',') {
    $reply = [];
    foreach ($a as $key=>$value) {
        $reply[] = "$key=>$value";
    }
    return '[' . join($delim, $reply) . ']';
}

/**
 * $direction: 'auto' | encode | decode
 *
 */
function escape_uml($text, $direction='auto', $debug=false) {
    static $TT = [
		'À' => '&Agrave;',   'Á' => '&Aacute;',	  'Â' => '&Acirc;',	    'Ã' => '&Atilde;',  '<' => '&lt;',
		'Ä' => '&Auml;',     'Å' => '&Aring;',	  'à' => '&agrave;',	'á' => '&aacute;',  '>' => '&gt;',
		'â' => '&acirc;',    'ã' => '&atilde;',	  'ä' => '&auml;',	    'å' => '&aring;',   ' ' => '&nbsp;',
		'Æ' => '&AElig;',    'æ' => '&aelig;',	  'ß' => '&szlig;',	    'Ç' => '&Ccedil;',
		'ç' => '&ccedil;',   'È' => '&Egrave;',	  'É' => '&Eacute;',	'Ê' => '&Ecirc;',   '-' => '&#8209;', // '‑' => '&#8209;',
		'Ë' => '&Euml;',     'è' => '&egrave;',	  'é' => '&eacute;',	'ê' => '&ecirc;',   '[' => '&#91;',
        'ë' => '&euml;',     'ƒ' => '&#131;',	  'Ì' => '&Igrave;',	'Í' => '&Iacute;',  ']' => '&#93;',
		'Î' => '&Icirc;',    'Ï' => '&Iuml;',	  'ì' => '&igrave;',	'í' => '&iacute;',
		'î' => '&icirc;',    'ï' => '&iuml;',	  'Ñ' => '&Ntilde;',	'ñ' => '&ntilde;',
		'Ò' => '&Ograve;',   'Ó' => '&Oacute;',	  'Ô' => '&Ocirc;',	    'Õ' => '&Otilde;',
		'Ö' => '&Ouml;',     'ò' => '&ograve;',	  'ó' => '&oacute;',	'ô' => '&ocirc;',
		'õ' => '&otilde;',   'ö' => '&ouml;',	  'Ø' => '&Oslash;',	'ø' => '&oslash;',
		'Œ' => '&#140;',
		'œ' => '&#156;',
		'Š' => '&#138;',
		'š' => '&#154;',
		'Ù' => '&Ugrave;',
		'Ú' => '&Uacute;',
		'Û' => '&Ucirc;',
		'Ü' => '&Uuml;',
		'ù' => '&ugrave;',
		'ú' => '&uacute;',
		'û' => '&ucirc;',
		'ü' => '&uuml;',
		'µ' => '&#181;',
		'×' => '&#215;',
		'Ý' => '&Yacute;',
		'Ÿ' => '&#159;',
		'ý' => '&yacute;',
		'ÿ' => '&yuml;',
		'°' => '&#176;',
		'†' => '&#134;',
		'‡' => '&#135;',
		'±' => '&#177;',
		'«' => '&#171;',
		'»' => '&#187;',
		'¿' => '&#191;',
		'¡' => '&#161;',
        '·' => '&#183;',
		'•' => '&#149;',
		'™' => '&#153;',
		'©' => '&copy;',
		'®' => '&reg;',
		'§' => '&#167;',
		'¶' => '&#182;',
        '"' => '&quot;',
        "'" => '&#039;',
        //'&' => 'QampQ',
    ];

    if ($direction === 'auto') {
        $direction = preg_grep('/&[#A-Za-z0-9]*;/', [$text]) ? 'decode' : 'encode';
    }

    if ($direction === 'encode') {
        $reply = str_replace(['&'], ['&amp;'], $text, $count1);
        $reply = str_replace(array_keys($TT), array_values($TT), $reply, $count2);
        $count = $count1 + $count2;
    } else {
        $reply = str_replace(['&amp;'], ['&'], $text, $count1);
        $reply = str_replace(array_values($TT), array_keys($TT), $reply,  $count2);
        $count = $count1 + $count2;
    }
    if ($debug) printf("------count=%d %s('%s')='%s'\n", $count, $direction, $text, $reply);
    if (0) if (preg_match("/&[\w\#]*;/",$reply)) {
            tidy_dump(diff(preg_split("/[\n\s]/",$text),
                           preg_split("/[\n\s]/",$reply)));
            echo      htmlDiff($text,$reply);
            abortIt();
        }
    return $reply;
}

/**
 */
function joinX(Array $a, $skipEmpty=true){
    $r = "";
    foreach($a as $k=>$v) {
	$v = trim($v);
	if ($skipEmpty && empty($v) && $v !== 0 && $v !== '0') continue;
	$r .= "[$k]=>$v,";
    }
    return trim($r,',');
}

/*
 *
 */
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
		if (empty($arg)) $arg = "";
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
                //$reply = SSN::ssn2birthDate($date);
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
        } elseif (false && SSN::is_valid($arg, 'check_only')) {
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
