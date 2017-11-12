<?php
$Scripts = '<script type="text/javascript" src="assets/js/jscolor.min.js"></script>
        <script src="assets/js/charCreate.js" type="text/javascript"></script>
        <script src="assets/js/charCreateAjax.js" type="text/javascript"></script>';

$CSS = '<link href="assets/css/charCreate.css" rel="stylesheet" type="text/css" />';
$BGs = ReadInfo("*", "cms_bg_backgrounds", "ORDER BY `background` ASC", "all");
$Bonds = ReadInfo("*", "cms_bg_bonds", "", "all");
$Features = ReadInfo("*", "cms_bg_features", "", "all");
$Flaws = ReadInfo("*", "cms_bg_flaws", "", "all");
$Ideals = ReadInfo("*", "cms_bg_ideals", "", "all");
$Traits = ReadInfo("*", "cms_bg_traits", "", "all");
$Skills = ReadInfo("*", "cms_dnd_skills", "", "all");
$BGSkills = ReadInfo("*", "cms_bg_skills", "", "all");
$ClassSkills = ReadInfo("*", "cms_class_skills", '', "all");

if (isset($_POST['AddChar'])) {
    $stmt = $dbh->prepare('INSERT INTO cms_dnd_char (
        `Name`, `Surname`, `Class`, `Background`, `Race`, `Alignment`, `Owner`, `Gender`, `aStr`, `aDex`, `aCon`, `aInt`, `aWis`, `aCha`
        ) VALUES (
		:name, :surname, :class, :bg, :race, :align, :owner, :gender, :str, :dex, :con, :int, :wis, :cha)');
	$stmt->execute([
		'name'		 => $_POST['CharName'],
		'surname'	 => $_POST['Surname'],
        'class'		 => $_POST['Class'],
        'bg'		 => $_POST['Background'],
        'race'		 => $_POST['Race'],
        'align'		 => $_POST['alignment'],
        'owner'		 => $_POST['Owner'],
        'gender'	 => $_POST['Gender'],
        'str'		 => $_POST['Str-total'],
        'dex'		 => $_POST['Dex-total'],
        'con'		 => $_POST['Con-total'],
        'int'		 => $_POST['Int-total'],
        'wis'		 => $_POST['Wis-total'],
        'cha'		 => $_POST['Cha-total']
	]);
    print "<pre>";
    print_r($_POST);
    print "</pre>";
}

$twig->addGlobal('BGs', $BGs);
$twig->addGlobal('Bonds', $Bonds);
$twig->addGlobal('Features', $Features);
$twig->addGlobal('Flaws', $Flaws);
$twig->addGlobal('Ideals', $Ideals);
$twig->addGlobal('Traits', $Traits);
$twig->addGlobal('Skills', $Skills);
$twig->addGlobal('BGSkills', $BGSkills);
$twig->addGlobal('ClassSkills', $ClassSkills);
