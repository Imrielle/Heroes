<?php
if (isset($_POST['AddTask'])) {
	add_task($_POST['name'], $_POST['parent'], $_POST['status'], $_POST['description']);
	print $_POST['status'];
} elseif (isset($_POST['editTask'])) {
	$sql = "UPDATE cms_tasks SET `status` = '$_POST[status]' WHERE ID = '$_POST[ID]'";
	$notice = "<div class='notice success'><i class='icon-ok'></i>Successfully updated '$_POST[name]'. <a class='alert-close icon-remove'></a></div>";
	//$dbh->prepare($sql)->execute();
} else {

}
function add_task($name, $parent, $status, $descr) {
	global $dbh;
	global $output;
	$add = '';
	if ($parent ===0) {
		$sqli = "INSERT INTO cms_tasks (`name`, `parent`, `status`, `description`)
		VALUES ('$name', '$parent', '$status', '$descr')";
		$stmt = $dbh->prepare($sqli);
		$stmt->execute();
		$output .= $sqli;
	} else {
		$sqlc = "SELECT * FROM cms_tasks WHERE ID='$parent'";
		$stmt = $dbh->prepare($sqlc);
		$stmt->execute();
		$row = $stmt->fetch(PDO::FETCH_ASSOC);
		$child = $row['children']+1;

		$sql = "UPDATE cms_tasks SET `children` = '$child' WHERE ID = '$parent'";
		$dbh->prepare($sql)->execute();
		$sqli = "INSERT INTO cms_tasks (`name`, `parent`, `status`, `description`)
		VALUES ('$name', '$parent', '$status', '$descr')";
		$stmt = $dbh->prepare($sqli);
		$stmt->execute();
	}
	return $output;
}
$optlist = '<option value="0"> --- None --- </option>';
$sql = "SELECT * FROM cms_tasks WHERE parent='0'";
$res = $dbh->query($sql);
foreach ($res as $row) {
	$optlist .= "<option value='$row[ID]'>$row[name]</option>";
}

$twig->addGlobal('Optlist', $optlist);
function get_percent($parent_id) {
	global $dbh;
	$sql = "SELECT * FROM cms_tasks where parent='$parent_id'";
	$stmt = $dbh->prepare($sql);
	$stmt->execute();
	$res = $stmt->fetchAll();

	$sum = 0.0;
	$count = 0;
	foreach ($res as $row) {
		if ($row['status'] =="-10") {
			$math = 0;
		} elseif ($row['status'] =="-5") {
			$math = 0;
		} else {
			$math = $row['status'];
		}
		$count ++;
		$sum += $math;
	}
	$a = $sum/$count;

	return $a;
}

$sql = "SELECT * FROM cms_tasks WHERE `parent` = 0";
$res = $dbh->query($sql);
$TaskM = array ();

foreach ($res as $a) {
	if ($a['children'] !=0) {
		$percent = get_percent($row['ID']);
	} else {
		$percent = $a['status'];
	}

	if ($a['status'] =="-10") {
		$label= "Planning";
		$class = ' bg-blue';
	} elseif ($a['status'] =="-5") {
		$label = "Fixing";
		$class = ' warning';
	} elseif ($a['status'] =="10") {
		$label= "Started";
		$class = ' info';
	} else {
		$label= "$a[status]% Complete";
		if ($a['status'] == 100) {$class = ' success';}
		else {$class = ' bg-purple';}
	}

	$TaskM[] = array (
		'ID'			 => $a['ID'],
		'Name'			 => $a['name'],
		'Children'		 => $a['children'],
		'Parent'		 => $a['parent'],
		'Status'		 => $percent,
		'Description'	 => $a['description'],
		'Label'			 => $label,
		'Class'			 => $class
	);
}

$sql = "SELECT * FROM cms_tasks WHERE `parent` != 0";
$res = $dbh->query($sql);
$TaskS = array ();

foreach ($res as $a) {
	if ($a['status'] =="-10") {
		$label= "Planning";
		$class = ' bg-blue';
	} elseif ($a['status'] =="-5") {
		$label = "Fixing";
		$class = ' error';
	} elseif ($a['status'] =="10") {
		$label= "Started";
		$class = ' info';
	} else {
		$label= "$a[status]% Complete";
		if ($a['status'] == 100) {$class = ' success';}
		else {$class = ' bg-purple';}
	}
	$TaskS[] = array (
		'ID'			 => $a['ID'],
		'Name'			 => $a['name'],
		'Children'		 => $a['children'],
		'Parent'		 => $a['parent'],
		'Status'		 => $a['status'],
		'Description'	 => $a['description'],
		'Label'			 => $label,
		'Class'			 => $class
	);
}

$twig->addGlobal('TaskM', $TaskM);
$twig->addGlobal('TaskS', $TaskS);
?>