<?php
if ($user->is_loggedin() !="") {
	session_destroy();
	$user->redirect('index.php?p=Users');
} else	{
	$user->redirect('index.php?p=Users');
}