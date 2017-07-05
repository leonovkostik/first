<?php
 $year = '1975';
//$arr = array(explode("-",'07-09-2017'));
 //var_dump($arr);
 $time  = strtotime("07-September-$year");
//echo $time,'<br/>';
$week = ['вс','пн','вт','ср','чт','пт','сб'];
echo 'В '.$year . '  году мой День Рождения был/будет в '.$week[date('w', $time)];
?>