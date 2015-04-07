<?php

/*
======================================
 Based on Q.Engine CMS by Qteb | http://qteb.ru/
 © Qteb Projects 2007-2012
======================================
 Файл: login.php
 Назначение: Авторизация пользователей
======================================
*/

if (!defined('Q.SWG')) die("Hacking attempt!");

$title='Авторизация';

//define('ROOT_DIR', $_SERVER['DOCUMENT_ROOT']);
require ROOT_DIR."/engine/engine.php";

// Функция для генерации случайной строки
function generateCode($length=6) {
	$chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPRQSTUVWXYZ0123456789";
	$code = "";
	$clen = strlen($chars) - 1;
	while (strlen($code) < $length) {
		$code .= $chars[mt_rand(0,$clen)];
	}
	return $code;
}

// Вход в систему
if (isset($_POST['login']) and isset($_POST['password'])) {
	global $site_url, $auth_cookie;
	$login = $mysqli->real_escape_string($_POST['login']);
	$password = $_POST['password'];

	// Вытаскиваем из БД запись, у которой логин равняеться введенному
	$query = $mysqli->query("SELECT adminId, adminLogin, adminPassword FROM swgAdmins WHERE adminLogin='$login' LIMIT 1");
	$data = $query->fetch_assoc();

	// Сравниваем пароли
	if($data['adminPassword'] === md5(md5($_POST['password'])))
	{
		// Генерируем случайное число и шифруем его
		$adminHash = md5(generateCode(10));

		// Записываем в БД новый хеш авторизации и IP
		$adminAgent = md5($_SERVER['HTTP_USER_AGENT']);
		$mysqli->query("UPDATE swgAdmins
						SET adminHash = '$adminHash', adminAgent = '$adminAgent' , adminLastLogin = UNIX_TIMESTAMP()
						WHERE adminLogin = '$login' LIMIT 1");

		// Ставим куки
		setcookie("remixid", $data['adminId'], time() + 60*60*24*$auth_cookie);
		setcookie("remixhash", $adminHash, time() + 60*60*24*$auth_cookie);

		// Переадресовываем браузер на страницу проверки нашего скрипта
		header("Location: http://".$site_url);
		exit();
	}
	else
		ggerror($notes_array[2]);
}

// Выход из системы
if (isset($_GET['action']) AND $_GET['action']=="logout") {
	global $site_url, $is_logged;

	setcookie("remixid", "", time() + 60);
	setcookie("remixhash", "", time() + 60);

	$is_logged = false;

	header("Location: http://".$site_url);
	exit();
}

if(!$is_logged) {

	global $site_url, $tpl;
	
	print_head(false, $title);

	$t = SeparateTemplate::instance()->loadSourceFromFile('login');
	$t->assign('site_url', $site_url);
	print $t->display();
	
	//$tpl->get_tpl('login');
	//$tpl->set_tpl('{site_url}', $site_url);
	//print $tpl->compile_tpl();
	
	print_foot();
	
	die();
}

?>
