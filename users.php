<?php
if (isset($_GET['sp'])) {
	$sp = $_GET['sp'];
} else {
	$sp = '';
}

switch ($sp) {
	case "Dashboard" :
		$SubPage = ' - Dashboard';
		$tpl = 'users/dashboard';
		include('functions/users/dashboard.php');
		break;
	case "Users" :
		$SubPage = ' - Member List';
		$tpl = 'users/memberlist';
		$sql = "SELECT * FROM `cms_users` ORDER BY `ID` ASC";
		$stmt = $dbh->prepare($sql);
		$stmt->execute();
		$result = $stmt->fetchAll();
		break;
	case "Login" :
		$SubPage = ' - Login';
		$tpl = 'users/signin';
		include('functions/users/index.php');
		break;
	case "Logout" :
		$SubPage = 'Logout';
		include('functions/users/logout.php');
		break;
	case "Register" :
		$SubPage = ' - Register';
		$tpl = 'users/register';
		include('functions/users/register.php');
		break;
	case "SignIn" :
		$SubPage = ' - Sign In';
		$tpl = 'users/signin';
		include('functions/users/signin.php');
		break;
    case "SignOut" :
		$SubPage = ' - Sign Out';
		include('functions/users/logout.php');
		break;
	default :
		$SubPage = ' - Sign In';
		$tpl = 'users/signin';
		include('functions/users/signin.php');
		break;
}