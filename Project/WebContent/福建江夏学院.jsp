<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,lost_found.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>福建江夏学院</title>
<link href="css/style.css" rel="stylesheet"/>
</head>
<body>
<%
     Connection con=null;
     Statement statement=null;
     ResultSet rs=null;
     List<Owner> owners=new ArrayList<Owner>();
     List<Picker> pickers=new ArrayList<Picker>();
     try{
     	con=DBConnection.getConnection();
     	statement=con.createStatement();
     	String lost="select * from card_hunting where School='福建江夏学院'";
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
     	String found="select * from card_founding where ownerSchool='福建江夏学院'";
     	rs.close();
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
<!-- 首页图片 -->
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
<div style="width:1000px;
	height:295px;
	margin:0px auto;
	text-align:center;">   
    <img src="images/福建江夏学院.jpg" width='1000' height='295'>  
</div>
<div style="margin:0px auto;
	width:1000px;
	height:450px; 
	color:#000000;
	text-align:center;">
    <table align='center' cellspacing='0' cellpadding='4' width='1000' border='1' bgcolor='#efefef'>
     <tr>
     <th bgcolor='#fae6b8'>失卡招领</th>
     <th bgcolor='#fae6b8'>寻卡启事</th>
     </tr>
     <tr>
     <td color='#000000' width='500' height='430'>
     <%
        for(Owner w:owners){
            out.print("卡号："+w.getCardID()+"姓名："+w.getOwnerRealName()
            +"学校："+w.getOwnerSchool()+"联系电话"+w.getOwnerPhone());
        }
     
     %>
     </td>
     <td color='#000000' width='500' height='430'>
     <%
        for(Owner w:owners){
            out.print("卡号："+w.getCardID()+"姓名："+w.getOwnerRealName()
            +"学校："+w.getOwnerSchool()+"联系电话"+w.getOwnerPhone());
        }    
     %>
     </td>
     </tr>
    </table>
</div>
<div id="footer">
 <p>2016级计本二班（汪辰、王香、颜文君、张宇琛）</p>
</div>
</body>
</html>