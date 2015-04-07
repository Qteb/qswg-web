<?php

define('Q.SWG', true);
//require_once "engine/config.php";
//require_once "engine/connect_mysql.php";

define('ROOT_DIR', $_SERVER['DOCUMENT_ROOT']."/begg");
require ROOT_DIR."/engine/engine.php";

# модули
if(isset($_GET['do']))  $pag = $_GET['do'];
else                    $pag = "0";

switch($pag) {
	case "login": include MODULE_DIR."/login.php"; break;
	case "subs": include MODULE_DIR."/subs.php"; break;
	case "stat": include MODULE_DIR."/stat.php"; break;
	default: include MODULE_DIR."/main.php"; break;
}