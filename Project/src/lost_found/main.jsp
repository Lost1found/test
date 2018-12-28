<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>失卡招领</title>
<link href="css/style.css" rel="stylesheet"/>
</head>
<body>

<!-- 首页图片 -->
<div id="top">
<h1>失卡招领</h1>
<div>
<h5 style="width:1000px;text-align:right;" onClick="window.location.href='login.jsp'"><%=session.getAttribute("userName") %>用户&emsp;&emsp;退出登录</h5>
</div>
</div>

<!-- 导航 -->
<div id="bar">
 <table class="table1">
  <tr>
	<td><a href="主界面.jsp">首页</a></td>
	<td><a href="失卡招领.jsp">失卡招领</a></td>
	<td><a href="寻卡启事.jsp">寻卡启事</a></td>
	<td><a href="关于我们.jsp">关于我们</a></td>
	<td><a href="留言板.jsp">留言板</a></td>
  </tr>
 </table>
</div>

<!-- 中间部分 -->
<div id="middle">
<img alt="" src="images/12.png">
<img alt="" src="images/11.png">
</div>
<!-- 内容 -->
<div style="margin:0px auto;
	width:1000px;
	height:500px; 
	color:#000000;
	text-align:center;">
	<div id="leftC">
		 <a href="福建师范大学.jsp"><img src="images/fjnu.jpg" width="200" height="200"/></a>
		 <p>福建师范大学</p>
	</div>
	<div id="leftC">
		 <a href="福州大学.jsp"><img src="images/fzdx.jpg" width="200" height="200"/></a>
		 <p>福州大学</p>
	</div>
	<div id="leftC">
		 <a href="福建工程学院.jsp"><img src="images/fjgcxy.jpg" width="200" height="200"/></a>
		 <p>福建工程学院</p>
	</div>
	<div id="leftC">
		 <a href="福建农林大学.jsp"><img src="images/fjnldx.jpg" width="200" height="200"/></a>
		 <p>福建农林大学</p>
	</div>
	<div id="leftC">
		 <a href="福建闽江学院.jsp"><img src="images/fjmjxy.jpg" width="200" height="200"/></a>
		 <p>福建闽江学院</p>
	</div>
	<div id="leftC">
		 <a href="福建医科大学.jsp"><img src="images/fjykdx.jpg" width="200" height="200"/></a>
		 <p>福建医科大学</p>
	</div>
	<div id="leftC">
		 <a href="福建中医药大学.jsp"><img src="images/fjzyydx.jpg" width="200" height="200"/></a>
		 <p>福建中医药大学</p>
	</div>
	<div id="leftC">
		 <a href="福建江夏学院.jsp"><img src="images/fjjxxy.jpg" width="200" height="200"/></a>
		 <p>福建江夏学院</p>
    </div>
</div>
<!-- 底部 -->

<div id="footer">
 <p>2016级计本二班（汪辰、王香、颜文君、张宇琛）</p>
</div>
</body>