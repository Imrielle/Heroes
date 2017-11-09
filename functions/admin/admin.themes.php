<?php
$MainC = '#555555';
$BGC = '#333333';
$AC = '#009999';
$FontC = '#CCCCCC';
$LinkC = '#00CED1';

if (isset($_POST['AddTheme'])) {
	$Name = '';
	$notice = "<div class='row'><div class='col_12 notice success'><i class='icon-ok'></i>'$_POST[Name]' Theme Added <a href='#close' class='icon-remove'></a></div></div>";
	$MainC = "#".$_POST['Medium']; $BGC = "#".$_POST['BG']; $AC = "#".$_POST['Accents'];
	$FontC = "#".$_POST['Font']; $LinkC = "#".$_POST['Links'];
	$addtheme = $dbh->prepare('INSERT INTO cms_themes (`Name`, `Medium`, `Accents`, `Background`, `Font`, `Links`)
		VALUES (:name, :medium, :accent, :bg, :font, :link)');
	$addtheme->execute(['name'	 => $_POST['Name'], 'medium' => $MainC, 'accent' => $AC, 'bg'	 => $BGC, 'font' => $FontC,	'link'	 => $LinkC]);
} elseif (isset($_POST['EditTheme'])) {
	$MainC = "#".$_POST['Medium']; $BGC = "#".$_POST['BG']; $AC = "#".$_POST['Accents']; $FontC = "#".$_POST['Font']; $LinkC = "#".$_POST['Link'];
	$stmt = $dbh->prepare("UPDATE cms_themes SET `Background` = :bg, `Font` = :font, `Links` = :link, `Accents` = :accent, `Medium` = :medium WHERE `ID` = :id");
	$stmt->execute(['id' => $_POST['ID'], 'medium' => $MainC, 'accent' => $AC, 'bg'	 => $BGC, 'font' => $FontC,	'link' => $LinkC]);
	$notice = "<div class='row'><div class='col_12 notice success'><i class='icon-ok'></i>Successfully updated the '$_POST[Name]' theme. <a href='#close' class='alert-close'><i class='icon-remove'></i></a></div></div>";
} elseif (isset($_POST['DeleteTheme'])) {
	$sql = "DELETE FROM cms_themes WHERE `ID` = :ID";
	$stmt = $dbh->prepare($sql);
	$stmt->bindParam(':ID', $_POST['ID']);
	$stmt->execute();
	$notice = "<div class='row'><div class='col_12 notice success'><i class='icon-ok'></i>Successfully deleted the '$_POST[Name]' theme. <a href='#close' class='alert-close'><i class='icon-remove'></i></a></div></div>";
} else {
	$notice = '';
}

$themes = array ();
$sql = "SELECT * FROM cms_themes";
$stmt = $dbh->prepare($sql);
$stmt->execute();
$res = $stmt->fetchAll();

foreach ($res as $a) {
	$themes[] = array (
		'ID'		 => $a['ID'],
		'Name'		 => $a['Name'],
		'Medium'	 => $a['Medium'],
		'Accents'	 => $a['Accents'],
		'Dark'		 => $a['Medium'],
		'BG'		 => $a['Background'],
		'Font'		 => $a['Font'],
		'Links'		 => $a['Links']
	);
}

$twig->addGlobal('JSC', "{width:150, padding:0, shadow:false, borderWidth:0, backgroundColor:'transparent', insetColor:'#000'}");
$twig->addGlobal('MainC', $MainC);
$twig->addGlobal('BGC', $BGC);
$twig->addGlobal('AC', $AC);
$twig->addGlobal('FontC', $FontC);
$twig->addGlobal('LinkC', $LinkC);
$twig->addGlobal('Notice', $notice);
$twig->addGlobal('ThemeList', $themes);
