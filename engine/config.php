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

/* Вывод ошибок */
$showErrors = true; // or false
error_reporting(E_ALL ^ E_DEPRECATED ^ E_NOTICE);
ini_set('display_errors', $showErrors);
ini_set('html_errors', $showErrors);

$site_url = $_SERVER['HTTP_HOST'];

/* Данные для входа на MySQL сервер */
$dblocation = "localhost";
$dbuser = "phpUser";
$dbpasswd = "vtHUAMos";
$dbname = "baseBEGG";

?>