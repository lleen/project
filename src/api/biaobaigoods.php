<?php
        header('Access-Control-Allow-Origin:*');
        header('Access-Control-Allow-Methods:POST,GET,OPTIONS'); 
        header('Access-Control-Request-Headers:accept, content-type');
        include 'DBHelper.php';

        $id = !isset($_GET['id']) ? "": $_GET['id'];

        $sql = "select * from biaobai  where id = '$id'";
        //读取
        $res = query_oop($sql);

        $list = json_encode($res,JSON_UNESCAPED_UNICODE);

        echo  "{status: true, data: $list}";

?>