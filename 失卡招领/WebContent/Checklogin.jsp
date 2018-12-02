<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
<title>登录检查</title>
</head>
<body>
<center>
	<%
	//接收请求内容
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	String code=(String)session.getAttribute("code");//从session对象中获取生成的验证码
	String input =request.getParameter("yanzhengma");
	//定义变量，如果用户合法，则将此标记变为true
	boolean flag=false;
	%>
	<%
	//定义数据库操作的常量以及对象
	String driverName="com.mysql.jdbc.Driver";//数据库驱动程序
	//数据库链接地址
	String url="jdbc:mysql://127.0.0.1:3306/失卡招领?user=root&password=ywj980822&characterEncoding=UTF-8&serverTimezone=UTC";
	//声明一个数据库连接对象
	Connection conn=null;
	//声明一个数据库操作对象
	PreparedStatement pstmt=null;
	//声明一个结果集对象
	ResultSet rs=null;
	//声明一个sql变量用于保存sql语句
	String sql=null;
	%>
	<%
	//进行数据库操作
	try{
	//编写sql语句
	sql="SELECT username FROM user WHERE username=? AND password=?";
	//加载驱动程序
	Class.forName(driverName);
	//连接数据库
	conn=DriverManager.getConnection(url);
	//实例化数据库操作对象
	pstmt=conn.prepareStatement(sql);
	//设置pstmt的内容
	pstmt.setString(1,username);
	pstmt.setString(2,password);
	//查询记录
	rs=pstmt.executeQuery();
	//判断是否有记录
	if(rs.next())
	{
		//如果有记录，则执行该段代码
		//用户合法，验证码正确，可以登陆	
			flag=true;	
	}
	//依次guanbi
	rs.close();
	pstmt.close();
	conn.close();
	}
	catch(Exception e){}
	%>
	<%
	//判断用户名以及密码
	if(flag)
	{
	//合法用户
	%>
	<jsp:forward page="login_success.jsp"/>
	<%
	}
	else
	{
	//非法用户
	%>
	<jsp:forward page="login_failure.jsp"/>
	<%
	}%>
	%>
	</center>
</body>
</html>