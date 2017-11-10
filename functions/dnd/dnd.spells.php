<?php
$Level0 = ReadInfo("*", "cms_dnd_spells", "WHERE `Level` = 'Cantrip' ORDER BY `ID` ASC", "all");
$Level1 = ReadInfo("*", "cms_dnd_spells", "WHERE `Level` = '1st-level' ORDER BY `ID` ASC", "all");
$Level2 = ReadInfo("*", "cms_dnd_spells", "WHERE `Level` = '2nd-level' ORDER BY `ID` ASC", "all");
$Level3 = ReadInfo("*", "cms_dnd_spells", "WHERE `Level` = '3rd-level' ORDER BY `ID` ASC", "all");
$Level4 = ReadInfo("*", "cms_dnd_spells", "WHERE `Level` = '4th-level' ORDER BY `ID` ASC", "all");
$Level5 = ReadInfo("*", "cms_dnd_spells", "WHERE `Level` = '5th-level' ORDER BY `ID` ASC", "all");
$Level6 = ReadInfo("*", "cms_dnd_spells", "WHERE `Level` = '6th-level' ORDER BY `ID` ASC", "all");
$Level7 = ReadInfo("*", "cms_dnd_spells", "WHERE `Level` = '7th-level' ORDER BY `ID` ASC", "all");
$Level8 = ReadInfo("*", "cms_dnd_spells", "WHERE `Level` = '8th-level' ORDER BY `ID` ASC", "all");
$Level9 = ReadInfo("*", "cms_dnd_spells", "WHERE `Level` = '9th-level' ORDER BY `ID` ASC", "all");

$Levels = array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9);

$twig->addGlobal('Levels', $Levels);
    
$twig->addGlobal('Level0', $Level0);
$twig->addGlobal('Level1', $Level1);
$twig->addGlobal('Level2', $Level2);
$twig->addGlobal('Level3', $Level3);
$twig->addGlobal('Level4', $Level4);
$twig->addGlobal('Level5', $Level5);
$twig->addGlobal('Level6', $Level6);
$twig->addGlobal('Level7', $Level7);
$twig->addGlobal('Level8', $Level8);
$twig->addGlobal('Level9', $Level9);