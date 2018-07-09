<?php
        header('Access-Control-Allow-Origin:*');
        header('Access-Control-Allow-Methods:POST,GET,OPTIONS'); 
        header('Access-Control-Request-Headers:accept, content-type');
        include 'DBHelper.php';

        //接收前端传输过来的数据
        $uname = isset($_POST["uname"]) ? $_POST["uname"] : "";
        $pwd = isset($_POST["pwd"]) ? $_POST["pwd"] : "";
        $sql = "select * from user where username='$uname' and upassword='$pwd'";
        //读取
        $res = query($sql);
        
        //开启session
        session_start();
        if($res){
            $_SESSION['use'] = $uname;
            $list = json_encode($res,JSON_UNESCAPED_UNICODE);
            echo   "{status: true, data: $list}";
        }else{
            echo  "{status:false,message: '此用户不存在'}";
        }

?>
