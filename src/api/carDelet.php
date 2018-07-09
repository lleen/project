<?php
        header('Access-Control-Allow-Origin:*');
        header('Access-Control-Allow-Methods:POST,GET,OPTIONS'); 
        header('Access-Control-Request-Headers:accept, content-type');
        // header("Content-Type:text/html;charset=GB2312");
        include 'DBHelper.php';

        //接收前端传输过来的数据
        $id = isset($_POST["id"]) ? $_POST["id"] : "";
        $sql = "delete from userlist where id='$id'";

        $r = excute($sql);
        if($r){
            $sql = "select * from goodslist  inner  join userlist on userlist.id = goodslist.id";
            $res = query_oop($sql);
             if($res){
            
                    $list = json_encode($res,JSON_UNESCAPED_UNICODE);
                    echo   "{status: true, data: $list}";

            }else{
                echo  "{status:false,message: '错误信息可能是网络不好？'}";
            }

        }else{
            echo "{st:false,message: '注册失败'}";
        }

?>