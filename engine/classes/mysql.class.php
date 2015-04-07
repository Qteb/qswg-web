<?php
if (!defined('Q.Short')) die("Hacking attempt!");

class parse_db
{
	var $query_num = 0;
	var $mysql_error = '';
	var $mysql_error_num = 0;
	var $mysql_time_taken = 0;
	
	function query($query, $show_error=false)
	{
		$time_before = $this->get_real_time();
		
		$answer = mysql_query($query);
		$this->mysql_error = mysql_error();
		$this->mysql_error_num = mysql_errno();
		if($show_error) {
			$this->display_error($this->mysql_error, $this->mysql_error_num, $query);
		}
		
		$this->mysql_time_taken += $this->get_real_time() - $time_before;
		$this->query_num ++;
		
		return $answer;
	}
	function num_rows($query)
	{
		$time_before = $this->get_real_time();
		
		$answer = mysql_num_rows($query);
		
		$this->mysql_time_taken += $this->get_real_time() - $time_before;
		
		return $answer;
	}
	function get_array($query)
	{
		$time_before = $this->get_real_time();

		$answer = mysql_fetch_array($query);
		
		$this->mysql_time_taken += $this->get_real_time() - $time_before;
		
		return $answer;
	}
	function close()
	{
		@mysql_close($this->db_id);
	}
	
	function get_real_time()
	{
		list($seconds, $microSeconds) = explode(' ', microtime());
		return ((float)$seconds + (float)$microSeconds);
	}
	function display_error($error, $error_num, $query = '')
	{
		if($query) {
			// Safify query
			$query = preg_replace("/([0-9a-f]){32}/", "********************************", $query); // Hides all hashes
			$query_str = "$query";
		}
		
		echo '<?xml version="1.0" encoding="iso-8859-1"?>
		<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
		<html xmlns="http://www.w3.org/1999/xhtml">
		<head>
		<title>MySQL Fatal Error</title>
		<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
		<style type="text/css">
		<!--
		body {
			font-family: Verdana, Arial, Helvetica, sans-serif;
			font-size: 10px;
			font-style: normal;
			color: #000000;
		}
		-->
		</style>
		</head>
		<body>
			<font size="4">MySQL Error!</font> 
			<br />------------------------<br />
			<br />
			
			<u>The Error returned was:</u> 
			<br />
				<strong>'.$error.'</strong>

			<br /><br />
			</strong><u>Error Number:</u> 
			<br />
				<strong>'.$error_num.'</strong>
			<br />
				<br />
			
			<textarea name="" rows="10" cols="52" wrap="virtual">'.$query_str.'</textarea><br />

		</body>
		</html>';
		
		exit();
	}
}

$db = new parse_db;

?>