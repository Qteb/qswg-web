<?php

/* Подключение к серверу MySQL */
$mysqli = new mysqli($dblocation, $dbuser, $dbpasswd, $dbname);
if (mysqli_connect_errno()) {
	printf("Подключение к серверу MySQL невозможно. Код ошибки: %s\n", mysqli_connect_error());
	exit;
}

/*if (!$mysqli->set_charset('utf8')) {
	printf("Error loading character set utf8: %s\n", $mysqli->error);
} else {
	printf("Current character set: %s\n", $mysqli->character_set_name());
}*/

$mysqli->query('SET NAMES utf8');
$mysqli->query("set character_set_client='utf8'");
$mysqli->query("set character_set_results='utf8'");
$mysqli->query("set collation_connection='utf8_general_ci'");

?>