<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.reset{border:3px solid #5aadad;width:500px;margin-top:5px;height:300px;}
</style>
<title>用户找回密码</title>
</head>
<body style="background: url(images/two.jpg)">
<center>
	<br><br><br><br><br><br>
	<div class="reset">
	<form name="form1" action="Checkreset.jsp"method="post" onSubmit="return checkinfo()">
	<table>
		<tr>
			<h1 style="color: #800040">找回密码</h1>
		</tr>
		<tr>
			<td>用户名:</td>
			<td><input type="text"id="username"name="username"size=20></td>
		</tr><tr></tr>
		<tr>
			<td>邮&nbsp;&nbsp;箱:</td>
			<td><input type="text"id="email"name="email"size=20></td></br>
		</tr>
		<tr>
			<td>新密码:</td>
			<td><input type="password"id="password"name="password"size=21></td>
		</tr>	
		<tr>
			<td>确认新密码:</td>
			<td><input type="password"id="repassword"name="repassword"size=20></td>
		</tr>		
		<tr>
			<td colspan="2">
			<br/>
			<input type="submit"value="确定"onClick="check_info()">
			&nbsp;&nbsp;&nbsp;
			<input type="reset"value="重置">&nbsp;&nbsp;&nbsp;
			<input type="button" value="返回上一步" onClick="window.location.href='login.jsp'"/>
			</td>
		</tr>
	</table>
	</form>
	</div>
<script type="text/javascript">
function check(form1)//表单输入验证函数
{
	var username=document.getElementById("username").value;
	var password=document.getElementById("password").value;
	var repassword=document.getElementById("repassword").value;
	var email=document.getElementById("email").value;
	if(form1.username.value==""||form1.password.value==""||form1.repassword.value==""||form1.email.value=="")
	{
		alert("不允许出现空项！");
		return false;
	}
	if(username.length!=12)
	{
		alert("用户名必须为12位！");
		return false;
	}
	if(password.length<9||password.length>16)
	{
		alert("密码长度必须为9-16位！");
		return false;
	}
	if(password!=repassword)
	{
		alert("用户密码和确认密码必须一致！");
		return false;
	}
	if(email.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) == -1)
	{
		alert("邮箱格式错误，请填写正确的邮箱格式！");
		return false;
	}
}
</script>
</center>
</body>
</html>