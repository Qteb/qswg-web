<?php
if (!defined('Q.SWG')) die("Get the fuck out of here!");

/**
 * @param $value
 */
function ggerror($errorText) {
	//global $status_array, $client, $tpl, $auto_update_time, $site_url, $logged_driver_id, $logged_driver_pass, $is_logged;

	$title = 'Ошибка!';

	global $site_url;

	print_head(false, $title);

	$t = SeparateTemplate::instance()->loadSourceFromFile('error');
	$t->assign('errorText', $errorText);
	$t->assign('site_url', $site_url);
	print $t->display();

	print_foot();

/*	$tpl->get_tpl('error');
	$tpl->set_tpl('{site_url}', $site_url);
	$tpl->set_tpl('{value}', $value);
	print $tpl->compile_tpl();*/

	exit;
}

function calculateSize($file_size){
	if ($file_size < 1)
		$file_size = "меньше байта";
	if ($file_size >= 1 AND $file_size < 1024)
		$file_size = $file_size." байт";
	if ($file_size >= 1024 AND $file_size < 1048576)
		$file_size = round($file_size/1024,2)." кб.";
	if ($file_size > 1048576)
		$file_size = round($file_size/1024/1024,1)." мб.";
	return $file_size;
}

/**
 * @return mixed
 */
function GetIp()
{
	if (!empty($_SERVER['HTTP_CLIENT_IP']))
		$ip=$_SERVER['HTTP_CLIENT_IP'];
	elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR']))
		$ip=$_SERVER['HTTP_X_FORWARDED_FOR'];
	else
		$ip=$_SERVER['REMOTE_ADDR'];
	return $ip;
}

/**
 * @param $num
 * @return bool
 */
function check_num($num)
{
	if (($num % 2) == 0)
		return true;
	else
		return false;
}

/**
 * @param $options
 * @param $id
 * @param $selected
 *
 * @return string
 */
function makeDropDown($options, $id, $selected)
{
	$output = "<select class='form-control' id='{$id}' >\r\n";
	foreach ( $options as $value => $description ) {
		$output .= "<option value='{$value}'";
		if( $selected == $value ) {
			$output .= " selected";
		}
		$output .= ">{$description}</option>\n";
	}
	$output .= "</select>";
	return $output;
}

/**
 * @param $curr_page
 * @param $elem_per_page
 * @param $database
 * @return string
 */
function get_pages_bar($curr_page,$elem_per_page,$database)
{
	global $site_url, $db;
	
	$page=intval($curr_page);
	if ($page < 1 || $page==0)
		$page = 1;

	$ath = $db->query("SELECT * FROM $database");
	$cm_n = $db->num_rows($ath);
	$wathit = 'page';
	$N = $elem_per_page; //кол-во на страницу

	$cnt_pages = ceil($cm_n / $N);

	if ($page > $cnt_pages) $page = $cnt_pages;
	
	global $start;
	$start = ($page - 1) * $N;
	if ($start < 0) $start=0;

	if ($cnt_pages > 1) {

		if ($cnt_pages > 1 AND $page - 2 > 0)
			$pa = '<a href="http://'.$site_url.'/'.$wathit.'/1">1</a> ';

		if ($page >= 5) {
			$page3left = '<a href="http://'.$site_url.'/'.$wathit.'/2">2</a> ';
		} else {
			$page3left = '';
		}

		if ($page - 3 > 0)
			$page2left = ' -- <a href="http://'.$site_url.'/'.$wathit.'/'.($page - 2).'">'.($page - 2).'</a>';
		else
			$page2left = '';

		if ($page - 1 > 0)
			$page1left = ' <a href="http://'.$site_url.'/'.$wathit.'/'.($page - 1).'">'.($page - 1).'</a> ';
		else
			$page1left = '';

		if ($page + 1 <= $cnt_pages)
			$page1right = ' <a href="http://'.$site_url.'/'.$wathit.'/'.($page + 1).'">'.($page + 1).'</a> ';
		else
			$page1right = '';

		if ($page + 2 <= $cnt_pages)
			$page2right = ' <a href="http://'.$site_url.'/'.$wathit.'/'.($page + 2).'">'.($page + 2).'</a> ';
		else
			$page2right = '';

		if ($page < ($cnt_pages - 3)) {
			$page3right = ' -- <a href=" http://'.$site_url.'/'.$wathit.'/'.($cnt_pages - 1).'">'.($cnt_pages - 1).'</a>';
		} else {
			$page3right = '';
		}

		if ($page < ($cnt_pages - 2))
			$pasl = ' <a title="к последней странице" href=" http://'.$site_url.'/'.$wathit.'/'.$cnt_pages.'">'.$cnt_pages.'</a>';

		if ($page + 1 <= $cnt_pages)
			$next = '| <a title="к следующей странице" href="http://'.$site_url.'/'.$wathit.'/'.($page + 1).'">(>>)</a>';
		else
			$next = '| (>>)';

		if ($page - 1 > 0)
			$prev = '<a title="к предыдущей странице" href="http://'.$site_url.'/'.$wathit.'/'.($page - 1).'">(<<)</a> |';
		else
			$prev = '(<<) |';

		$pages = $prev.' '.$pa.$page3left.$page2left.$page1left.'<b>['.$page.']</b>'.$page1right.$page2right.$page3right.$pasl.' '.$next.'<br>';
	} else {
		$pages = '';
	}
	return $pages;
}

