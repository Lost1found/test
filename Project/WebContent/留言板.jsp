<%@  page  language="java"  contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar,java.sql.*,lost_found.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>留言板</title>
<link href="css/style.css" rel="stylesheet"/>
</head>
<body style="background-color:#f2e3eb;">
  <jsp:include page="header.jsp">
  <jsp:param value="" name=""/>
  </jsp:include>
<div width="1000" height="500" align="center" bgcolor="#efefef" font-size="30">
  <table text-align="left" cellspacing='0' cellpadding='4' border='1' width=800px height=500px bgcolor='#eaf4f9'>
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









