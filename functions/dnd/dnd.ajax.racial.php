<?php
include('../funcs.db.php');
$Race = ReadInfo("*", "cms_races", "WHERE `ID` = '".$_POST['Race']."' ORDER BY `rName` ASC", "a");
echo $Race['rAbilScore'];