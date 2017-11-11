<?php
$i = 0;
$xmlf = 'data/backgrounds.json';
$Content = '';
$Class = array ();
if (file_exists($xmlf)) {
	$json = file_get_contents($xmlf);
    //$json = json_encode($json);
	$jsonD = json_decode($json, true);
    //var_dump($jsonD);
} else {
	exit('Failed to open data.');
}

$twig->addGlobal('JSON', $jsonD);