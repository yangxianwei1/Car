/*其实今天在补前两天实验报告时才发现打印的时候源码肯定看不清楚*/
//此页面是通过用户来搜索要租赁的相关的汽车时让用户填写相关信息 提交到我所创建的数据表中
//在这里我将两个jsp都放在search_index.jsp的这里了啊
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>可租赁的车辆</title>
	<style type="text/css">
		*{margin: 0;padding: 0}
#page1{width: 100%;height: 120px;background-color: orange;position: relative;}
.part1{

position: absolute;left:2%;top:9%

}
.p2{position: absolute;left:12%;top:23%}
.part2{position: absolute;bottom: 3%;left:1%}
#page2{width: 100%;height:520px;position: relative;}
.wholepage2{position: absolute;left: 2%;top: 2.6%}
input{width: 232px;height: 24px}
.spe{width: 32%;height: 38px;background-color:#000000;color:white;outline: none;border-color: rgb(243,246,246);}
	</style>

</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String carname=request.getParameter("car_search");
%>
<div id="page1">
<div class="part1">
<p>您想租赁的车辆为:</p>
</div>
<div class="p2">
<span><%=carname %></span>
</div>

<div class="part2">
<p>添加租赁信息</p>
</div>
</div>
<div id="page2"><!-- 此处为表单 跳转到添加结果界面 检测是否添加成功 -->
	<div class="wholepage2">
	<form action="addc.jsp" method="post"><!-- 跳转页面还没写 到时候直接写结果即可 -->
		

	<span>车辆名称:&nbsp;&nbsp;</span><input type="text" name="carName"><br>
	<br>
	<br>
	<span>租赁日期:&nbsp;&nbsp;</span><input type="text" name="carDate"><br>
<br>
	<br>
 <span>租赁时长:&nbsp;&nbsp;</span><input type="text" name="carLd"><br>
<br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="" value="点此提交"  class="spe">
	</form>
	</div>
</div>
</body>
</html>


//对数据库的相应操作 在此之前已经创建了javaBean对象 car的相关属性和方法
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@page import="java.sql.*" %>
<title>在此处插入标题</title>
</head>
<body>
<!-- 这次先这样写 在后期做细节化处理的时候可将此页面与search界面合成一个界面，在search界面中显示添加结果 -->
<% 
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="car" class="car.Add"/>
<jsp:setProperty property="*" name="car"/>
<%
try{
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  

String url = "jdbc:sqlserver://localhost:1433;DatabaseName=MyJavaWeb";  
  
String usename = "sa";  
  
String psw = "citsoft";  
  
Connection conn = DriverManager.getConnection(url,usename,psw);
//接下来往sql里面添加相关信息
//先将添加的内容放到一个myinfor信息中 接下来将做一下测试,先创建myinfor表
String sql="insert into myinfor(carName,carDate,carLd) values(?,?,?)";
PreparedStatement ps=conn.prepareStatement(sql);//获取该
ps.setString(1,car.getCarName());
ps.setString(2,car.getCarDate());
ps.setString(3,car.getCarLd());
int row=ps.executeUpdate();
if(row>0)
{
out.println("租赁信息已成功提交");	
}
ps.close();
conn.close();
}catch(Exception e){
	out.println("租赁信息提交失败");
	e.printStackTrace();
	
}


%>
<br>
<a href="search.jsp">返回</a>
</body>
</html>
