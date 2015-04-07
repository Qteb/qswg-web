<?php
if (!defined('Q.Engine')) die("Get the fuck out of here!");

$langdate = array (
	'January'  =>  "Января",
	'February'  =>  "Февраля",
	'March'	=>  "Марта",
	'April'	=>  "Апреля",
	'May'	=>  "Мая",
	'June'	=>  "Июня",
	'July'	=>  "Июля",
	'August'  =>  "Августа",
	'September'  =>  "Сентября",
	'October'  =>  "Октября",
	'November'  =>  "Ноября",
	'December'  =>  "Декабря",

	'Jan'  =>  "янв",
	'Feb'  =>  "фев",
	'Mar'  =>  "мар",
	'Apr'  =>  "апр",
	'May'  =>  "мая",
	'Jun'  =>  "июн",
	'Jul'  =>  "июл",
	'Aug'  =>  "авг",
	'Sep'  =>  "сен",
	'Oct'  =>  "окт",
	'Nov'  =>  "ноя",
	'Dec'  =>  "дек",

	'Sunday'  =>  "Воскресенье",
	'Monday'  =>  "Понедельник",
	'Tuesday'  =>  "Вторник",
	'Wednesday'  =>  "Среда",
	'Thursday'  =>  "Четверг",
	'Friday'  =>  "Пятница",
	'Saturday'  =>  "Суббота",

	'Sun'  =>  "Вс",
	'Mon'  =>  "Пн",
	'Tue'  =>  "Вт",
	'Wed'  =>  "Ср",
	'Thu'  =>  "Чт",
	'Fri'  =>  "Пт",
	'Sat'  =>  "Сб",
);

function num2word($num,$words)
{
	$num=$num%100;
	if ($num>19)
		$num=$num%10;
	switch ($num)
	{
		case 1: return($words[0]);
		case 2: case 3: case 4: return($words[1]);
		default: return($words[2]);
	}
}

function langdate($format,$stamp)
{
	global $langdate;
	return strtr(date($format,$stamp),$langdate);
}

function ggtime($stamp)
{
	$words1=array("секунда", "секунды", "секунд");
	$words2=array("минута", "минуты", "минут");
	$words3=array("час", "часа", "часов");

	$seconds = time()-$stamp;
	if($seconds >= "0" && $seconds <= "60") // до минуты
	{
		$seconds_word = num2word($seconds,$words1);
		$stamp = $seconds." ".$seconds_word."  назад";
	}
	else if($seconds > "60" && $seconds <= "3600")  // до часа
	{
		$minutes = intval($seconds/60);
		$minutes_word = num2word($minutes,$words2);
		$stamp = $minutes." ".$minutes_word."  назад";
	}
	else if($seconds > "3600" && $seconds <= "86400") // до дня
	{
		$hours = intval($seconds/3600);
		$minutes = intval($seconds/60)-60*$hours;
		$hours_word = num2word($hours,$words3);
		$minutes_word = num2word($minutes,$words2);
		$stamp = $hours." ".$hours_word." и ".$minutes." ".$minutes_word."  назад";
	}
	else if($seconds > "86400"  && $seconds <= "172800")
		$stamp = langdate("вчера в H:i:s",$stamp);
	else
		$stamp = langdate("j M Y в H:i",$stamp);
	return $stamp;
}

?>