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

$auth_cookie = 24*7;

$dblocation = "localhost";
$dbuser = "phpUser";
$dbpasswd = "UBsepNHpja85dRXN";
$dbname = "baseSWG";
