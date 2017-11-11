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

$AlgnS = array('LG', 'NG', 'CG', 'LN', 'NN', 'CN', 'LE', 'NE', 'CE');
$AlgnL = array('Lawful Good', 'Neutral Good', 'Chaotic Good', 'Lawful Neutral', 'True Neutral', 'Chaotic Neutral', 'Lawful Evil', 'Neutral Evil', 'Chaotic Evil');

$Classes = ReadInfo("*", "cms_classes", "", "all");
$Races = ReadInfo("*", "cms_races", "WHERE `Active` = '1' ORDER BY `rName` ASC", "all");
$Factions = ReadInfo("*", "cms_dnd_factions", 'ORDER BY `Name`', "all");

//array_sort_by_column($Races, 'rName');


$twig->addGlobal('Stats', $Stats);
$twig->addGlobal('Classes', $Classes);
$twig->addGlobal('Races', $Races);
$twig->addGlobal('Factions', $Factions);

    if ($sp == 'Main') {
        $Title = 'Characters';
        $CharList = ReadInfo("`ID`, `Name`, `Surname`, `Class`, `Race`", "cms_dnd_char", "", "all");
        $twig->addGlobal('Chars', $CharList);
    } else {
        foreach ($SubMenu as $i) {
            if ($i['Parent'] == $PID) {
                switch ($sp) {
                    case $i['Name']:
                        if ($i['Name'] =='Main') {$SubPage = 'Main';} else {$SubPage = " - $i[Name]";}
                        if ($i['Template'] =='') {$tpl = 'dnd/index';} else {$tpl = "".$i['Template'];}
                        if ($i['File'] =='') {
                        } else {
                            include("functions/dnd/dnd.$i[File].php");
                        }
                    break;
                }
            }
        }
	}
