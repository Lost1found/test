<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="lost_found.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"> 
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
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	String type=request.getParameter("type");
	String picString = (String) request.getSession().getAttribute("piccode");
	String checkCode = request.getParameter("verifyCode");
	String mrem=request.getParameter("remember");
	//定义变量，如果用户合法，则将此标记变为true
	boolean flag=false;
	//定义数据库操作的常量以及对象
	String driverName="com.mysql.cj.jdbc.Driver";//数据库驱动程序
	//数据库链接地址
	String url="jdbc:mysql://localhost:3306/java?user=root&password=6504a.&characterEncoding=UTF-8&serverTimezone=GMT";
	//声明一个数据库连接对象
	Connection conn=null;
	//声明数据库操作对象
	PreparedStatement pstmt=null;
	//声明结果集对象
	ResultSet rs=null;
	//声明sql变量用于保存sql语句
	String sql;
	String sql1;
	String sql2;
	//首先进行验证码验证
	if("".equals(picString)||picString==null){
		out.print("<script>alert('请输入验证码');window.location.href('login.jsp')</script>"); 
	}else{
		if(!(picString.toUpperCase().equals(checkCode.toUpperCase()))){  
            out.print("<script>alert('验证码不正确,请重新输入');history.back(-1);</script>");  
        }else{  
            //验证码验证成功 开始验证用户身份
            //进行数据库操作
            try{
			//编写sql语句
			sql1="SELECT username FROM user WHERE username=? AND password=?";
			sql2="SELECT username FROM admin WHERE username=? AND password=?";
			//加载驱动程序
			Class.forName(driverName);
			//连接数据库
			conn=DriverManager.getConnection(url);
			/*根据用户选择的身份类型
			实例化数据库操作对象
			*/
			if("student".equals(type)){
				sql=sql1;
			}else{sql=sql2;}
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
					int expiry=0;
					if(mrem!=null){
						expiry=60*60*24*7;
					}
				Cookie c1=new Cookie("usename",username);
				c1.setMaxAge(expiry);
				response.addCookie(c1);
				Cookie c2=new Cookie("password",password);
				c2.setMaxAge(expiry);
				response.addCookie(c2);
				//身份验证通过后，将用户信息写入session对象
				session.setAttribute("username",username);	
			}
			//依次关闭
			rs.close();
			pstmt.close();
			conn.close();
			}catch(Exception e){e.printStackTrace();}
            if(flag&&"student".equals(type))
			{
			//合法用户 学生
				response.sendRedirect("主界面.jsp");
			}else if(flag&&"admin".equals(type))
			{//合法管理员用户
				response.sendRedirect("管理员界面.jsp");
			}else{//非法用户
				out.print("<script>alert('身份验证失败，请重新填写登录！');window.location.href='login.jsp'</script>");}
			}   
	}
	%>
	</center>
</body>
</html>