<?php
$MenuL = ReadInfo("*", "cms_menu_main", "", "all");
$Menu = array();

foreach($MenuL as $a) {
	$Menu[] = array(
		'ID' => $a['ID'],
        'Children' => $a['Children'],
		'Name' => $a['Name'],
		'Link' => $a['Link'],
		'File' => $a['File'],
        'Status' => $a['Status'],
        'Icon' => $a['Icon'],
		'Template' => $a['Template'],
        'Protected' => $a['Protected'],
        'Access' => $a['Access'],
	);
}

$SubMenuL = ReadInfo("*", "cms_menu_sub", "", "all");
$SubMenu = array();
foreach($SubMenuL as $a) {
	$SubMenu[] = array(
		'ID' => $a['ID'],
		'Name' => $a['Name'],
        'Parent' => $a['Parent'],
		'Link' => $a['Link'],
        'File' => $a['File'],
        'Status' => $a['Status'],
		'Icon' => $a['Icon'],
        'Template' => $a['Template'],
        'Protected' => $a['Protected'],
		'Access' => $a['Access'],
		'Children' => 0
	);
}

if (isset($_GET['p'])) {$CurrentPage = $_GET['p'];} else {$CurrentPage = 'Home';}
$twig->addGlobal('Menu', $Menu);
$twig->addGlobal('SubMenu', $SubMenu);