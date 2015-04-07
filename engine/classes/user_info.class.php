<?php
if (!defined('Q.SWG')) die("Get the fuck out of here!");

class check_user_info {
	var $ip;
	var $referer;
	var $browser;
	var $os;
	var $host;
	
	function check_ip() { // ���������� ip
		$this->ip = $_SERVER["REMOTE_ADDR"];
		return $this->ip;
	}
	function check_referer() { // ���������� ��������
		$this->referer = $_SERVER['HTTP_REFERER'];
		return $this->referer;
	}
	function check_browser($string) { // ���������� �������
		if (strstr($string, "Chrome")) $this->browser = "Chrome";
		elseif (strstr($string, "Opera")) $this->browser = "Opera";
		elseif (strstr($string, "Firefox")) $this->browser = "Firefox";
		elseif (strstr($string, "MSIE")) $this->browser = "MSIE";
//		elseif (strstr($string, "Safari")) $this->browser = "Safari";
		elseif (strstr($string, "BrowserNG")) $this->browser = "BrowserNG";
		else $this->browser = "Other";
		return $this->browser;
	}
	function check_os($string) { // ���������� ������������ �������
		if (strstr($string, "Windows")) $this->os = "Windows";
		elseif (strstr($string, "Linux")) $this->os = "Linux";
		elseif (strstr($string, "Linux")) $this->os = "Linux";
		elseif (strstr($string, "FreeBSD")) $this->os = "FreeBSD";
		elseif (strstr($string, "SunOS")) $this->os = "SunOS";
		elseif (strstr($string, "IRIX")) $this->os = "IRIX";
		elseif (strstr($string, "BeOS")) $this->os = "BeOS";
		elseif (strstr($string, "OS/2")) $this->os = "OS/2";
		elseif (strstr($string, "AIX")) $this->os = "AIX";
		elseif (strstr($string, "Symbian")) $this->os = "Symbian";
		else $this->os = "Other";
		return $this->os;
	}
	function check_host() { // ���������� ����
		if (isset($_SERVER["HTTP_X_FORWARDED_FOR"])) { 
			$this->host = gethostbyaddr($_SERVER["HTTP_X_FORWARDED_FOR"]);
		} else {
			$this->host = gethostbyaddr($_SERVER["REMOTE_ADDR"]);
		}
		return $this->host;
	}
}

$ui = new check_user_info

?>