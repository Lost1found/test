<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html;charset=UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户找回密码</title>
</head>
<body>
<center>
	<%
	//接收请求内容
	String username=request.getParameter("username");
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	String repassword=request.getParameter("repassword");
	//定义变量，如果用户合法，则将此标记变为true
	boolean flag=false;
	%>
	<%
	//定义数据库操作的常量以及对象
	//数据库驱动程序
	String driverName="com.mysql.jdbc.Driver";
	//数据库链接地址
	String url="jdbc:mysql://127.0.0.1:3306/失卡招领?user=root&password=ywj980822&characterEncoding=UTF-8&serverTimezone=UTC";
	//声明一个数据库连接对象
	Connection conn=null;
	//声明一个结果集对象
	ResultSet rs=null;
	//声明一个sql变量用于保存sql语句
	String sql=null;
	try{
	//进行数据库操作
	//加载驱动程序
	Class.forName(driverName);
	//连接数据库
	conn=DriverManager.getConnection(url);
	Statement stmt=conn.createStatement();
	//判断用户邮箱和用户名是否正确
	sql="SELECT * FROM user WHERE username='"+username+"' AND email='"+email+"'";
	rs=stmt.executeQuery(sql);
	if(rs.next()){
		//新密码保存到数据库中
		stmt.executeUpdate("UPDATE user SET password='"+password+"'WHERE username='"+username+"' AND email='"+email+"'");
		out.println("<h1 align=center>找回密码成功！</h1>");
		out.println("<div align=center><input type=button value= 前往登录 onClick=\"window.location.href='login.jsp'\"></div>");
	}else{
		out.println("<h1 align=center>您输入的邮箱和用户名错误</h1>");
		out.println("<div align=center><input type=button name=btn1 value= 返回 onClick='window.history.go(-1)'></div>");
	}
	rs.close();
	stmt.close();
	conn.close();
	}
	catch(Exception ex){
		out.println("<h1 align=center>找回密码失败！</h1>");
		out.println("<div align=center><input type=button name=btn1 value= 返回 onClick='window.history.go(-1)'></div>");
	}
	%>
</body>
</html>