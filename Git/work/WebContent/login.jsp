<%@ page language="java" import="test.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录界面</title>
</head>
<body>
<form action="" method="post"> 
用户名:<input type="text" name="userName"/>
<br>
<br>
密码:<input type="password" name="passWord"/>
<br>
<br>
<input type="submit" value="登录"/>
<input type="button" value="注册" onClick="window.location.href='register.jsp'"/>
</form>
<%
  String mUserName=request.getParameter("userName");
  String mPassWord=request.getParameter("passWord");
  if(mUserName!=null&&mPassWord!=null){
	  User u=new User(mUserName,mPassWord);
	  if(UserBank.checkUser(u)){
		  out.print("登录成功！");
	  }
  }
  else{
		out.print("用户名不存在或密码错误!");
  }
%>

</body>
</html>