function table_urls()
{
	global $start, $site_url, $db, $tpl;
	
	$total_clicks=0;
	$elements_per_page=10;
	
	$ath=$db->query("SELECT * FROM my_links");
	if($ath)
	{
		if($db->num_rows($ath)=="0")
			echo "<h1>No entries found.</h1>";
		else
		{
			if (isset($_GET['action']) AND $_GET['action']=="sort_by") {
				$_SESSION['sort_by'] = strip_tags($_GET['value']);
				header("Location: ".$_SERVER['HTTP_REFERER']);
			}
			if (isset($_GET['action']) AND $_GET['action']=="sort_derection") {
				$_SESSION['sort_derection'] = strip_tags($_GET['value']);
				header("Location: ".$_SERVER['HTTP_REFERER']);
			}
		
			if(!isset($_SESSION['sort_by'])) {
				$sort_by='time';
			} else {
				$sort_by = $_SESSION['sort_by'];
			}
			if(!isset($_SESSION['sort_derection'])) {
				$sort_derection='desc';
			} else {
				$sort_derection = $_SESSION['sort_derection'];
			}
			
			$options1 = array('time'=>'время создания','clicks'=>'переходы','last_click'=>'последний переход');
			$options2 = array('desc'=>'убывание','asc'=>'возрастание');
			
			$drop_down1 = makeDropDown($options1, "sort_by", $sort_by, $site_url);
			$drop_down2 = makeDropDown($options2, "sort_derection", $sort_derection, $site_url);
		
			$pages=get_pages_bar($_GET['page'],$elements_per_page,"my_links");

			$tpl->get_tpl('table_head');
			$tpl->set_tpl('{pages}', $pages);
			$tpl->set_tpl('{site_url}', $site_url);
			$tpl->compile_tpl();
			
			$ath=$db->query("SELECT * FROM my_links ORDER BY $sort_by $sort_derection LIMIT $start, $elements_per_page");
			while($base = $db->get_array($ath))
			{
				$id = $base[id];
				$time = ggtime($base[time]);

				$clicks = $base[clicks];
				if($clicks > 0)
					$total_clicks = $total_clicks + $clicks;
				else
					$clicks = "<font color='gray'>0</font>";

				if (strlen($base[long_url]) > 35)
					$long_url = substr ($base[long_url], 0, 35)." ...";
				else
					$long_url = $base[long_url];

				if($base[last_click] != '0')
					$last_click_time = ggtime($base[last_click]);
				else
					$last_click_time = "<font color='gray'>n/a</font>";

				$tpl->get_tpl('table_body');
				$tpl->set_tpl('{id}', $id);
				$tpl->set_tpl('{long_url_orig}', $base[long_url]);
				$tpl->set_tpl('{site_url}', $site_url);
				$tpl->set_tpl('{long_url}', $long_url);
				$tpl->set_tpl('{short_url}', $base[short_url]);
				$tpl->set_tpl('{time}', $time);
				$tpl->set_tpl('{clicks}', $clicks);
				$tpl->set_tpl('{last_click_time}', $last_click_time);
				$tpl->compile_tpl();
			}
			$tpl->get_tpl('table_foot');
			$tpl->set_tpl('{pages}', $pages);
			$tpl->set_tpl('{total_clicks}', $total_clicks);
			$tpl->set_tpl('{drop_sort_by}', $drop_down1);
			$tpl->set_tpl('{drop_sort_derection}', $drop_down2);
			$tpl->compile_tpl();
		}
	}
}
?>