<?php
if ($UserAccess !=9) {
	$Content = "Access denied.";
	$SubPage = ' - Access Denied';
	$tpl = 'admin/main';
} else {

	if (isset($_GET['sp'])) {$sp = $_GET['sp'];} else {$sp = 'Main';}
	foreach ($SubMenu as $i) {
		if ($i['Parent'] == $PID) {
            switch ($sp) {
                case $i['Link']:
                    if ($i['Name'] =='Main') {
                        $SubPage = ' - Main';
                        $tpl = 'admin/main';
                    } else {
                        $SubPage = " - $i[Name]";
                        if ($i['Template'] =='') {$tpl = 'admin/main';} else {$tpl = $i['Template'];}
                        if ($i['File'] =='') {} else {include('functions/admin/admin.'.$i['File'].'.php');}
                    }
                    break;
            }
		}
	}
}

//$twig->addGlobal('SubPage', $SubPage);
//$twig->addGlobal('Content', $Content);
