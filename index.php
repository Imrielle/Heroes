<?php
require( __DIR__ . '/vendor/autoload.php');
require( __DIR__ . '/functions/functions.php');

if (isset($_GET['p'])) {$Page = $_GET['p']; $SubPage = "";}
else {$Page = 'Home'; $SubPage = "";}

$AccessArr = array();
$AccessArr[] = array("Name" => "Public", "Value" => "0");
$AccessArr[] = array("Name" => "Registered", "Value" => "1");
$AccessArr[] = array("Name" => "Player", "Value" => "2");
$AccessArr[] = array("Name" => "DM", "Value" => "7");
$AccessArr[] = array("Name" => "Admin", "Value" => "9");

$twig->addGlobal('AccessArr', $AccessArr);

if ($Page == 'Home') {
    $Title = $Page;
    $tpl = 'template';
} else {
    foreach ($Menu as $i) {
        switch ($Page) {
            case $i['Link']:
                $Title = $i['Name'];
                $PID = $i['ID'];
                if ($i['Template'] =='') {$tpl = 'main';} else {$tpl = $i['Template'];}
                if ($i['File'] =='') {} else {
                    include($i['File']);
                }
                break;
        }
    }
}

$template = $twig->load('index.html');
echo $template->render(
		array(
			'Copyright' => '&copy; 1999 - '.date('Y').' <a href="index.php?p=Credits">Knack CMS</a>',
			'Content' => $Content,
            'Page' => $Title,
            'Template' => $tpl.'.html',
            'SubPage' => $SubPage,
            'ActivePage' => $Title,
            'Scripts' => $Scripts,
            'CSS' => $CSS,
            'Notice' => $Notice
		)
);
