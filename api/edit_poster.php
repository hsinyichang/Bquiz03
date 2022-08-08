<?php

include_once "../base.php";

foreach($_POST['id'] as $key=>$id){   //有送過來的id資料
    if(isset($_POST['del']) && in_array($id,$_POST['del'])){  //如果傳過來有del陣列且id值有在del陣列裡
        $Poster->del($id);   //則刪除該id資料
    }else{
        $row=$Poster->find($id);
        $row['name']=$_POST['name'][$key]; //key值對應的位置
        $row['ani']=$_POST['ani'][$key];
        $row['sh']=(isset($_POST['sh']) && in_array($id,$_POST['sh']))?1:0;
        //如果sh  有傳送過來(在陣列裡) 則顯示1  沒有勾選的就顯示0
        
        $Poster->save($row);
    }
}
to("../back.php?do=poster");
?>
