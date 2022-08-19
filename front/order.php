<?php  $selectedMovieId=$_GET['id']??0 ;?>
<div id="order">

    <h2 class="ct">線上訂票</h2>
    
    <table style="width:500px;margin:auto">
        <tr>
            <td width="15%">電影：</td>
            <td>
                <select name="movie" id="movie"></select>
            </td>
        </tr>
        <tr>
            <td>日期：</td>
            <td>
            <select name="date" id="date"></select>
            </td>
        </tr>
        <tr>
            <td>場次：</td>
            <td>
            <select name="session" id="session"></select>
            </td>
        </tr>
    </table>
    <div class="ct">
        <button onclick="booking()">確定</button>
        <button>重置</button>
    </div>
</div>

<div id="booking" style="display:none">
劃位

</div>

<script>
     let info={    //設全域變數(電影資訊)
        movieId:0,
        movieName:'',
        date:'',
        sessionId:0,
        session:'',
    }

    $("#movie").load("./api/movie_list.php",{id:<?=$selectedMovieId;?>},()=>{
        let movie=$("#movie").val();
        getDate(movie)
    })

    $("#movie").on('change',function(){
        let movie=$(this).val();
        getDate(movie)
        
    })
    function getDate(movie){

        $("#date").load("./api/date_list.php",{movie},()=>{
            let date=$("#date").val()
            getSession(movie,date)
        })
    }

    $("#date").on('change',function(){
        let movie=$("#movie").val();
        let date=$(this).val();
        getSession(movie,date)
    })

    function getSession(movie,date){
        $("#session").load("./api/session_list.php",{movie,date},()=>{

        })
    }

    function booking(){
        $("#order").hide();
        $("#booking").show();
        $.get("./api/get_booking.php",(seats)=>{
            $("#booking").html(seats)
            updateInfo();  //取得電影資訊
            setSeatEvents();//呼叫下方程式
        })
    }

    function updateInfo(){  //將選擇的電影資訊取得值
        info.movieId=$("#movie").val()
        info.movieName=$("#movie option:selected").text()
        info.date=$("#date").val()
        info.sessionId=$("#session").val()
        info.session=$("#session option:selected").text().split(" ")[0]
    }


    function setSeatEvents(){  //分開寫比較清楚
        let seats=new Array(); //要設置陣列可儲存勾選的位置index
        $("#movieName").text(info.movieName)
        $("#dateStr").text(info.date)
        $("#sessionName").text(info.session)

        $(".seat input").on("change",function(){
            let num=$(this).val();//所勾選的座位index
            
            
            if($(this).prop('checked')){  //先判斷checkbox的狀態，若為true(勾選)↓
                if(seats.length>=4){  //勾選到第五個時
                    alert("最多只能勾選四張票")
                    $(this).prop('checked',false)  //第五個的狀態為不勾選的
                }else{
                    seats.push(num)   //四張以內的就將index放在陣列
                    $(this).parent().removeClass("empty")  //更換勾選的class 可顯示有椅子的圖片
                    $(this).parent().addClass("checked")
                }
            }else{    //checkbox的狀態，若為false(不勾選)↓
                seats.splice(seats.indexOf(num),1);   //將不勾選的index開始刪除1個
                $(this).parent().removeClass("checked")   //將有椅子的圖案換回沒有椅子的
                $(this).parent().addClass("empty")
            }
            
            $("#tickets").text(seats.length)   //將所勾選的座位數傳回api/getbookin id='tickets' 裡

                
            })
    }
</script>