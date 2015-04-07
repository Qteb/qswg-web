<?php

/*
======================================
 Based on Q.Engine CMS by Qteb | http://qteb.ru/
 © Qteb Projects 2007-2012
======================================
 Файл: auth.php
 Назначение: Проверка авторизации пользователя
======================================
*/

if (!defined('Q.SWG')) die("Hacking attempt!");

global $is_logged;

if (isset($_COOKIE['remixid']) and isset($_COOKIE['remixhash'])) {
	$remixhash = $_COOKIE['remixhash'];
	$remixid = intval($_COOKIE['remixid']);

	$query = $mysqli->query("SELECT *,INET_NTOA(adminAgent) FROM swgAdmins WHERE adminId = '{$remixid}' LIMIT 1");
	$adminData = $query->fetch_assoc();

	$adminAgent = md5($_SERVER['HTTP_USER_AGENT']);
	if( ($adminData['adminHash'] != $remixhash) or ($adminData['adminId'] != $remixid) or ($adminData['adminAgent'] != $adminAgent) ) {
		setcookie("remixid", "", time() - 3600*24*30*12, "/");
		setcookie("remixhash", "", time() - 3600*24*30*12, "/");

		$is_logged = false;
		include MODULE_DIR."/login.php";
	} else
		$is_logged = true;
} else {
	$is_logged = false;
	include MODULE_DIR."/login.php";
}

?>