<?php
include_once "../base.php";

$row=$Movie->find($_POST['id']);

// $row['sh']=($row['sh']==1)?0:1;
$row['sh']=($row['sh']+1)%2;
$Movie->save($row); 
?>