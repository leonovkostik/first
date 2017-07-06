<?php
$year = 1975;
$vis = array();
while ($year <= 2017){
if (date('L',mktime(0,0,0,1,1,$year)) == 1) {
   // echo  $year.' -это высокосный год','<br>';
    $vis[] = $year;
}
   //else echo $year.' -это не высокосный год','<br>';
$year++;}
 var_dump($vis);
echo  '<br>',' за свою жизнь я прожил '.count($vis).' высокосных лет.';
?>