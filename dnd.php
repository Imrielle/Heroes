<?php
	if (isset($_GET['sp'])) {
		$sp = $_GET['sp'];
	} else {
        $sp = 'Main';
	}

$Stats = array();
$Stats[] = array("Name" => 'Strength', "SName" => 'Str');
$Stats[] = array("Name" => 'Dexterity', "SName" => 'Dex');
$Stats[] = array("Name" => 'Constitution', "SName" => 'Con');
$Stats[] = array("Name" => 'Intelligence', "SName" => 'Int');
$Stats[] = array("Name" => 'Wisdom', "SName" => 'Wis');
$Stats[] = array("Name" => 'Charisma', "SName" => 'Cha');

$Classes = ReadInfo("*", "cms_classes", "ORDER BY `Name` ASC", "all");
$Races = ReadInfo("*", "cms_races", "WHERE `Active` = '1' ORDER BY `rName` ASC", "all");
$Armor = ReadInfo("*", "cms_dnd_armor", "ORDER BY `Name` ASC", "all");
$Weapons = ReadInfo("*", "cms_dnd_weapons", "ORDER BY `Name` ASC", "all");
$Tools = ReadInfo("*", "cms_dnd_tools", "ORDER BY `Name` ASC", "all");

//array_sort_by_column($Races, 'rName');

$twig->addGlobal('Stats', $Stats);
$twig->addGlobal('Classes', $Classes);
$twig->addGlobal('Races', $Races);

$twig->addGlobal('Armor', $Armor);
$twig->addGlobal('Weapons', $Weapons);
$twig->addGlobal('Tools', $Tools);

    if ($sp == 'Main') {
        $Title = 'Dungeons and Dragons';
    } else {
        foreach ($SubMenu as $i) {
            if ($i['Parent'] == $PID) {
                switch ($sp) {
                    case $i['Name']:
                        if ($i['Name'] =='Main') {$SubPage = 'Main';} else {$SubPage = " - $i[Name]";}
                        if ($i['Template'] =='') {$tpl = 'dnd/index';} else {$tpl = "".$i['Template'];}
                        if ($i['File'] =='') {} else {
                            include("functions/dnd/dnd.$i[File].php");
                        }
                    break;
                }
            }
        }
	}
