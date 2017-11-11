<?php
$CSS = '<link href="assets/css/spells.css" rel="stylesheet" type="text/css" />
<link href="assets/css/jquery.scrollbar.css" rel="stylesheet" type="text/css" />';
$Scripts = '<script type="text/javascript" src="assets/js/shorten.js"></script>
<script type="text/javascript" src="assets/js/jquery.scrollbar.min.js"></script>
<script type="text/javascript" src="assets/js/spellCards.js"></script>';
$Level0 = ReadInfo("*", "cms_dnd_spells", "WHERE `Level` = 'Cantrip' ORDER BY `ID` ASC", "all");

$twig->addGlobal('Level0', $Level0);