<?php
        header('Access-Control-Allow-Origin:*');
        header('Access-Control-Allow-Methods:POST,GET,OPTIONS'); 
        header('Access-Control-Request-Headers:accept, content-type');

        include 'DBHelper.php';

        //接收前端传输过来的数据
        $id = isset($_POST["id"]) ? $_POST["id"] : "";
        $qty = isset($_POST["qty"]) ? $_POST["qty"] : "";

        $sql = "update userlist set qty='$qty' where id='$id'";
        //读取
        $res =  excute($sql);
        if($res){
            // echo   "{status: true, data: $list}";
        }else{
            echo  "{status:false,message: '错误信息可能是网络不好？'}";
        }

?>