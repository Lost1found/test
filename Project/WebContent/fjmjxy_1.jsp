<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,lost_found.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>福建闽江学院</title>
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
      	String found="select * from card_founding where ownerSchool='福建闽江学院'";
      	rs=statement.executeQuery(found);
     	while(rs.next()){
     		Picker picker=new Picker();
     		picker.setCard(rs.getString(6));
     		picker.setPickerName(rs.getString(3));
     		picker.setPickerPhone(rs.getString(2));
     		picker.setPickerRealName(rs.getString(3));
     		picker.setPickPlace(rs.getString(4));
     		picker.setPicktime(rs.getString(5));
     		picker.setOwnerName(rs.getString(7));
     		picker.setOwnerSchool(rs.getString(8));
     		pickers.add(picker);
     	}
     }catch(SQLException e){
     	e.printStackTrace();
     }finally{
     	DBConnection.free(con, statement, rs);
     }
     %>
    <div style="width:1000px;
	height:270px;
	margin:0px auto;
	text-align:center;">   
    <img src="images/福建闽江学院.jpg" width='1000' height='270'>  
  </div>
  <div style="margin:0px auto;
	width:1000px;
	height:450px; 
	color:#000000;
	text-align:center;">
    <table align='left' cellspacing='0' cellpadding='4' width='1000' border='1' bgcolor='#efefef'>
     <tr>
        <div style="float:left; width:500px; font-size:40px;"><a href="fjmjxy_1.jsp">失卡招领信息</a></div>
        <div style="float:left; width:500px; font-size:40px;"><a href="fjmjxy_2.jsp">寻卡启示信息</a></div>		
     </tr>
     <tr height="40px">
     <td>卡号</td>
     <td>姓名</td>
     <td>学校</td>
     <td>拾卡人</td>
     <td>拾卡地点</td>
     <td>拾卡时间</td>
     <td>拾卡者电话</td>
     </tr>              
     <%
        int i=1;
        String buttonName=request.getParameter("lost");
        for(Picker p:pickers){
        	%>
        	<tr height="35px">
        	<td><%=p.getCard() %></td>
        	<td><%=p.getOwnerName() %></td>
       		<td><%=p.getOwnerSchool() %></td>
     		<td><%=p.getPickerName() %></td>
     		<td><%=p.getPickPlace() %></td>
     		<td><%=p.getPicktime() %></td>
     		<td><%=p.getPickerPhone() %></td>
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