<?php
if (!defined('Q.Short')) die("Hacking attempt!");

class parse_tpl {
	var $vars = array();
	var $template;
	var $template_parse_time = 0;

	function get_tpl($tpl_name) {
		$time_before = $this->get_real_time();
		
		$templ_path = TEMPLATE_DIR."/".$tpl_name.".tpl";
		
		if(empty($tpl_name) || !file_exists($templ_path)) {
			die("Unable to load template: <b>".$tpl_name."</b><br>Contact the site administrator: qtebest@gmail.com<br>");
			return false;
        } else {
			$this->template = file_get_contents($templ_path);
        }
		
		$this->template_parse_time += $this->get_real_time() - $time_before;
	}
	function set_tpl($key,$var) {
		$time_before = $this->get_real_time();
		
		$this->vars[$key] = $var;
		
		$this->template_parse_time += $this->get_real_time() - $time_before;
	}
	function compile_tpl() {
		$time_before = $this->get_real_time();
		
		foreach($this->vars as $find => $replace)
		{
			$this->template = str_replace($find, $replace, $this->template);
		}
		echo $this->template;
		
		$this->template_parse_time += $this->get_real_time() - $time_before;
	}
	
	function get_real_time() {
		list ( $seconds, $microSeconds ) = explode( ' ', microtime() );
		return (( float ) $seconds + ( float ) $microSeconds);
	}
}

$tpl = new parse_tpl;

?>