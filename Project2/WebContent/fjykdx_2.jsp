<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,lost_found.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>福建医科大学</title>
</head>
<body style="background-color:#f2e3eb;">
  <jsp:include page="header.jsp">
  <jsp:param value="" name=""/>
  </jsp:include>
  <%
     Connection con=null;
     Statement statement=null;
     ResultSet rs=null;
     List<Owner> owners=new ArrayList<Owner>();
     List<Picker> pickers=new ArrayList<Picker>();
     try{
     	con=DBConnection.getConnection();
     	statement=con.createStatement();
     	String lost="select * from card_hunting where School='福建医科大学'";
     	rs=statement.executeQuery(lost);
     	while(rs.next()){
     		Owner owner=new Owner();
     		owner.setCardID(rs.getString(2));
     		owner.setOwnerName(rs.getString(1));
     		owner.setOwnerRealName(rs.getString(4));
     		owner.setOwnerPhone(rs.getString(3));
     		owner.setOwnerSchool(rs.getString(5));
     		owners.add(owner);
     	}     	
     }catch(SQLException e){
     	e.printStackTrace();
     }finally{
     	DBConnection.free(con, statement, rs);
     }
     %>
  <div style="width:1000px;
	height:296px;
	margin:0px auto;
	text-align:center;">   
    <img src="images/福建医科大学.jpg" width='1000' height='296'>  
  </div>
  <div style="margin:0px auto;
	width:1000px;
	height:450px; 
	color:#000000;
	text-align:center;">
    <table align='left' cellspacing='0' cellpadding='4' width='1000' border='1' bgcolor='#efefef'>
     <tr>
        <div style="float:left; width:500px; font-size:40px;"><a href="fjykdx_1.jsp">失卡招领信息</a></div>
        <div style="float:left; width:500px; font-size:40px;"><a href="fjykdx_2.jsp">寻卡启示信息</a></div>			
     </tr>
     <tr height="40px">
     <td>卡号</td>
     <td>丢卡者姓名</td>
     <td>丢卡者学校</td>
     <td>丢卡者电话</td>
     </tr>         
     <%
        int i=1;
        String buttonName=request.getParameter("lost");
        for(Owner o:owners){
        	%>
        	<tr height="35px">
        	<td><%=o.getCardID() %></td>
        	<td><%=o.getOwnerName() %></td>
       		<td><%=o.getOwnerSchool() %></td>
     		<td><%=o.getOwnerPhone() %></td>
     		</tr>
        	<%
        } 
     %>
    </table>
</div>
<div id="footer">
 <p>2016级计本二班（汪辰、王香、颜文君、张宇琛）</p>
</div>
</body>
</html>