<?php
if (isset($_GET['ID'])) {$ID = $_GET['ID'];} else {$ID = '1';}
$CSS = '<link href="assets/css/charCreate.css" rel="stylesheet" type="text/css" />';
$CharList = ReadInfo("*", "cms_dnd_char", "WHERE `ID` = $ID", "a");
if ($CharList['Owner'] == $UserID) {$PTpl = 'view';}
else {$PTpl = 'view';}

$Class = ReadInfo("`Name`, `HD`", "cms_classes", "WHERE `ID` = '".$CharList['Class']."'", "a");
$Race = ReadInfo("`rName`, `rSubName`, `rSize`, `rSpeed`, `Darkvision`", "cms_races", "WHERE `ID` = '".$CharList['Race']."'", "a");
$BG = ReadInfo("`background`", "cms_bg_backgrounds", "WHERE `ID` = '".$CharList['Background']."'", "a");
$Owner = ReadInfo("`UserName`", "cms_users", "WHERE `ID` = '".$CharList['Owner']."'", "a");

$Skills = ReadInfo("*", "cms_dnd_skills", "", "all");

if ($Race['rSubName'] == '') {$RaceDisp = $Race['rName'];} else {$RaceDisp = $Race['rSubName']." ".$Race['rName'];}

$StrMod = (($CharList['aStr']-10)/2);

$CharInfo = array(
    "Name"=>$CharList['Name'],
    "Surname"=>$CharList['Surname'],
    "Class"=>$Class['Name'],
    "Background"=>$BG['background'],
    "Owner"=>$Owner['UserName'],
    "Gender"=>$CharList['Gender'],
    "Alignment"=>str_replace($AlgnS, $AlgnL, $CharList['Alignment']),
    "Race"=>$RaceDisp,
    "HitDice"=>$Class['HD'],
    "Exp"=>$CharList['Exp'],
    "Stats" => array(
        "Str" => array("Name" => 'Strength', "SName" => 'Str', "Value" =>$CharList['aStr'], "Mod" => StatMod($CharList['aStr'])),
        "Dex" => array("Name" => 'Dexterity', "SName" => 'Dex', "Value" =>$CharList['aDex'], "Mod" => StatMod($CharList['aDex'])),
        "Con" => array("Name" => 'Constitution', "SName" => 'Con', "Value" =>$CharList['aCon'], "Mod" => StatMod($CharList['aCon'])),
        "Int" => array("Name" => 'Intelligence', "SName" => 'Int', "Value" =>$CharList['aInt'], "Mod" => StatMod($CharList['aInt'])),
        "Wis" => array("Name" => 'Wisdom', "SName" => 'Wis', "Value" =>$CharList['aWis'], "Mod" => StatMod($CharList['aWis'])),
        "Cha" => array("Name" => 'Charisma', "SName" => 'Cha', "Value" =>$CharList['aCha'], "Mod" => StatMod($CharList['aCha']))
    ),
    "StrMod" => StatMod($CharList['aStr'])
);

$twig->addGlobal('Stats', $Stats);
$twig->addGlobal('Char', $CharInfo);


$twig->addGlobal('ViewBasics', "dnd/charview/char.basics.".$PTpl.".html");
    $twig->addGlobal('StatBlock', "dnd/charview/char.stats.".$PTpl.".html");
    $twig->addGlobal('SaveBlock', "dnd/charview/char.saves.".$PTpl.".html");
    $twig->addGlobal('SkillBlock', "dnd/charview/char.skills.".$PTpl.".html");
$twig->addGlobal('ViewEquip', "dnd/charview/char.basics.".$PTpl.".html");
$twig->addGlobal('ViewDescrip', "dnd/charview/char.basics.".$PTpl.".html");


$twig->addGlobal('Skills', $Skills);