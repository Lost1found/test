<%@  page  language="java"  contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>留言板</title>
<link href="css/style.css" rel="stylesheet"/>
</head>
<body>

<div id="top">
<h1>失卡招领</h1>
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
<div width="1000" height="500" align="center" bgcolor="#efefef" font-size="30">
  <table text-align="left" cellspacing='0' cellpadding='4' border='1' width=800px height=500px bgcolor='#eaf4f9'>
    
    时间：<%=time%>&emsp;&emsp;
       用户名：<%=name %>
    <tr>
      <th>
      <p>在这里留下你的脚印吧</p>
      <form action="" method="post">
      <input style="width:300px;height:200px" type="text" name="stayword">
      <br/>
      <br/>
      <input type="submit" value="提交"/>
      <input type="reset" value="重置"/>
      <input type="button" value="已找回，请点我"/>
      </form>
       </th>    
    </tr>
  </table>
  <%  
    String message=request.getParameter("stayword");
    Connection con=null;
    PreparedStatement pstate=null;
    try{
	    con=DBConnection.getConnection();
    	String sql="insert into message_board(userName,time,message) values(?,?,?)";
	    pstate=con.prepareStatement(sql);
	    pstate.setString(1, name);
	    pstate.setString(2, time);
	    pstate.setString(3, message);
	    pstate.executeUpdate();
    }catch(SQLException e){
     	e.printStackTrace();
    }finally{
    	DBConnection.free(con, null, null);
    }
     %>
</div>
<div id="footer">
 <p>2016级计本二班（汪辰、王香、颜文君、张宇琛）</p>
</div>
</body>









