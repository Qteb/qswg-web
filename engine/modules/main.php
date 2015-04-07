<?php
if (!defined('Q.SWG')) die("Hacking attempt!");

$title='Главная';

print_head(false, $title);

$query = $mysqli->query("SELECT subscriptionId, subscriptionName, subscriptionTime
						 FROM swgSubscriptions
						 WHERE subscriptionTime > 0
						 ORDER BY subscriptionTime ASC");
while($subs = $query->fetch_assoc()) {
	$subscriptionId     = $mysqli->real_escape_string($subs['subscriptionId']);
	$subscriptionName   = $mysqli->real_escape_string($subs['subscriptionName']);

	$options[$subscriptionId] = $subscriptionName;
}

$id = "subscriptionTypeAdd";
$selected = $subscriptionType;
$subscriptionTypeAdd = makeDropDown($options, $id, '');

$t = SeparateTemplate::instance()->loadSourceFromFile('main');
$t->assign('subscriptionTypeAdd', $subscriptionTypeAdd);
$t->assign('site_url', $site_url);
print $t->display();

print_foot();