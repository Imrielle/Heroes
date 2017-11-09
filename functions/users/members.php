<?php
$sql = "SELECT * FROM `cms_users` ORDER BY `ID` ASC";
$stmt = $dbh->prepare($sql);
$stmt->execute();
$result  = $stmt->fetchAll();

$tpl->assign('UserList', $result);
?>