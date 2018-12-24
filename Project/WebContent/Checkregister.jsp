<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>验证并提交数据</title></head>
<% 
	response.setContentType("text/html");
	//PrintWriter out = response.getWriter();
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	String password = (String)request.getParameter("password");      //得到密码
	String repassword = (String)request.getParameter("repassword");  //得到确认密码
		if(password.equals(repassword)){
	String name = (String)request.getParameter("username");          //得到注册页传来的用户名
	String email = (String)request.getParameter("email");                //得到注册页传来的邮箱
	String realname = (String)request.getParameter("realname");              //得到注册页传来的真是姓名
    Connection conn = null;                              //建立数据库连接对象
    PreparedStatement stmt = null;                       //建立数据库操作对象
    try{                                                 //使用try-catch捕捉异常
    	Class.forName("com.mysql.jdbc.Driver");        //加载JDBC-ODBC桥驱动程序
    	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Lost_and_found?user=root&password=123456&characterEncoding=utf-8&serverTimezone=GMT"); //连接ODBC数据源
    	stmt = conn.prepareStatement("insert into user(Username,Email,Password,name) values(?,?,?,?)");
    	stmt.setString(1,name);
    	stmt.setString(2,email);
    	stmt.setString(3,password);
    	stmt.setString(4,realname);
    	stmt.execute();
    }catch(Exception e){
    	e.printStackTrace();
    }
    response.sendRedirect("success.jsp");  }             //注册成功跳转到success.jsp页面
    else{       
    		response.sendRedirect("error.jsp");
	}
%>
<body></body></html>