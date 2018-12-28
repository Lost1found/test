<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar,java.sql.*,lost_found.*" %>
    <% 
       Calendar c=Calendar.getInstance();  //对每一个时间域单独修改
       Date date=new Date();
       SimpleDateFormat df=new SimpleDateFormat("yyyy年MM月dd日 hh:mm:ss");
       String now=df.format(date);
       String[] weekday={"星期","星期日","星期一","星期二","星期三","星期四","星期五","星期六"};
       String time=now+weekday[c.get(Calendar.DAY_OF_WEEK)];
       String name=(String)session.getAttribute("userName");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>失卡招领</title>
<link href="css/style.css" rel="stylesheet"/>
</head>
<body style="background: url(images/timg(5).jpg)">
<!-- 首页图片 -->
<div style="margin:0px auto; background-color:#69b076; width:100%; height:150px;">
  <div style="float:left;"><h1 style="margin-left:230px;color:#ffffff;font-size:60px;">失卡招领平台</h1></div>
  <div style="text-align:center;float:left; margin-left:100px;">
	<img width="273px" height="140px" alt="" src="images/12.png">
	<img width="200px" height="140px" alt="" src="images/11.png">
  </div>
  <div style="margin-right:200px; margin-left: text-align:right;">
	&emsp;<%=session.getAttribute("userName") %>
	&emsp;&emsp;&emsp;&emsp;
	<br/>时间：<%=time%>
  </div>
</div>
<!-- 导航 -->
	<div id="bar" text-align="center" width="100%">
	 <table class="table1">
	  <tr>
		<td><a href="main.jsp">首页</a></td>
		<td><a href="失卡招领.jsp">失卡招领</a></td>
		<td><a href="寻卡启事.jsp">寻卡启事</a></td>
		<td><a href="关于我们.jsp">关于我们</a></td>
		<td><a href="留言板.jsp">留言板</a></td>
	  </tr>
	 </table>
	</div>
	<div style="width:100%; background: url(images/timg(5).jpg)">
	</div>
</body>
</html>