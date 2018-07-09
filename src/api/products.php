<?php
    // 指定允许其他域名访问  
    header('Access-Control-Allow-Origin:*');
    header('Access-Control-Allow-Methods:POST,GET,OPTIONS'); 
    header('Access-Control-Request-Headers:accept, content-type');

    include 'DBHelper.php';

    function bai($qty){
        $sql = "select * from  biaobai limit $qty,18;select count(*) from biaobai";
        $res = multi_query_oop($sql);
        $list  = json_encode($res, JSON_UNESCAPED_UNICODE);
        echo  "{status:true,data:$list}";
    }
    bai(0);


?>