<button onclick="location.href='?do=add_movie'">新增電影</button>
<hr>
<div style="overflow:scroll;height:430px;">
<?php
$rows=$Movie->all("order by rank");
foreach($rows as $key=>$row){
    $prev=(isset($rows[$key-1]))?$rows[$key-1]['id']:$row['id'];
    $next=(isset($rows[$key+1]))?$rows[$key+1]['id']:$row['id'];
?>
    <div style="background: #eee;width:99%;height:140px;margin:2px 0;display:flex;">
        <div style="width:15%">
            <img src="./upload/<?=$row['poster'];?>" style="width:99%;height:130px">
        </div>
        <div style="width:15%">
            分級:<img src="./icon/<?=$Level[$row['level']];?>" alt="">  <!--Base檔的對應$Level陣列-->
        </div>
        <div style="width:70%">
            <div style="display:flex">
                <div style="width:33.33%">片名:<?=$row['name']?></div>
                <div style="width:33.33%">片長:<?=$row['length']?></div>
                <div style="width:33.33%">上映時間:<?=$row['ondate']?></div>
            </div>
            <div>
                <button onclick="show(<?=$row['id'];?>)"><?=($row['sh']==1)?'顯示':'隱藏'?></button>
                <button onclick="sw('movie',[<?=$row['id'];?>,<?=$prev;?>])">往上</button>
                <button onclick="sw('movie',[<?=$row['id'];?>,<?=$next;?>])">往下</button>
                <button onclick="location.href='?do=edit_movie&id=<?=$row['id'];?>'">編輯電影</button>
                <button onclick="del('movie',<?=$row['id']?>)">刪除電影</button>
            </div>
            <div>
                劇情介紹:<?=$row['intro']?>
            </div>
        </div>
    </div>
    <?php
    }
    ?>
</div>

<script>

</script>