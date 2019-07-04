/*真心不太会做  大体看了下javaWeb的书 有许多东西都没有遵循标准来做  但是竟然真的实现了 */
//其实也可以将这部分的功能代码直接写在登入页面上 在登入页面上进行实现 但是没这样做
//相应的表我已经再数据库建立了 在此就不再多加描述
//js、css也没有采用外部链接   都不好意思叫js了 我就简单的对用户是否输进行了一下检测 没脸了 js真心忘了
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>在此处插入标题</title>
<%@page import="java.sql.*" %>
</head>
<body>

<%  
request.setCharacterEncoding("UTF-8");
    String username=request.getParameter("username");  
    String password=request.getParameter("password");  
    try {  
        // 加载数据库驱动，注册到驱动管理器  
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  
        // 数据库连接字符串  
        String url = "jdbc:sqlserver://localhost:1433;DatabaseName=MyJavaWeb";  
        // 数据库用户名  
        String usename = "sa";  
        // 数据库密码  
        String psw = "citsoft";  
        // 创建Connection连接  
        Connection conn = DriverManager.getConnection(url,usename,psw);  
        // 判断 数据库连接是否为空  
        if(conn != null){             
            String sql="select * from [user] where username='"+username+"' and password='"+ password + "'";  
            Statement stmt = conn.createStatement();  
            ResultSet rs=stmt.executeQuery(sql);  
            if(rs.next()){  
                response.sendRedirect("Main_index.jsp");                
            }else{  
            	  out.println("该用户没注册");;   
                %>  
                <a href="javascript:history.back()">返回</a>  
                <%   
            }             
        
            conn.close();  
        }else{  
            // 输出连接信息  
            out.println("数据库连接失败！");                          
        }  
    } catch(ClassNotFoundException e)
    {
    	out.println(e.getMessage());
    }
    catch(SQLException e)
    {
    out.println(e.getMessage());	
    }  
%>  
</body>
</html>
