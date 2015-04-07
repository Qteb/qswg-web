<?php

define('Q.Engine', true);
require_once "engine/config.php";
require_once "engine/connect_mysql.php";

if (isset($_GET['action']) AND $_GET['action']=='eventRun') {
	if (isset($_POST['userHWID']) AND isset($_POST['userVersion'])) {
		$userHWID = $mysqli->real_escape_string($_POST['userHWID']);
		$userVersion = $mysqli->real_escape_string($_POST['userVersion']);
		$currentTime = time();
		$ip = $_SERVER["REMOTE_ADDR"];

		$result = $mysqli->query("SELECT userHWID FROM beggUsers WHERE userHWID = '$userHWID' LIMIT 1");
		echo 'SELECT, and ';
		if($result->fetch_assoc()) {
			$mysqli->query("UPDATE beggUsers SET userLastLogin = UNIX_TIMESTAMP(now()), userCount = userCount+1, userVersion = '$userVersion', userIP = '$ip' WHERE userHWID = '$userHWID' LIMIT 1");
			echo 'UPDATE.';
		} else {
			$mysqli->query("INSERT INTO beggUsers (userHWID, userVersion, userFirstLogin, userIP) VALUES ('".$userHWID."', '".$userVersion."', UNIX_TIMESTAMP(now()), '".$ip."')");
			echo 'INSERT.';
		}
	}
} else {
	require_once "include/parse_time.php";

	echo "<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>
<html xmlns='http://www.w3.org/1999/xhtml'>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
<meta http-equiv='pragma' content='no-cache'>
<title>BEGG Stat [beta]</title>
</head>
<body>";

	$query = $mysqli->query("SELECT * FROM beggUsers");
	while($data = $query->fetch_assoc()) {

		$userIP = $data['userIP'];
		$userCount = $data['userCount'];
		$fist = ggtime($data['userFirstLogin']);
		if ($data['userLastLogin'] > 0) {
			$last = ggtime($data['userLastLogin']);
			$last = "[l: {$last}]";
		}
		else
			$last = "";

		echo $data['userHWID']." [f: {$fist}] $last [count: $userCount] [ip: $userIP]<br>";
	}
}