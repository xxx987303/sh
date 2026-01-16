<?php namespace ProcessWire;
/**
 *
 * Functions which are missing in the current php version.
 * (It happens that the old Macs can't be upgraded to the latest PHP version)
 */

if (!function_exists('str_contains')) {
    function str_contains(string $haystack, string $needle) {
	return (strpos($haystack, $needle) !== false);
    }
}

if (!function_exists('str_starts_with')) {
    function str_starts_with(string $haystack, string $needle) {
	return (strpos($haystack, $needle) === 0);
    }
}
