<?php
// Get site settings from database, turn them into variables.
// These variables can be used sitewide, in a variety of pages.
$SiteName = ReadInfo("`Value`", "cms_config", "WHERE `Name` = 'SiteName'", "a");
$Template = ReadInfo("`Value`", "cms_config", "WHERE `Name` = 'Template'", "a");
$Theme = ReadInfo("`Value`", "cms_config", "WHERE `Name` = 'Theme'", "a");
$TimeZone = ReadInfo("`Value`", "cms_config", "WHERE `Name` = 'TimeZone'", "a");
$DateFormat = ReadInfo("`Value`", "cms_config", "WHERE `Name` = 'DateFormat'", "a");
$Articles = ReadInfo("`Value`", "cms_config", "WHERE `Name` = 'Articles'", "a");

// Here, we register the config variables from above to Twig.
// Doing this in this file registers them for every template file.
$twig->addGlobal('SiteName', $SiteName['Value']);
$twig->addGlobal('Template', $Template['Value']);
$twig->addGlobal('Theme', $Theme['Value']);
$twig->addGlobal('TimeZone', $TimeZone['Value']);
$twig->addGlobal('Articles', $Articles['Value']);

$Content = '';
$Notice = '';
$Scripts = '';
$CSS = '';

// Below is a list of Timezones to use in the template files
$TimeZones = array ();
$TimeZones[] = array ('Name' => 'Pacific/Midway', 'Display' => 'UTC -11 ('.date('H:i A', time()+(3600*-11)).')', 'Value' => '-11');
$TimeZones[] = array ('Name' => 'Pacific/Honolulu', 'Display' => 'UTC -10 ('.date('H:i A', time()+(3600*-10)).')', 'Value' => '-10');
$TimeZones[] = array ('Name' => 'America/Anchorage', 'Display' => 'UTC -9 ('.date('H:i A', time()+(3600*-9)).')', 'Value' => '-9');
$TimeZones[] = array ('Name' => 'America/Los_Angeles', 'Display' => 'UTC -8 ('.date('H:i A', time()+(3600*-8)).')', 'Value' => '-8');
$TimeZones[] = array ('Name' => 'America/Denver', 'Display' => 'UTC -7 ('.date('H:i A', time()+(3600*-7)).')', 'Value' => '-7');
$TimeZones[] = array ('Name' => 'America/Arizona', 'Display' => 'UTC -7 ('.date('H:i A', time()+(3600*-7)).') *No DST', 'Value' => '-7');
$TimeZones[] = array ('Name' => 'America/Mexico_City', 'Display' => 'UTC -6 ('.date('H:i A', time()+(3600*-6)).')', 'Value' => '-6');
$TimeZones[] = array ('Name' => 'America/New_York', 'Display' => 'UTC -5 ('.date('H:i A', time()+(3600*-5)).')', 'Value' => '-5');
$TimeZones[] = array ('Name' => 'America/Puerto_Rico', 'Display' => 'UTC -4 ('.date('H:i A', time()+(3600*-4)).')', 'Value' => '-4');
$TimeZones[] = array ('Name' => 'America/Argentina/Buenos_Aires', 'Display' => 'UTC -3 ('.date('H:i A', time()+(3600*-3)).')', 'Value' => '-3');
$TimeZones[] = array ('Name' => 'Atlantic/South_Georgia', 'Display' => 'UTC -2 ('.date('H:i A', time()+(3600*-2)).')', 'Value' => '-2');
$TimeZones[] = array ('Name' => 'Atlantic/Cape_Verde', 'Display' => 'UTC -1 ('.date('H:i A', time()+(3600*-1)).')', 'Value' => '-1');
$TimeZones[] = array ('Name' => 'UTC', 'Display' => 'UTC ('.date('H:i A', time()+(3600*0)).')', 'Value' => '0');
$TimeZones[] = array ('Name' => 'Europe/Berlin', 'Display' => 'UTC +1 ('.date('H:i A', time()+(3600*1)).')', 'Value' => '+1');
$TimeZones[] = array ('Name' => 'Asia/Gaza', 'Display' => 'UTC +2 ('.date('H:i A', time()+(3600*2)).')', 'Value' => '+2');
$TimeZones[] = array ('Name' => 'Europe/Moscow', 'Display' => 'UTC +3 ('.date('H:i A', time()+(3600*3)).')', 'Value' => '+3');
$TimeZones[] = array ('Name' => 'Europe/Samara', 'Display' => 'UTC +4 ('.date('H:i A', time()+(3600*4)).')', 'Value' => '+4');
$TimeZones[] = array ('Name' => 'Indian/Maldives', 'Display' => 'UTC +5 ('.date('H:i A', time()+(3600*5)).')', 'Value' => '+5');
$TimeZones[] = array ('Name' => 'Asia/Dhaka', 'Display' => 'UTC +6 ('.date('H:i A', time()+(3600*6)).')', 'Value' => '+6');
$TimeZones[] = array ('Name' => 'Asia/Bangkok', 'Display' => 'UTC +7 ('.date('H:i A', time()+(3600*7)).')', 'Value' => '+7');
$TimeZones[] = array ('Name' => 'Asia/Hong_Kong', 'Display' => 'UTC +8 ('.date('H:i A', time()+(3600*8)).')', 'Value' => '+8');
$TimeZones[] = array ('Name' => 'Asia/Tokyo', 'Display' => 'UTC +9 ('.date('H:i A', time()+(3600*9)).')', 'Value' => '+9');
$TimeZones[] = array ('Name' => 'Australia/Brisbane', 'Display' => 'UTC +10 ('.date('H:i A', time()+(3600*10)).')', 'Value' => '+10');
$TimeZones[] = array ('Name' => 'Asia/Magadan', 'Display' => 'UTC +11 ('.date('H:i A', time()+(3600*11)).')', 'Value' => '+11');
$TimeZones[] = array ('Name' => 'Pacific/Auckland', 'Display' => 'UTC +12 ('.date('H:i A', time()+(3600*12)).')', 'Value' => '+12');
$TimeZones[] = array ('Name' => 'Pacific/Enderbury', 'Display' => 'UTC +13 ('.date('H:i A', time()+(3600*13)).')', 'Value' => '+13');
$TimeZones[] = array ('Name' => 'Pacific/Kiritimati', 'Display' => 'UTC +14 ('.date('H:i A', time()+(3600*14)).')', 'Value' => '+14');

$twig->addGlobal('TZList', $TimeZones);