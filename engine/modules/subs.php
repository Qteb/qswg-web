<?php

if (isset($_GET['action']) AND $_GET['action']=='checkSubscription') {
	define('Q.SWG', TRUE);
	define('ROOT_DIR', $_SERVER['DOCUMENT_ROOT'] . "/qswg");
	define('ENGINE_DIR', ROOT_DIR . '/engine');
	define('FUNCTIONS_DIR', ENGINE_DIR . '/functions');

	$showErrors = FALSE;
	error_reporting(E_ALL ^ E_NOTICE);
	ini_set('display_errors', $showErrors);
	ini_set('html_errors', $showErrors);

	require_once ROOT_DIR . "/engine/config.php";
	require_once ROOT_DIR . "/engine/connect_mysql.php";
	require_once FUNCTIONS_DIR . "/main.php";
} else {
	if (!defined('Q.SWG')) die("Hacking attempt!");
}

function answerJSON($type, $text) {
	$data = array('type' => $type, 'text' => $text);
	return json_encode($data);
}

// delete subscription
if (isset($_GET['action']) AND $_GET['action']=='deleteSubscription') {
	if (isset($_GET['userId'])) {
		$userId = intval($_GET['userId']);

		$query = $mysqli->query("DELETE FROM swgUsers WHERE userId = '{$userId}' LIMIT 1");

		print answerJSON("success", "Запись удалена!");
	}
}

