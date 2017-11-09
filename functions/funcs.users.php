<?php
include_once ( __DIR__ .'/class.user.php');
$user = new Users($dbh);
if (!$user->is_loggedin()) {
	$UserStatus = 0;
	$UserAccess = '0';
	$UserTheme = $Theme;
	$UserNick = 'Guest';
	$UserID = '-1';
} else {
	$sql = "SELECT * FROM cms_users WHERE ID='$_SESSION[user_session]'";
	$stmt = $dbh->prepare($sql);
	$stmt->execute();
	$row = $stmt->fetch(PDO::FETCH_ASSOC);

	$UserStatus = 1;
	$UserAccess = $row['UserLevel'];
	$UserTheme = $row['UserTheme'];
	if ($row['UserNick'] == '') {$UserNick = $row['UserName'];}
	else {$UserNick = $row['UserNick'];}
	$UserID = $row['ID'];
}

$twig->addGlobal('UserStatus', $UserStatus);
$twig->addGlobal('UserName', $UserNick);
$twig->addGlobal('UserAccess', $UserAccess);
$twig->addGlobal('UserID', $UserID);
$twig->addGlobal('UserTheme', $UserTheme);