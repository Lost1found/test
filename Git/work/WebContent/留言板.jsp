<%@ page language="java" import="test.*" 
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page  import="java.util.Date"%>
<% Date date=new Date();%>
当前时间为<%= date.toLocaleString()%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>留言板</title>
</head>
<body>
<style type="text/css">
body{
background-image: url(image/5.jpg);
background-attachment: fixed;
background-repeat: no-repeat;
background-size: cover;
}
</style>

<body>
<center>
<br><br><br><br><br><br><br><br><br><br><br><br><br>
<%

out.print("请输入留言内容：");
out.print("<br>");
out.print("<br>");
%>
<form action="" method="post"> 
留言:<input type="text" name="留言内容"/>
<br>
<br>
<input type="button"  value="提交" onClick="window.location.href='提交成功.jsp'"/>
</form>
 </center>

</form>
</body>
</html>