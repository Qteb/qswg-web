<?php
if (!defined('Q.SWG')) die("Get the fuck out of here!");

function print_head($auto_update=TRUE, $title)
{
	//global $status_array, $client, $tpl, $auto_update_time, $site_url, $logged_driver_id, $logged_driver_pass, $is_logged;
	global $is_logged, $auto_update_time, $mysqli;

	if ($auto_update)   $tag = "<meta http-equiv='refresh' content='{$auto_update_time}'>";
	else                $tag = '';

	//ob_start();
	//ob_implicit_flush(0);

	$Timer = new microTimer();
	$Timer->start();

	$t = SeparateTemplate::instance()->loadSourceFromFile('head');
	//$t->assign('site_url', $site_url);
	$t->assign('auto_update', $tag);
	$t->assign('title', $title);
	print $t->display();

	$query = $mysqli->query("SELECT adminLogin FROM swgAdmins WHERE adminId = '".intval($_COOKIE['remixid'])."' LIMIT 1");
	$adminData = $query->fetch_assoc();
	$adminLogin = $adminData['adminLogin'];

	$t = SeparateTemplate::instance()->loadSourceFromFile('navbar');
	$t->assign('is_logged', $is_logged);
	$t->assign('adminLogin', $adminLogin);
	print $t->display();
}


function print_foot()
{
	global $site_url, $tpl, $Timer, $is_logged;

	$year = date("Y",time()); // текущий год

	$result = ob_get_contents();
	ob_end_flush();
	//ob_end_clean();

	//$template_parse_time = round($tpl->template_parse_time, 5);
	$size = calculateSize(strlen($result));
	$timer_total = $Timer->stop();


	$t = SeparateTemplate::instance()->loadSourceFromFile('foot');
	$t->assign('is_logged', $is_logged);
	$t->assign('year', $year);
	$t->assign('time', $timer_total);
	$t->assign('size', $size);
	print $t->display();
}

/** Header
 *
 */
/*function print_head()
{
	global $tpl;
	
	ob_start();
	ob_implicit_flush(0);

	$Timer = new microTimer();
	$Timer->start();
	
	$tpl->get_tpl('head');
	$tpl->compile_tpl();
}*/

/** Footer
 *
 */
/*function print_foot()
{
	global $tpl, $db, $Timer;
	
	$year = date("Y",time()); // текущий год

	$words=array("запрос", "запроса", "запросов");
	$query_word = num2word($bd_query,$words);
	
	$result = ob_get_contents();
	ob_end_flush();
	ob_end_clean();
	
	$template_parse_time = round($tpl->template_parse_time, 5);
	$mysql_time_taken = round($db->mysql_time_taken, 5);
	$query_num = $db->query_num;
	$size = ggsize(strlen($result));
	$timer_total = $Timer->stop();
	
	$tpl->get_tpl('foot');
	$tpl->set_tpl('{year}', $year);
	$tpl->set_tpl('{bd_query}', $bd_query);
	$tpl->set_tpl('{query_word}', $query_word);
	
	$tpl->set_tpl('{template_parse_time}', $template_parse_time);
	$tpl->set_tpl('{mysql_time_taken}', $mysql_time_taken);
	$tpl->set_tpl('{query_num}', $query_num);
	$tpl->set_tpl('{size}', $size);
	$tpl->set_tpl('{timer_total}', $timer_total);
	
	$tpl->compile_tpl();
}*/

/** Body
 * @param $short_url
 */
/*function print_body($short_url)
{
	global $tpl;
	
	if(strlen($short_url)>0)
		$short_url = "<input type='text' class='edit' value='".$short_url."' onMouseMove='this.select()' />";
	$pp = "Paste your long URL here:";
	
	$tpl->get_tpl('body');
	$tpl->set_tpl('{pp}', $pp);
	$tpl->set_tpl('{short_url}', $short_url);
	$tpl->compile_tpl();
}*/

?>