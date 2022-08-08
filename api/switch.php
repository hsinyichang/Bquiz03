<?php
//  8/8上午10:22左右講解
include_once "../base.php";
$table=$_POST['table'];
$DB=new DB($table);
$ids=$_POST['id'];

$row0=$DB->find($ids[0]);
$row1=$DB->find($ids[1]);

$rank=$row0['rank'];//先給個暫存變數
//順序做交換
$row0['rank']=$row1['rank'];
$row1['rank']=$rank;

$DB->save($row0);
$DB->save($row1);

