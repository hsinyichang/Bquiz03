<?php
include_once "../base.php";

if(isset($_FILES['trailer']['tmp_name'])){  //處理預告影片$_POST
    $_POST['trailer']=$_FILES['trailer']['name'];
    move_uploaded_file($_FILES['trailer']['tmp_name'],"../upload/".$_FILES['trailer']['name']);
}
if(isset($_FILES['poster']['tmp_name'])){   //處理電影海報$_POST

    $_POST['poster']=$_FILES['poster']['name'];
    move_uploaded_file($_FILES['poster']['tmp_name'],'../upload/'.$_FILES['poster']['name']);
}


$_POST['ondate']=$_POST['year']."-".$_POST['month']."-".$_POST['dat'];
//因為年月日是分開的要先處理  但欄位只有一個  所以要串接起來
unset($_POST['year'],$_POST['month'],$_POST['day']);
//上面串接完後  這三個要刪掉
$_POST['sh']=1;  //自己寫
$_POST['rank']=$Movie->math('max','id')+1; //因為一筆一筆上傳  所以排序要找到裡面目前最大id值+1
