<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
.register{border:3px solid #5aadad;width:500px;margin-top:5px;height:300px;}
</style>
<title>用户注册</title>
</head>
<body style="background: url(image/two.jpg)">
<center>
<br><br><br><br><br>
<form name="form1" action="Checkregister.jsp" onSubmit="return check(this);" method="post" >
		<div class="register">
		<table>
			<tr>
				<h1 style="color: #800040">用户注册</h1>
			</tr>
			<tr>
				<td align="right">
					用户名：
				</td>
				<td align="left">
					<input type="text" id="username" name="username" />
				</td>
			</tr>
			<tr>
				<td align="right">
					密 码：	
				</td>
				<td align="left">
					<input type="password" id="password" name="password" size=21 />
				</td>
			</tr>
			<tr>
				<td align="right">
					确认密码：
				</td>
				<td align="left">
					<input type="repassword" id="repassword" name="repassword" />
				</td>
			</tr>
			<tr>
				<td align="right">
					真实姓名：
				</td>
				<td align="left">
					<input type="text" id="realname" name="realname" />
				</td>
			</tr>
			<tr>
				<td align="right">
					邮箱：
				</td>
				<td align="left">
					<input type="text" id="email" name="email" />
				</td>
			</tr>
			<tr>
				<td align="center">
					<input type="submit" value="提交" />
				</td>
			</tr>
		</table>
		</div>
</form>
<script type="text/javascript">
function check(form1)//表单输入验证函数
{
	var username=document.getElementById("username").value;
	var password=document.getElementById("password").value;
	var realname=document.getElementById("realname").value;
	var repassword=document.getElementById("repassword").value;
	var email=document.getElementById("email").value;
	if(form1.username.value==""||form1.password.value==""||form1.repassword.value==""||form1.email.value==""||form1.realname=="")
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