<%@  page  language="java"  contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>关于我们</title>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<!-- 首页图片 -->
<div id="top">
<h1>失卡招领</h1>
</div>
<!-- 导航 -->
<div id="bar">
 <table>
  <tr>
	<td><a href="login.jsp">首页</a></td>
	<td>失物招领</td>
	<td>寻物启事</td>
	<td>关于我们</td>
	<td>留言板</td>
  </tr>
 </table>
</div>

<style type="text/css">
body{
background-image: url(image/5.jpg);
background-attachment: fixed;
background-repeat: no-repeat;
background-size: cover;
}
</style>


<%
out.print("简介：");
out.print("<br>");
out.print("<br>");
out.print("失卡招领是一个针对各在校大学生遇到丢失学生卡现象而设计开发的系统。"); 
out.print("物归原主 弘扬助人为乐精神");		
out.print("每一张的丢失学生卡的背后，都有一个着急寻找的身影．．．");	    
out.print("拒绝冷漠 传递温暖 让爱在你我蔓延。");
out.print("<br>");
out.print("<br>");
out.print("使用指南：");
out.print("<br>");
out.print("<br>");
out.print("一：捡到卡时，请交于校内任意校园卡站点，由管理员统一处理发布招领信息。");
out.print("二：丢失卡时，请登录失物招领系统，进入首页进入招领页面，然后选择自己所在学校选择所在学院查询。");
out.print("<br>");
out.print("<br>");
out.print("发起人简介：");
out.print("<br>");
out.print("<br>");
out.print("王香：任务协同"); 
out.print("汪辰：编程，解决问题");		
out.print("颜文君：源代码管理工具");	    
out.print("张宇琛：选题，交互");
out.print("<br>");
out.print("<br>");
out.print("联系我们：");
out.print("<br>");
out.print("<br>");
out.print("有疑问请致电18359186068，祝各位生活愉快.");


%>
</body>
</html>