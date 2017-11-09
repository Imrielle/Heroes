<?php
include('../funcs.db.php');
// Creating variables so that data can be returned.
if (isset($_POST['Class'])) {$Class = $_POST['Class'];} else {$Class = '1';}
if (isset($_POST['CharName'])) {$Name = $_POST['CharName'];} else {$Name = 'Character';}
if (isset($_POST['Surname'])) {$SurName = $_POST['Surname'];} else {$SurName = 'McNaughty';}
if (isset($_POST['Title'])) {$Title = $_POST['Title'];} else {$Title = 'the Puissant';}
if (isset($_POST['Race'])) {$Race = $_POST['Race'];} else {$Race = '15';}

$Data = array();

$ClassInfo = ReadInfo("*", "cms_classes", " WHERE `ID` = '$Class'", "a");
$ArmorInfo = ReadInfo("`armor_type`", "cms_class_armor_prof", " WHERE `class_id` = '$ClassInfo[ID]' AND `armor_type` != ''", "all");
$WeaponInfo = ReadInfo("*", "cms_class_wpn_prof", " WHERE `class_id` = '$ClassInfo[ID]' AND `wpn_type` != ''", "all");

$Data['Class'] = $Class;
$Data['Name'] = $Name;
$Data['Surname'] = $SurName;
$Data['Title'] = $Title;
$Data['HitDice'] = $ClassInfo['HD'];
$Data['MainStats'] = $ClassInfo['PrimeStats'];
$Data['Source'] = $ClassInfo['Source'];
//$Data['Armor'] = $ArmorInfo['armor_type'];
//$Data['Armor'] = 
foreach ($ArmorInfo as $a) {
    $Data['Armor'][] = $a['armor_type'];
}

foreach ($WeaponInfo as $a) {
    $Data['Weap'][] = $a['wpn_type'];
}

//print "<pre>";
//print_r($Data);
//print "</pre>";

header('Content-type: application/json');
echo json_encode($Data);
