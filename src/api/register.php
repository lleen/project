<?php
        header('Access-Control-Allow-Origin:*');
        header('Access-Control-Allow-Methods:POST,GET,OPTIONS'); 
        header('Access-Control-Request-Headers:accept, content-type');

        include 'DBHelper.php';

        $uname = !isset($_POST['uname']) ? "": $_POST['uname'];
        $pwd = !isset($_POST['pwd']) ? "": $_POST['pwd'];
    
        //判断用户是否存在，存在则不能注册
        $sql = "select * from user where username = '$uname'";
        $res = query_oop($sql);
        if(count($res) > 0){
            echo "{status:false,message: '用户名已注册'}";
        }else{
            
            $sql = "insert into user(username,upassword)values('$uname','$pwd')";
            $r = excute($sql);
            if($r){
                echo '{st:true}';
            }else{
                echo "{st:false,message: '注册失败'}";
            }
        }

?>