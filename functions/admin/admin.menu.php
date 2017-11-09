<?php
if (isset($_POST['AddMain'])) {
	$stmt = $dbh->prepare('INSERT INTO cms_menu_main (`Name`, `Link`, `Icon`, `Access`, `File`, `Template`) VALUES (
		:name, :link, :icon, :access, :file, :template)');
	$link = str_replace(' ', '_', $_POST['mn_name']);
    $link = str_replace('&', 'and', $link);
	$stmt->execute([
		'name'		 => $_POST['mn_name'],
		'link'		 => $link,
		'icon'		 => $_POST['mn_icon'],
		'access'	 => $_POST['mn_access'],
		'file'		 => $_POST['mn_file'],
		'template'	 => $_POST['mn_template']
	]);
	$notice = "<div class='row'><div class='col_12 notice success'><i class='icon-ok'></i>'$_POST[mn_name]' menu item added <a href='#close' class='icon-remove'></a></div></div>";
} elseif (isset($_POST['AddSub'])) {
	$stmt = $dbh->prepare('INSERT INTO cms_menu_sub (`Parent`, `Name`, `Link`, `File`, `Template`, `Access`) VALUES (
		:parent, :name, :link, :file, :template, :access)');
	$link = str_replace(' ', '_', $_POST['s_name']);
	$stmt->execute([
		'parent'	 => $_POST['s_parent'],
		'name'		 => $_POST['s_name'],
		'link'		 => $link,
		'file'		 => $_POST['s_file'],
		'template'	 => $_POST['s_template'],
        'access'	 => $_POST['s_access']
	]);
    $PChildren = ReadInfo("`ID`, `Name`, `Children`", "cms_menu_main", "WHERE `ID` != '$_POST[s_parent]'", "a");
    $PChildren = $PChildren["Children"]+1;
	$sql = $dbh->query("UPDATE cms_menu_main SET `Children` = '$PChildren' WHERE `ID` = $_POST[s_parent]");
	$notice = "<div class='row'><div class='col_12 notice success'><i class='icon-ok'></i>'$_POST[s_name]' sub-menu item added <a href='#close' class='icon-remove'></a></div></div>";
} elseif (isset($_POST['DeleteMenu'])) {
	if ($_POST['Parent'] == 0) {
		$sql = "DELETE FROM cms_menu WHERE `ID` = :ID";
		$stmt = $dbh->prepare($sql);
		$stmt->bindParam(':ID', $_POST['ID']);
		$stmt->execute();
		$notice = "<div class='row'><div class='col_12 notice success'><i class='icon-ok'></i>Successfully deleted the '$_POST[Name]' menu item. <a href='#close' class='alert-close'><i class='icon-remove'></i></a></div></div>";
	} else {
		$sql = "DELETE FROM cms_menu_main WHERE `ID` = :ID";
		$stmt = $dbh->prepare($sql);
		$stmt->bindParam(':ID', $_POST['ID']);
		$stmt->execute();
		$sql = "DELETE FROM cms_menu_sub WHERE `Parent` = :ID";
		$stmt = $dbh->prepare($sql);
		$stmt->bindParam(':ID', $_POST['ID']);
		$stmt->execute();
		$notice = "<div class='row'><div class='col_12 notice success'><i class='icon-ok'></i>Parent: Successfully deleted '$_POST[Name]' and its children. <a href='#close' class='alert-close'><i class='icon-remove'></i></a></div></div>";
	}
} elseif (isset($_POST['EditMenu'])) {
	$stmt = $dbh->prepare("UPDATE cms_menu SET `Name` = :name, `Link` = :link, `File` = :file, `Icon` = :icon, `Template` = :template , `access` = :access WHERE `ID` = :ID");
	$link = str_replace(' ', '_', $_POST['Name']);
	$stmt->bindParam(':ID', $_POST['ID']);
	$stmt->bindParam(':name', $_POST['Name']);
	$stmt->bindParam(':link', $link);
	$stmt->bindParam(':file', $_POST['File']);
	$stmt->bindParam(':icon', $_POST['Icon']);
	$stmt->bindParam(':template', $_POST['Template']);
	$stmt->bindParam(':access', $_POST['Access']);

	//$stmt->execute();
	$notice = "<div class='row'><div class='col_12 notice success'><i class='icon-ok'></i>Successfully editted the '$_POST[Name]' menu item. <a href='#close' class='alert-close'><i class='icon-remove'></i></a></div></div>";
	$notice .= "'$_POST[ID]' '$_POST[Name]' '$link' '$_POST[File]' '$_POST[Icon]' '$_POST[Template]' '$_POST[Access]'";
}else {$notice = '';}

$IconList = array ();
$IconList[] = array ("Name" => 'Cog', 'Value' => 'cog');
$IconList[] = array ("Name" => 'Headphones', 'Value' => 'headphones');
$IconList[] = array ("Name" => 'Heart', 'Value' => 'heart');
$IconList[] = array ("Name" => 'Star', 'Value' => 'star');
$IconList[] = array ("Name" => 'User', 'Value' => 'user');
$IconList[] = array ("Name" => 'Wrench', 'Value' => 'wrench');
$IconList[] = array ("Name" => 'Pencil', 'Value' => 'pencil');
$IconList[] = array ("Name" => 'Chat', 'Value' => 'chat');
$IconList[] = array ("Name" => 'Mail', 'Value' => 'mail-alt');
$IconList[] = array ("Name" => 'Menu', 'Value' => 'Menu');

$ParentsL = ReadInfo("`ID`, `Name`", "cms_menu_main", "WHERE `Protected` != '1'", "all");

$Parents = array ();
foreach ($ParentsL as $a) {
	$Parents[] = array (
		'ID'	 => $a['ID'],
		'Name'	 => $a['Name'],
	);
}
asort($IconList);


$twig->addGlobal('Parents', $Parents);
$twig->addGlobal('IconList', $IconList);
$twig->addGlobal('Notice', $notice);