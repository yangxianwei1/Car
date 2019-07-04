/* 登入页面，不再进行多于描述 前端小小白 恐怕还没到入门阶段 勿喷  */
//哈哈 相关js代码也直接在页面插入了 最后再进行下统一的link吧！！！！ 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>请先登入-汽车租赁管理系统</title>
<style type="text/css">
	*{margin: 0;padding: 0}
	body{background-image: url(login.jpg) ;
		background-repeat: no-repeat;background-size: cover;background-position: center center;background-attachment: fixed;
	}
#theform{width: 600px;height: 460px;margin: 140px auto;border: solid;color: white}
.whf{text-align: center;}
input{outline: none;opacity: 0.8 }
input:focus{opacity: 0.9}
.login_l{

	width: 64%;height: 40px;
}
.login_p{width: 64%;height: 40px}
.but{width: 30%;height: 48px;background-color:#000000;color:white;outline: none;border-color: rgb(243,246,246);}
.but:hover{cursor: pointer;border-color: rgb(0,235,255);}

</style>
<script>

function a(){
var user=document.getElementById("login1");
var pw=document.getElementById("login2");
if(user.value=="")
	{
	
	alert("请先输入用户名");
	return false;
	}
else if(pw.value=="")
{
	
	alert("您还没有输入密码");
	return false;
	}
	
}

</script>
</head>
<body>
<div id="theform">
<p style="text-align: center;font-size: 40px;color: black;font-weight: 100">欢&nbsp;迎&nbsp;登&nbsp;入</p>
	<br>
	<br>
	<div class="whf">
	<form action="check.jsp" method="post" >
		
<input type="text" name="username" placeholder="请输入您的用户名" class="login_l" id="login1">
<br>
<br>
<br><br>
<br>
<input type="password" name="password" placeholder="请输入您的密码" class="login_p" id="login2">
<br><br>
<br>
<input type="submit" name="" value="登入" class="but" onclick="return a()">
<input type="reset" name="" value="取消" class="but">
	</form>
	</div>
</div>
</body>
</html>
