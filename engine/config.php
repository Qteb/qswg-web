<?php

/*
======================================
 Based on Q.Engine CMS by Qteb | http://qteb.ru/
 © Qteb Projects 2007-2012
======================================
 Файл: config.php
 Назначение: Конфигурация скрипта
======================================
*/

if (!defined('Q.SWG')) die("Hacking attempt!");

$site_url = $_SERVER['HTTP_HOST']."/qswg";

$doublelogin = false;

$auth_cookie = 24*7;  // время жизни кукисов (в часах)

// Время профилактики (GMT)
$offline_hour_start = '04'; // Час начала
$offline_hour_end = '04'; // Час окончания
$offline_minute_start = '00'; // Минута начала
$offline_minute_end = '05'; // Минута окончания

$notes_array = array (
	1 => 'Done',
	2 => 'Доступ закрыт. Неверный пароль или пользователь не найден в системе.',
	3 => 'Доступ закрыт. Пользователь заблокирован.',
);

/* Данные для входа на MySQL сервер */
$dblocation = "localhost";
$dbuser = "phpUser";

?>