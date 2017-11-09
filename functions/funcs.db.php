<?php
require( __DIR__ .'/config.php');
session_start();
// This sets the server time to UTC.
date_default_timezone_set('UTC');

$options = array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8');

try {
    $dbh = new PDO("mysql:host=" . DB_HOST . ";dbname=" . DB_NAME . ";charset=utf8", DB_USERNAME, DB_PASSWORD, $options);
} catch (PDOException $ex) {
    die("Failed to connect to the database: " . $ex->getMessage());
}

$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$dbh->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

function ReadInfo($a, $b, $c, $d) {
    global $dbh;
    $sql = "SELECT $a FROM $b $c";
    $stmt = $dbh->prepare($sql);
    $stmt->execute();
    if ($d == 'all') {
        $result = $stmt->fetchAll();
    } else {
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
    }
    return $result;
}
