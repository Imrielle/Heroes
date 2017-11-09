<?php
date_default_timezone_set('UTC');
require( __DIR__ .'/funcs.db.php');

$loader = new Twig_Loader_Filesystem(TEMPLATE_PATH);
$twig = new Twig_Environment($loader, array(
    'debug' => true,
    //'cache' => 'cache',
));
$twig->addExtension(new Twig_Extension_Debug());
require( __DIR__ .'/funcs.utilities.php');
require( __DIR__ .'/funcs.template.php');
require( __DIR__ .'/funcs.users.php');
require( __DIR__ .'/funcs.menu.php');

