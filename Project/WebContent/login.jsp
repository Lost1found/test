<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="lost_found.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
.login{border:5px solid #0080c0;width:500px;margin-top:5px;height:325px;}
</style>
<title>失卡招领系统登录</title>
<script type="text/javascript">
    function reloadCode(){
        var time = new Date();
        // 给URL传递参数可以清空浏览器的缓存，让浏览器认为这是一个新的请求
        document.getElementById('safecode').src = '<%=request.getContextPath()%>/ImageServlet?d=' + time;
    }
</script>  																																																																				</script>
</head>
<body style="background: url(images/two.jpg)">
<% 
	String rememberedUserName="";
	String rememberedPassWord="";
	Cookie[] cookies=request.getCookies();
	if(cookies!=null){
	for(int i=0;i<cookies.length;i++){
		Cookie c= cookies[i];
		if(c.getName().equals("username"))
			rememberedUserName=c.getValue();
		if(c.getName().equals("password"))
			rememberedPassWord=c.getValue();
		}
	}
%>
<center>
	<br><br><br><br>
	<div class="login">
		<br><br><h1 style="color: #0080c0">欢迎登录失卡招领系统</h1>
		<form action="ValidateImageServlet"method="post">
			用户名：<input type="text" placeholder="用户名" name="username" required="" size=20/> <br/><br/>
			密&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" placeholder="密码" name="password" required=""size=21/><br/><br/>
			验证码：<img src=<%=request.getContextPath()%>/ImageServlet" alt="验证码" id="safecode">
            <input type="text" id="verifyCode" name="verifyCode" size="6" />
            <a href="javascript:reloadCode();">看不清楚</a><br>
            <input type="radio" name="type" value="student">学生
			<input type="radio" name="type" value="admin">管理员 <br/><br/>
			<input  type="button"  value="注册" onclick="location.href='register.jsp'" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input  type="submit"  value="登录" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input  type="reset"  value="找回密码" onclick="location.href='reset.jsp'"/><br/><br/>
		</form>
		<%
  			String name=request.getParameter("username");
  			session.setAttribute("userName", name);
		%>
	</div>
</center>
</body>
</html>