<?php
session_start();
date_default_timezone_set("Asia/Taipei");

class DB{
    protected $dsn='mysql:host=localhost;charset=utf8;dbname=db03';
    protected $table;
    protected $pdo;

    function __construct($table)
    {
        $this->table=$table;
        $this->pdo=new PDO($this->dsn,'root','');
    }

    function all(...$arg){
        $sql="select * from $this->table ";
        if(isset($arg[0])){
            if(is_array($arg[0])){
                foreach($arg[0] as $key => $val){
                    $tmp[]="`$key`='$val'";
                }
                //$sql = $sql . " where " . join(" && ",$tmp);
                $sql .= " where " . join(" && ",$tmp);
            }else{
                // $sql=$sql . $arg[0];
                $sql .= $arg[0];
            }
        }

        if(isset($arg[1])){
            $sql .= $arg[1];
        }

        //echo $sql;
        return $this->pdo->query($sql)->fetchAll(PDO::FETCH_ASSOC);
   }
   function find($arg){
    $sql="select * from $this->table where";
    
        if(is_array($arg)){
            foreach($arg as $key => $val){
                $tmp[]="`$key`='$val'";
            }
            //$sql = $sql . " where " . join(" && ",$tmp);
            $sql .=  join(" && ",$tmp);
        }else{
            // $sql=$sql . $arg[0];
            $sql .= " `id`='$arg'";
        }
   

    //echo $sql;
    return $this->pdo->query($sql)->fetch(PDO::FETCH_ASSOC);
   }

   function save($array){
        if(isset($array['id'])){
            //更新
            foreach($array as $key => $val){
                $tmp[]="`$key`='$val'";
            }
            
            $sql="update $this->table set  ".join(',',$tmp)."  where `id`='{$array['id']}'";
        }else{
            $sql="insert into $this->table (`".join("`,`",array_keys($array))."`) 
                                     values('".join("','",$array)."')";
        }

        return $this->pdo->exec($sql);
   }

   function del($id)
    {
        $sql="delete from $this->table where ";
        if(is_array($id))
        {
            foreach($id as $key => $val){
                $tmp[]="`$key`='$val'";
            }
            $sql.= join(" && ",$tmp);
        }else{
            $sql.=" `id`='$id'";
        }
        return $this->pdo->exec($sql);
    }
    
   function math($math,$col,...$arg){
    $sql="select $math($col) from $this->table ";
    if(isset($arg[0])){
        if(is_array($arg[0])){
            foreach($arg[0] as $key => $val){
                $tmp[]="`$key`='$val'";
            }
            //$sql = $sql . " where " . join(" && ",$tmp);
            $sql .= " where " . join(" && ",$tmp);
        }else{
            // $sql=$sql . $arg[0];
            $sql .= $arg[0];
        }
    }

    if(isset($arg[1])){
        $sql .= $arg[1];
    }

    //echo $sql;
    return $this->pdo->query($sql)->fetchColumn();
   }
   function q($sql){
        return $this->pdo->query($sql)->fetchAll(PDO::FETCH_ASSOC);
   }
}

function dd($array){
    echo "<pre>";
    print_r($array);
    echo "</pre>";
}

function to($url){
    header('location:'.$url);
}

$Poster=new DB('poster');
$Movie=new DB('movie');
$Order=new DB('orders');

$Level=[                 //先設陣列可以讓back/movie.php使用
    '普遍級'=>'03C01.png',
    '輔導級'=>'03C02.png',
    '保護級'=>'03C03.png',
    '限制級'=>'03C04.png',
];
$Level['普遍級']
?>