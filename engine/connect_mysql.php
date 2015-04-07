<?php

/* Подключение к серверу MySQL */
$mysqli = new mysqli($dblocation, $dbuser, $dbpasswd, $dbname);
if (mysqli_connect_errno()) {
	printf("Подключение к серверу MySQL невозможно. Код ошибки: %s\n", mysqli_connect_error());
	exit;
}

$mysqli->query('SET NAMES utf8');

?>