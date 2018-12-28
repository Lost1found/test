<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册失败</title><meta http-equiv="refresh" content="10; url=register.jsp">
</head><body style="background: url(images/two.jpg)">
<%=session.getAttribute("errorlogin") %><br>
	<font size="4" color="red">由于信息填写不规范,注册失败!</font><br>
	<font size="5">10秒后跳转到注册页面</font></body></html>