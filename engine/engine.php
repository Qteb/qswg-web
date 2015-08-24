<?php
if (!defined('Q.SWG')) die("Hacking attempt!");

# Временная зона сервера
date_default_timezone_set("UTC");

/* Headers */
header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
header("Cache-Control: no-store, no-cache, must-revalidate");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");
header("Content-Type: text/html; charset=utf-8");

/* Вывод ошибок
 * true or false
 */
$showErrors = TRUE;
//error_reporting(E_ALL ^ E_DEPRECATED ^ E_NOTICE);
error_reporting(E_ALL^E_NOTICE);
ini_set('display_errors', $showErrors);
ini_set('html_errors', $showErrors);

/* Подписка путей для запросов */
define('ENGINE_DIR', ROOT_DIR.'/engine');
define('TEMPLATE_DIR', ROOT_DIR.'/templates');
define('CLASSES_DIR', ENGINE_DIR.'/classes');
define('FUNCTIONS_DIR', ENGINE_DIR.'/functions');
define('INCLUDE_DIR', ENGINE_DIR.'/include');
define('MODULE_DIR', ENGINE_DIR.'/modules');
define('CONFIG_DIR', ENGINE_DIR.'/configs');

/* Подключение исполняемых файлов */
require_once CONFIG_DIR."/default.php";
require_once CONFIG_DIR."/production.php";

@ob_start();
@ob_implicit_flush(0);

require_once ENGINE_DIR."/connect_mysql.php";

require_once CLASSES_DIR."/templates.class.php";
//require_once CLASSES_DIR."/mysql.class.php";
//require_once CLASSES_DIR."/user_info.class.php";
require_once CLASSES_DIR."/time.class.php";
require_once CLASSES_DIR."/SeparateTemplate.php";

//require_once INCLUDE_DIR."/parse_main.php";
require_once INCLUDE_DIR."/parse_time.php";

require_once FUNCTIONS_DIR."/main.php";
require_once FUNCTIONS_DIR."/pages.php";

require_once ENGINE_DIR."/auth.php";

/* Сессии */
//@session_start();