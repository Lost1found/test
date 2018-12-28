<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,lost_found.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>福建农林大学</title>
<link href="css/style.css" rel="stylesheet"/>
</head>
<body style="background-color:#f2e3eb;">
  <jsp:include page="header.jsp">
  <jsp:param value="" name=""/>
  </jsp:include>
  <div style="width:1000px;
	height:253px;
	margin:0px auto;
	text-align:center;">
    <img src="images/福建农林大学.jpg" width='1000' height='253'>  
</div>
  <div style="margin:0px auto;
	width:1000px;
	height:450px; 
	color:#000000;
	text-align:center;">
    <table align='left' cellspacing='0' cellpadding='4' width='1000' border='1' bgcolor='#efefef'>
     <tr>
        <div style="float:left; width:500px; font-size:40px;"><a href="fjnldx_1.jsp">失卡招领信息</a></div>
        <div style="float:left; width:500px; font-size:40px;"><a href="fjnldx_2.jsp">寻卡启示信息</a></div>		
     </tr>     
    </table>
</div>
<div id="footer">
 <p>2016级计本二班（汪辰、王香、颜文君、张宇琛）</p>
</div>
</body>
</html>