<?php
if ($user->is_loggedin() !="") {
	$user->redirect('index.php?p=Users&sp=Dashboard');
} else	{
}

if (isset($_POST['btn-login'])) {
	$uname = $_POST['txt_uname_email'];
	$umail = $_POST['txt_uname_email'];
	$upass = $_POST['txt_password'];

	if ($user->login($uname, $umail, $upass)) {
		$user->redirect('index.php?p=Users&sp=Dashboard');
	} else {
		$error = "Wrong Details!";
	}
}

if (isset($error)) {
	$Notice = '<div class="notice error"><i class="glyphicon glyphicon-warning-sign"></i> '.$error.'!</div>';
} else {
	$Notice = '';
}

$twig->addGlobal('Notice', $Notice);