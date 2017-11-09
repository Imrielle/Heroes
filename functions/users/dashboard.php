<?php
if (!$user->is_loggedin()) {
	$user->redirect('index.php?p=Users');
}
if (isset($_POST['btn-update'])) {
	$umail = $_POST['txt_uname_email'];
	$upass = $_POST['txt_password'];
	$unewpass = $_POST['txt_password_new'];

	if ($user->login($uname, $umail, $upass)) {
		$user->redirect('index.php?p=Users&sp=Dashboard');
	} else {
		$error = "Wrong Details!";
	}
}


$Notice = '';
$user_id = $_SESSION['user_session'];
$stmt = $dbh->prepare("SELECT * FROM cms_users WHERE ID=:user_id");
$stmt->execute(array(":user_id" => $user_id));
$userRow = $stmt->fetch(PDO::FETCH_ASSOC);

$twig->addGlobal('Notice', $Notice);
$twig->addGlobal('UserNickD', $userRow['UserNick']);
$twig->addGlobal('UserEmail', $userRow['UserEmail']);
$twig->addGlobal('UserTheme', $userRow['UserTheme']);
$twig->addGlobal('UserAvatar', $userRow['UserAvatar']);
$twig->addGlobal('UserWebpage', $userRow['UserWebpage']);
$twig->addGlobal('UserSteam', $userRow['UserSteam']);
$twig->addGlobal('UserDiscord', $userRow['UserDiscord']);
$twig->addGlobal('UserFaceBook', $userRow['UserFacebook']);
$twig->addGlobal('UserSignature', $userRow['UserSignature']);
$twig->addGlobal('UserLevel', $userRow['UserLevel']);