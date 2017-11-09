<?php
if (isset($_POST['update'])) {
	$ssettings = array ();
	$ssettings[] = array ('Name' => 'Sitename', 'Value' => $_POST['sitename']);
	$ssettings[] = array ('Name' => 'Timezone', 'Value' => $_POST['timezone']);
	$ssettings[] = array ('Name' => 'Template', 'Value' => $_POST['template']);
	$ssettings[] = array ('Name' => 'Theme', 'Value' => $_POST['theme']);
	$ssettings[] = array ('Name' => 'Articles', 'Value' => $_POST['articles']);

	foreach ($ssettings as $s) {
		$stmt = $dbh->prepare('UPDATE cms_config SET `Value` = :value WHERE `Name` = :name');
		$stmt->execute([
			'name'	 => $s['Name'],
			'value'	 => $s['Value']
		]);
	}
	$notice = "<div class='notice success'><i class='icon-ok'></i>Site settings successfully updated.<a class='alert-close icon-remove'></a></div>";
} else {

}

$tpldir = './templates/';
$files1 = scandir($tpldir);
$files1 = array_diff(scandir($tpldir), array ('..', '.'));

$TPList = '';
foreach ($files1 as $t) {
	$TPList .= "<option>$t</option>";
}

//$Content .= ServerToLocal('CAT', 'M d Y h:mA')." ".date('H:i A', time() + (3600*2))."<br />";
$themes = '';
$sql = "SELECT * FROM cms_themes";
$stmt = $dbh->prepare($sql);
$stmt->execute();
$res = $stmt->fetchAll();
foreach ($res as $a) {
	if ($a['Name'] ==$Theme['Value']) {
		$sel = ' selected';
	} else {
		$sel = '';
	}
	$themes .= "<option value='$a[Name]'$sel>".ucwords($a['Name'])."</option>";
}

//$tpl->assign('Themes', $themes);
//$tpl->assign('TPList', $TPList);

$twig->addGlobal('TPList', $TPList);
$twig->addGlobal('Themes', $themes);
$twig->addGlobal('Notice', $notice);
