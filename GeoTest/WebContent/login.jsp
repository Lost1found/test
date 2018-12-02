<%@ page language="java" import="com.geotest.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
</head>
<body>
<%
String rememberdUserName="";
String rememberdPassWord="";
%>
<form action="" method="post">
用户：<input type="text" name="userName" value="<%=rememberdUserName%>" />
<br/><br/>
密码：<input type="password" name="passWord" value="<%=rememberdPassWord%>"/><br/><br/>
<input type="checkbox" name="remember" value="member"
<%
 if(!rememberdUserName.equals("")&&!rememberdPassWord.equals(""))
	 out.print("checked");
 %>
/>记住密码<br/>
<input type="submit" value="登录" />
</form>
<%
String merm=request.getParameter("remember");
int expiry=0;
if(merm!=null){
	expiry=60*60*24*7;
}
String mUserName=request.getParameter("userName");
String mPassWord=request.getParameter("passWord");
Cookie c1=new Cookie("userName",mUserName);
c1.setMaxAge(expiry);
response.addCookie(c1);
Cookie c2=new Cookie("passWord",mPassWord);
c2.setMaxAge(expiry);
response.addCookie(c2);

Cookie[] cookies=request.getCookies();
if(cookies!=null){
	  for(int i=0;i<cookies.length;i++){
		  Cookie c=cookies[i];
		  if(("userName").equals(c.getName()))
			  rememberdUserName=c.getValue();
		  if(("passWord").equals(c.getName()))
			  rememberdPassWord=c.getValue();
	  }
}

if(mUserName!=null&&mPassWord!=null){
	User u=new User(mUserName,mPassWord);
	if(UserBank.check(u)){
		session.setAttribute("userName",mUserName);
		response.sendRedirect("index.jsp");
    }	
	else{out.print("用户名或密码不对！");}
}
%>
</body>
</html>