// edit subscription
if (isset($_GET['action']) AND $_GET['action']=='editSubscription') {
	if (isset($_GET['userId'])) {
		$userId = intval($_GET['userId']);

		$query = $mysqli->query("SELECT userName, userHWID, subscriptionType, subscriptionTimeout
								 FROM swgUsers
								 WHERE userId = '{$userId}' LIMIT 1");
		if ($data = $query->fetch_assoc()) {
			$userName         = $mysqli->real_escape_string($data['userName']);
			$userHWID         = $mysqli->real_escape_string($data['userHWID']);
			$subscriptionType = $mysqli->real_escape_string($data['subscriptionType']);

			$options = array();

			$query = $mysqli->query("SELECT subscriptionId, subscriptionName, subscriptionTime
									 FROM swgSubscriptions
								 	 ORDER BY subscriptionTime ASC");
			while($subs = $query->fetch_assoc()) {
				$subscriptionId     = $mysqli->real_escape_string($subs['subscriptionId']);
				$subscriptionName   = $mysqli->real_escape_string($subs['subscriptionName']);

				$options[$subscriptionId] = $subscriptionName;
			}

			$id = "subscriptionTypeEdit";
			$selected = $subscriptionType;
			$subscriptionTypeEdit = makeDropDown($options, $id, $selected);

/*			$options2 = [
				"ACTIVE" => "Активна",
				"EXPIRED" => "Истекла",
				"NOT_ACTIVATED" => "Не активна"];
			$id2 = "subscriptionStatusEdit";
			$subscriptionTimeout = $data['subscriptionTimeout'];
			if($subscriptionTimeout > 0) {
				if (($subscriptionTimeout - time()) > 0) {
					$selected2 = "ACTIVE";
				} else {
					$selected2 = "EXPIRED";
				}
			} else {
				$selected2 = "NOT_ACTIVATED";
			}
			$subscriptionStatusEdit = makeDropDown($options2, $id2, $selected2);*/

			$t = SeparateTemplate::instance()->loadSourceFromFile('subs_edit');
			$t->assign('userName', $userName);
			$t->assign('userHWID', $userHWID);
			$t->assign('subscriptionTypeEdit', $subscriptionTypeEdit);
			$t->assign('subscriptionStatusEdit', $subscriptionStatusEdit);
			print $t->display();
		}
	}
	//if (isset($_POST['userName']) AND isset($_POST['userHWID']) AND isset($_POST['subscriptionType']) AND isset($_POST['subscriptionStatus'])) {
	if (isset($_POST['userName']) AND isset($_POST['userHWID']) AND isset($_POST['subscriptionType'])) {
		$userHWID           = $mysqli->real_escape_string($_POST['userHWID']);
		$userName           = $mysqli->real_escape_string($_POST['userName']);
		$subscriptionType   = $mysqli->real_escape_string($_POST['subscriptionType']);
		//$subscriptionStatus = $mysqli->real_escape_string($_POST['subscriptionStatus']);

		$query = $mysqli->query("SELECT userName, userHWID, subscriptionType, subscriptionTimeout
								 FROM swgUsers
								 WHERE userName = '{$userName}' LIMIT 1");
		if ($data = $query->fetch_assoc()) {
			if ($data['subscriptionType'] != $subscriptionType)
				$subscriptionTimeout = 0;
			else
				$subscriptionTimeout = $data['subscriptionTimeout'];

/*			if (!$mysqli->query("UPDATE swgUsers
							SET userHWID = '{$userHWID}', subscriptionType = '{$subscriptionType}', subscriptionTimeout = '{$subscriptionTimeout}'
							WHERE userName = '{$userName}' LIMIT 1")) {
				print answerJSON("error", $mysqli->error);
			} else*/

			$mysqli->query("UPDATE swgUsers
							SET userHWID = '{$userHWID}', subscriptionType = '{$subscriptionType}', subscriptionTimeout = '{$subscriptionTimeout}'
							WHERE userName = '{$userName}' LIMIT 1");
			print answerJSON("success", "Пользователь изменен!");
		} else {
			print answerJSON("error", "Пользователь не найден!");
		}
	}
}

// add subscription
if (isset($_GET['action']) AND $_GET['action']=='addSubscription') {
	if (isset($_POST['userName']) AND isset($_POST['userHWID']) AND isset($_POST['subscriptionType'])) {
		$userHWID         = $mysqli->real_escape_string($_POST['userHWID']);
		$userName         = $mysqli->real_escape_string($_POST['userName']);
		$subscriptionType = $mysqli->real_escape_string($_POST['subscriptionType']);

		//$query = $mysqli->query("SELECT userHWID
		//						 FROM swgUsers
		//						 WHERE userHWID = '{$userHWID}' LIMIT 1");
		//if ($data = $query->fetch_assoc()) {
		//	print answerJSON("error", "Пользователь с таким HWID<br> уже существует!");
		//	exit;
		//} else {
		//}

		if (!$mysqli->query("INSERT INTO swgUsers (userHWID, userName, subscriptionType)
							VALUES ('{$userHWID}', '{$userName}', '{$subscriptionType}')")) {
			print answerJSON("error", $mysqli->error);
			exit;
		} else
			print answerJSON("success", "Пользователь добавлен!");
	} else
		print answerJSON("error", "Input error!");
}

// list all subscriptions
if (isset($_GET['action']) AND $_GET['action']=='listSubscription') {
	$Timer1 = new microTimer();
	$Timer1->start();

	$t = SeparateTemplate::instance()->loadSourceFromFile('subs_table');

	$query = $mysqli->query("SELECT
								swgUsers.userId,
								swgUsers.userName,
								swgUsers.userHWID,
							    swgUsers.subscriptionType,
							    swgUsers.userFirstLogin,
							    swgUsers.userLastLogin,
							    swgUsers.subscriptionTimeout,
							    swgSubscriptions.subscriptionId,
							    swgSubscriptions.subscriptionName,
							    swgSubscriptions.subscriptionCost,
							    swgSubscriptions.subscriptionTime
							    FROM
							    	swgUsers
							    LEFT JOIN
							    	swgSubscriptions
							    ON
							    	swgUsers.subscriptionType = swgSubscriptions.subscriptionId
							    ORDER BY
							    	swgUsers.userId
								DESC");
	if ($query) {
		$t->assign('elementsCount', $query->num_rows);

		while ($data = $query->fetch_assoc()) {
			/*		if ($data['playerName'] != "")
						$playerName = $data['playerName'];
					else
						$playerName = "---";*/

			/*		$userIP         = $data['userIP'];
					$userCount      = $data['userCount'];
					$userFirstLogin = ggtime($data['userFirstLogin']);*/

			/*		if ($data['userLastLogin'] > 0) {
						$userLastLogin = ggtime($data['userLastLogin']);
					}*/

			$userId   = $data['userId'];
			$userHWID = $data['userHWID'];
			$userName = $data['userName'];
			$userFirstLogin = $data['userFirstLogin'];
			$subscriptionTimeout = $data['subscriptionTimeout'];

			$subscriptionTime = $data['subscriptionTime'];

			//  ($userFirstLogin + $subscriptionTime) > 0
			//  ($userFirstLogin + $subscriptionTime) - time() > 0


			if($subscriptionTimeout != 0) {
				if (($userFirstLogin + $subscriptionTime) - time() > 0) {
					$subscriptionTimeout = ($userFirstLogin + $subscriptionTime) - time();
					$subscriptionTimeout = time2string($subscriptionTimeout);

					$subscriptionStatus  = "<img src='http://qteb.ru/begg/templates/images/active.png' style='height:70%;' border='0' align='middle'>";
				} else {
					$subscriptionStatus = "<img src='http://qteb.ru/begg/templates/images/expired.png' style='height:70%;' border='0' align='middle'>";
				}
			} else {
				$subscriptionTimeout = "---";
				$subscriptionStatus = "<img src='http://qteb.ru/begg/templates/images/not_activated.png' style='height:70%;' border='0' align='middle'>";
			}

			$subscriptionName = $data['subscriptionName'];
			if($subscriptionName == "Пожизненная") {
				$subscriptionTimeout = '---';
			}


			$userLastLogin = $data['userLastLogin'];
			if ($userLastLogin == 0) $userLastLogin = "---";
			else $userLastLogin = ggtime($userLastLogin);


			$rowBlock = $t->fetch('row');
			$rowBlock->assign('userId', $userId);

			$columnBlock = $rowBlock->fetch('column');

			$columnBlock->assign('userId', $userId);
			$columnBlock->assign('userHWID', $userHWID);
			$columnBlock->assign('userName', $userName);
			$columnBlock->assign('subscriptionType', $subscriptionName);
			$columnBlock->assign('subscriptionTimeout', $subscriptionTimeout);
			$columnBlock->assign('userLastLogin', $userLastLogin);
			$columnBlock->assign('subscriptionStatus', $subscriptionStatus);

			$rowBlock->assign('column', $columnBlock);
			$t->assign('row', $rowBlock);

			/*	echo "
				<b>{$userHWID} - {$userName}</b> $playerName
				<br>- [Активация: {$userFirstLogin}]
				{$subscriptionTimeout}
				{$userLastLogin}
				<br>- [Игр сыграно: {$userCount}]
				<br>- [IP: {$userIP}]
				<br><br>
					";*/
		}
	}
	print $t->display();

	//$data->close();
	//$query->close();
	//$mysqli->close();

	//echo $timer_total = $Timer1->stop();
}

// check subscription
if (isset($_GET['action']) AND $_GET['action']=='checkSubscription') {
	if (isset($_POST['userHWID']) AND isset($_POST['userName']) AND isset($_POST['playerName'])) {
		$userHWID   = $mysqli->real_escape_string($_POST['userHWID']);
		$userName   = $mysqli->real_escape_string($_POST['userName']);
		$playerName = $mysqli->real_escape_string($_POST['playerName']);

		$currentTime = time();
		//$ip = $_SERVER["REMOTE_ADDR"];
		$ip = GetIp();

		$query = $mysqli->query("SELECT userHWID, subscriptionType, subscriptionTimeout
								 FROM swgUsers
								 WHERE userHWID = '{$userHWID}' AND userName = '{$userName}' AND subscriptionTimeout > 0 LIMIT 1");
		if ($data = $query->fetch_assoc()) {
			$subscriptionTimeout = $data['subscriptionTimeout'] - $currentTime;

			if ($subscriptionTimeout > 0) {
				$mysqli->query("UPDATE swgUsers
								SET userLastLogin = UNIX_TIMESTAMP(now()), userCount = userCount+1, playerName = '{$playerName}', userIP = '{$ip}'
								WHERE userName = '{$userName}' LIMIT 1");
				echo 'ACTIVE';
			} else
				echo 'EXPIRED';
		} else {
			$query = $mysqli->query("SELECT userHWID, subscriptionType, subscriptionTimeout
								 	 FROM swgUsers
								 	 WHERE userHWID = '{$userHWID}' AND userName = '{$userName}' AND subscriptionTimeout = 0 LIMIT 1");
			if ($data = $query->fetch_assoc()) {
				if ($data['subscriptionType'] == "lifetime")
					$subscriptionTimeout = $currentTime + 31556-9260;
				else if ($data['subscriptionType'] == "subMonth1")
					$subscriptionTimeout = $currentTime + 2629743;
				else if ($data['subscriptionType'] == "subMonth3")
					$subscriptionTimeout = $currentTime + 7889229;
				else if ($data['subscriptionType'] == "none") {
					echo 'NOT FOUND';
					exit;
				}
				else {
					$subscriptionTimeout = 0;
					exit;
				}

				$mysqli->query("UPDATE swgUsers
							SET subscriptionTimeout = '{$subscriptionTimeout}', userFirstLogin = UNIX_TIMESTAMP(now()), userLastLogin = UNIX_TIMESTAMP(now()), userCount = userCount+1, playerName = '{$playerName}', userIP = '{$ip}'
							WHERE userName = '{$userName}' LIMIT 1");
				echo 'ACTIVATED';
			} else
				echo 'NOT FOUND';
		}
	} else
		die("No input.");
}