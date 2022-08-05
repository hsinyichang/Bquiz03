<?php

if(!empty($_POST)){
    if($_POST['acc']=='admin' && $_POST['pw']=='1234'){
        $_SESSION['login']=1;//如果帳號密碼都對，就給session
        to("back.php");//重載一次頁面，back頁面才會載入有session
    }else{
        $error="帳號或密碼錯誤";
    }
}

?>
<h3 style="color: red;" class='ct'><?=$error??''?></h3>
<!-- 如果有error就顯示  沒有就空值 -->
<form action="back.php" method="POST">
<table style="width: 30%;margin:auto">
    <tr>
        <td>帳號:</td>
        <td><input type="text" name="acc" id="acc"></td>
    </tr>
    <tr>
        <td>密碼:</td>
        <td><input type="password" name="pw" id="pw"></td>
    </tr>
</table>
<div class="ct"> <input type="submit" value="送出"></div>
</form>