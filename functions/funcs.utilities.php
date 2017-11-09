<?php
// Simply gets a percentage from a given number.
function Percent($num_amount, $num_total) {
	$count1 = $num_amount/$num_total;
	$count2 = $count1*100;
	$count  = number_format($count2, 0);
	return $count;
}

// Convert a HEX code into an RGB code.
function hex2RGB($hexStr, $returnAsString = false, $seperator = ',') {
	$hexStr = preg_replace("/[^0-9A-Fa-f]/", '', $hexStr);
	$rgbArray = array();
	if(strlen($hexStr)==6) {
		$colorVal          = hexdec($hexStr);
		$rgbArray['red']   = 0xFF &($colorVal>>0x10);
		$rgbArray['green'] = 0xFF &($colorVal>>0x8);
		$rgbArray['blue']  = 0xFF &$colorVal;
	}
	elseif(strlen($hexStr)==3) {
		$rgbArray['red']   = hexdec(str_repeat(substr($hexStr, 0, 1), 2));
		$rgbArray['green'] = hexdec(str_repeat(substr($hexStr, 1, 1), 2));
		$rgbArray['blue']  = hexdec(str_repeat(substr($hexStr, 2, 1), 2));
	}
	else {
		return false;
	}
	return $returnAsString ? implode($seperator, $rgbArray) : $rgbArray;
}
// Adjust HEX code brightness. Used in the colors.php file, within templates, to generate CSS for the default theme.
function adjustBrightness($hex, $steps) {
	$steps = max(-255, min(255, $steps));
	$hex = str_replace('#', '', $hex);
	if (strlen($hex) ==3) {
		$hex = str_repeat(substr($hex, 0, 1), 2).str_repeat(substr($hex, 1, 1), 2).str_repeat(substr($hex, 2, 1), 2);
	}
	$color_parts = str_split($hex, 2);
	$return = '#';
	foreach ($color_parts as $color) {
		$color = hexdec($color); // Convert to decimal
		$color = max(0, min(255, $color+$steps)); // Adjust color
		$return .= str_pad(dechex($color), 2, '0', STR_PAD_LEFT); // Make two char hex code
	}
	return $return;
}

// Converts server time to a user selected timezone. Server time will *always* be UTC.
function ServerToLocal($tz, $format = 'Y-m-d H:i:s') {
	$userTimezone = new DateTimeZone($tz);
	$gmtTimezone = new DateTimeZone('UTC');
	$myDateTime = new DateTime("now", $gmtTimezone);
	$offset = $userTimezone->getOffset($myDateTime);
	$myInterval=DateInterval::createFromDateString((string)$offset . 'seconds');
	$myDateTime->add($myInterval);
	$result = $myDateTime->format($format);
	return $result;
}
// Sort an array
function array_sort_by_column(&$arr, $col, $dir = SORT_ASC) {
    $sort_col = array();
    foreach ($arr as $key=> $row) {
        $sort_col[$key] = $row[$col];
    }

    array_multisort($sort_col, $dir, $arr);
}
// Return the ability modifier for D&D Stats
function StatMod($stat) {
    $mod = floor(($stat-10)/2);
    if ($mod <= 0) {$return = $mod;}
    else {$return = "+$mod";}
    return $return;
}