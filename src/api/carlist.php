<?php
        header('Access-Control-Allow-Origin:*');
        header('Access-Control-Allow-Methods:POST,GET,OPTIONS'); 
        header('Access-Control-Request-Headers:accept, content-type');
        // header("Content-Type:text/html;charset=GB2312");
        include 'DBHelper.php';

        //接收前端传输过来的数据
        $id = isset($_POST["id"]) ? $_POST["id"] : "";
        // $GiftItems = isset($_POST["GiftItems"]) ? $_POST["GiftItems"] : "";
        $username = isset($_POST["username"]) ? $_POST["username"] : "";
        // echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">';
        // $a = iconv('UTF-8','GB18030',$GiftItems);
        // echo iconv("GBK","UTF-8", $GiftItems);

        $sql = "insert into userlist(id,username)values('$id','$username')";
        $r = excute($sql);
        if($r){
            echo '{st:true}';
        }else{
            echo "{st:false,message: '注册失败'}";
        }

?>