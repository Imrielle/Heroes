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
$Content .= '<div class="col_4"></div><div class="col_4"><form method="post">';
if (isset($error)) {
	$Notice = '<div class="notice error"><i class="glyphicon glyphicon-warning-sign"></i> '.$error.'!</div>';
} else {$Notice = '';}
$Content .= '<label for="txt_uname_email">Username or Email:</label>
			<br /><input type="text" name="txt_uname_email" placeholder="Username or E mail ID" required />
			<br /><label for="txt_password">Password:</label>
			<br /><input type="password" name="txt_password" placeholder="Your Password" required />
			<br /><button type="submit" name="btn-login" class="btn btn-block btn-primary"><i class="glyphicon glyphicon-log-in"></i>&nbsp;SIGN IN</button>
			<br /><label>Don\'t have account yet? <a href="index.php?p=Users&sp=Register">Register</a></label>
		</form></div><div class="col_4"></div>';
