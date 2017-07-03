<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 18.06.2017
 * Time: 15:04
 */
date_default_timezone_set('Europe/Kiev');
$newyear = strtotime('2018-01-01');
$seychas = time();
$endsummer = strtotime('2017-09-01');
$nextmonday = strtotime('next monday');
echo 'Сейчас '.date('Y-m-d H-i-s'),'<br/>';
echo 'До нового 2018 года осталось:     '.(($newyear - $seychas)/60)." минут",'<br/>',"\n";
echo  'До конца лета осталось:  '.($endsummer - $seychas)."секунд",'<br/>',"\n";
echo 'До следующего понедельника осталось:  '.(($nextmonday - $seychas)/3600).'часов',"\n";
?>