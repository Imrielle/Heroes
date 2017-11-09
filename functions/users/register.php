<?php
if ($user->is_loggedin() !="") {
	$user->redirect('index.php?p=Users&sp=Dashboard');
}
if (isset($_POST['btn-signup'])) {
	$uname = $_POST['txt_uname'];
	$umail = $_POST['txt_umail'];
	$upass = $_POST['txt_upass'];

	if ($uname =="") {
		$error[] = "Please provide a username.";
	} else if ($umail =="") {
		$error[] = "Email required.";
	} else if (!filter_var($umail, FILTER_VALIDATE_EMAIL)) {
		$error[] = 'Please enter a valid email address.';
	} else if ($upass =="") {
		$error[] = "Please provide a password...";
	} else if (strlen($upass)<6) {
		$error[] = "Password must contain at least 6 characters.";
	} else {
		try {
			$stmt = $dbh->prepare("SELECT UserName, UserEmail FROM cms_users WHERE UserName=:uname OR UserEmail=:umail");
			$stmt->execute(array (':uname' => $uname, ':umail' => $umail));
			$row = $stmt->fetch(PDO::FETCH_ASSOC);

			if ($row['UserName'] ==$uname) {
				$error[] = "Sorry, that username already taken.";
			} else if ($row['UserEmail'] ==$umail) {
				$error[] = "Sorry, that email is already registered.";
			} else {
				if ($user->register($fname, $lname, $uname, $umail, $upass)) {
					$user->redirect('index.php?p=Users&sp=Dashboard');
				}
			}
		} catch (PDOException $e) {
			echo $e->getMessage();
		}
	}
} else {
	$uname = '';
	$umail = '';
}
$errortxt = '';
$Content .= '<form method="post">';
if (isset($error)) {
	foreach ($error as $error) {
		$errortxt .= '<div class="notice error"><i class="icon-remove-sign icon-large"></i> '.$error.' <a href="#close" class="icon-remove"><i class="icon-ok icon-large"></i></a></div>';
	}
} else if (isset($_GET['joined'])) {
	$errortxt .= '<div class="notice success"><i class="icon-ok icon-large"></i> Successfully registered <a href="index.php">login</a> here <a href="#close" class="icon-remove"></a></div>';
}

$twig->addGlobal('Error', $errortxt);
$twig->addGlobal('RegUserN', $uname);
$twig->addGlobal('RegUserEm', $umail);