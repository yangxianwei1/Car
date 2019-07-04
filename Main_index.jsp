/*主页面显示也没有采用什么前后端分离 等等之类的规范 */
//尤其是在页面显示 css相关的部分忘的也差不多了 
//在对盒模型进行排版时也比较乱 我是用float和position来实现的 特别乱 
//在对浏览器放大缩小时盒模型就会溢出
//等过去这段很长的时间真的要补一下html、css和js的相关内容了
//同样也没采用外部链接来导入css  哈哈！！！
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>汽车租赁网</title>
	<!-- 先采用内嵌式的css表  最后在将内嵌改为外部式连接 -->
	<style type="text/css">
	body{margin: 0 auto}
		#p1{height: 352px;
width: 100%;
background-image: url(1.jpg);background-size: cover;background-position: center center;position: relative;

		}
		#p2{height: 292px;width: 100%;background-color: rgb();
		}
		#p3{height: 132px;width: 100%;border-top: 1px solid 
		;background-color: #fff;position: relative;color:#515151}
		/*作为页面底部 填写小组信息*/

#p1one{position: absolute;width: 64px;height: 21px;font-size: 16px;color: white;right: 4%;top: 4%}
.font{position: absolute;left:37%;top: 32%;color: white;font-family: "宋体" ;font-size: 48px}

.fam{color: white}
.fam a{text-decoration: none;color: white}
.fam a:hover{color: black}
.searchi{position: absolute;width: 529px;height: 45px;

top: 68%;left:32%;
}
.in1{width: 425px;height: 35px;border-radius: 2px;opacity: 0.8;}
.in2{
	width: 71px; height: 36px; border-width: 0px; border-radius: 2px;background: #6ab892; 
	outline: none; 
	color: white; 
	font-size: 15px; margin-top: 2px;opacity: 0.86

 }
 .in2:hover{opacity: 1}
.p2one{width: 137px;height:155px;/*border: solid 1px;*/float: left; margin-left: 164px;margin-top: 42px;position: relative;background-color: transparent;}
	.in2:hover{cursor: pointer;}
#wholep2{padding:12px auto;}
.carin1{ position: absolute; width: 80%;top: 2%}
.carin2{position: absolute;width: 82%;/*border: 1px solid;*/top: 62%}
.driin1{position: absolute;width: 70%;height: 54%;left: 8%;top: 3.5%}
.driin2{position: absolute;width: 82%;/*border: 1px solid;*/top: 62%}
.client1{position: absolute;left: 6%}
.client2{position: absolute;width: 82%;/*border: 1px solid;*/top: 62%}
.mony1{position: absolute;}
.mony2{position: absolute;width: 82%;/*border: 1px solid;*/top: 62%}
#p2 a{text-decoration: none;color: black;}
#p2 a:hover{opacity: 0.8}
	.p31{position: absolute;width: 100%;height: 52px;}
	.p32{position: absolute;width: 100%;height: 82px;top: 52px;}
	.member{font-size: 28px;font-weight: lighter;font-family: "微软雅黑";margin-left: 123px;}
.p31{border-bottom: 0.4px black solid;color:#282727}
.list{position: absolute;left: 22%;font-size: 17px;opacity: 0.7}
.list ul{color: #515151;list-style: none;}
	input:focus{opacity: 0.9}
	</style>

</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String username=request.getParameter("username");

%>
<div id="p1">
<div class="font">
	<h>汽车租赁管理</h>

</div>
<div id="p1one">
<span class="fam"><a href="#">欢迎你,<%=username %></a></span>

</div>	
<div id="p1two">
	
<div class="searchi">
	<form action="search.jsp" method="post">
		<input type="text" name="car_search" placeholder="请输入您想租赁的汽车品牌" class="in1">
		<input type="submit" value="搜索"  class="in2" >
	</form>

</div>

</div>
<div id="p1three"></div>

</div>

<div id="p2" >
<div id="wholep2"> 
	<div class="p2one">
<div  class="carin1">
<img src="car.svg">
</div>
<div class="carin2">
<center>	
	<p><a href="car1.jsp">车辆信息</a></p>
</center>
<p style="font-size:3px;opacity:0.7">点击即可查询您所租赁的车辆信息</p>
</div>

	</div>
	<div class="p2one" >
<div  class="driin1">
<img src="driver.svg" >
</div>
<div class="driin2">	
<center>
	<p><a href="driver2.jsp">车主信息</a></p>
</center>
<p style="font-size:3px;opacity:0.7">点击即可查询租赁车辆的司机信息</p>
</div>

	</div>
	<div class="p2one" >
		<div  class="client1">
<img src="client.svg" width="100px" height="118px">
</div>
<div class="client2">	
<center>
	<p><a href="#">我的信息</a></p>
</center>
<p style="font-size:3px;opacity:0.7">点击即可查询客户信息</p>
</div>

	</div>
	<div class="p2one" >
		<div  class="mony1">
<img src="money.svg" width="100px" height="124px">
</div>
<div class="mony2">	
	<center>
	<p><a href="#">租金信息</a></p>
	</center>
	<p style="font-size:3px;opacity:0.7">点击即可查询租赁车辆所用的租金</p>
</div>

	</div>
</div> 
</div>
<div id="p3">
	<div class="p31">
		<span class="member">关于我们</span>
	</div>

<div class="p32">
	<div class="list">
		<ul>
			
<li>小&nbsp;组&nbsp;编&nbsp;号&nbsp;:&nbsp;网络1731第三小组 </li>
<li>小&nbsp;组&nbsp;成&nbsp;员：杨先伟、翁程浩、祝艳革、韦冰探、李文祥、金聪、李洪显</li>

		</ul>


	</div>
</div>
</div>


</body>
</html>
