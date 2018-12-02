<%@ page language="java" import="test.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册界面</title>
</head>
<body>

<form action="" method="post">
用户名：<input type="text" name="userName"/>（可输入字符数组下划线）
<br>
<br>
真实姓名：<input type="text" name="userRealName"/>
<br>
<br>
密码输入：<input type="passWord" name="passWord"/>（长度不可超过15个字符）
<br>
<br>
重复密码：<input type="password" name="passWord"/>
<br>
<br>
<input type="submit" value="提交"/>
<input type="reset" value="重置"/>
</form>
<%
  String mUserName=request.getParameter("userName");
  String mUserRealName=request.getParameter("userRealName");
  String mPassWord=request.getParameter("passWord");
  if(mUserName!=null&&mUserRealName!=null&&mPassWord!=null){
	  User u=new User(mUserName,mUserRealName,mPassWord);
	  if(UserBank.checkUser2(u))
		  out.print("此用户已存在,请重新输入!");
	  else{
		 UserBank.addUser(u);
		 out.print("注册成功！");  
	  }
  }
  
%>
</body>
</html>