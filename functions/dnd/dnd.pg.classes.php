<?php
$Classes = ReadInfo("*", "cms_classes", "", "all");


$twig->addGlobal('Classes', $Classes);