<%@ page language="java" 
	import="java.io.PrintWriter" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
<style>
.login{border:3px solid #5aadad;width:500px;margin-top:5px;height:300px;}
</style>
<<meta charset="UTF-8">
<title>失卡招领系统登录界面</title>
<script type="text/javascript">
function reImg() {
	//刷新二维码
    var img = document.getElementById("Img");
    img.src = "image.jsp?code=" + Math.random();
}
</script>
</head>
<body style="background: url(image/two.jpg)">
<center>
	<br><br><br><br><br>
	<div class="login">
		<h1 style="color: #800040">欢迎登录失卡招领系统</h1>
		<form action="Checklogin.jsp"method="post">
			用户名：<input type="text" placeholder="用户名" name="username" required="" size=20/> <br/><br/>
			密&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" placeholder="密码" name="password" required=""size=21/><br/><br/>
			验证码： <input type="text" name="yanzhengma" placeholder="验证码" size=5/>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<img border=0 id="Img" src="image.jsp" onclick="reImg()"> <br/><br/>
			<input type=radio name=type value=student>学生
			<input type=radio name=type value=admin>管理员 <br/><br/>
			<input  type="button"  value="注册" onclick="location.href='register.jsp'" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input  type="submit"  value="登录" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input  type="reset"  value="找回密码" onclick="location.href='reset.jsp'"/><br/><br/>
		</form>
	</div>
</center>
</body>
</html>