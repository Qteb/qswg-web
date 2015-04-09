<?php

/*if (isset($_GET['action']) AND $_GET['action']=='updateStatistics') {
	define('Q.SWG', TRUE);
	define('ROOT_DIR', $_SERVER['DOCUMENT_ROOT'] . "/begg");
	define('ENGINE_DIR', ROOT_DIR . '/engine');
	define('FUNCTIONS_DIR', ENGINE_DIR . '/functions');

	$showErrors = TRUE;
	error_reporting(E_ALL ^ E_NOTICE);
	ini_set('display_errors', $showErrors);
	ini_set('html_errors', $showErrors);

	require_once ROOT_DIR . "/engine/config.php";
	require_once ROOT_DIR . "/engine/connect_mysql.php";
	require_once FUNCTIONS_DIR . "/main.php";
} else {
	define('Q.SWG', true);
	define('ROOT_DIR', $_SERVER['DOCUMENT_ROOT']."/begg");
	require ROOT_DIR."/engine/engine.php";
}

function answerJSON($type, $text) {
	$data = array('type' => $type, 'text' => $text);
	return json_encode($data);
}*/