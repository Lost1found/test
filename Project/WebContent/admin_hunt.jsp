<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,lost_found.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>失卡招领管理平台</title>
<link href="css/style.css" rel="stylesheet"/>
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
     	String lost="select * from card_hunting where check='1'";
     	rs=statement.executeQuery(lost);
     	while(rs.next()){
     		Owner owner=new Owner();
     		owner.setCardID(rs.getString(2));
     		owner.setOwnerName(rs.getString(1));
     		owner.setOwnerRealName(rs.getString(4));
     		owner.setOwnerPhone(rs.getString(3));
     		owner.setOwnerSchool(rs.getString(5));
     		owner.setCheck(rs.getString(6));
     		owners.add(owner);
     	}
     	}catch(SQLException e){
         	e.printStackTrace();
        }finally{
         	DBConnection.free(con, statement, rs);
        }
        %>
<div style="margin:0px auto;
	width:1000px;
	height:450px; 
	color:#000000;
	text-align:center;">
<table align='center' cellspacing='0' cellpadding='4' width='1000' border='1'>
  <tr text-align='center'>
   <h2>待审核信息</h2>
  </tr>
  <tr height="50px">
     <td>卡号</td>
     <td>姓名</td>
     <td>学校</td>
     <td>电话</td>
     <td>检查</td>
     <td>添加</td>
     <td>删除</td>
  </tr>       
     <%
        int i=1;
        String buttonName=request.getParameter("lost");
        for(Owner o:owners){
        	%>
        	<tr height="40px">
        	<td><%=o.getCardID() %></td>
        	<td><%=o.getOwnerName() %></td>
       		<td><%=o.getOwnerSchool() %></td>
     		<td><%=o.getOwnerPhone()%></td>
     		<td><%=o.getCheck() %>
     		<td>
     		<%
     		   session.setAttribute("addNum", o.getCardID());
     		%>
     		<form action="add.jsp" method="post"><input type="button" name="add" value="添加"></form>
     		</td>
     		<td>
     		<%
     		  session.setAttribute("deleteNum", o.getCardID());
     		%>
     		<form action="delete.jsp" method="post"><input type="button" name="delete" value="删除"></form>     		
     		</td>
     		</tr>
        	<%
        } 
     %>
</table>
<%
  String addmes=request.getParameter("add");
  String delmes=request.getParameter("delete");
%>
</div>  
</body>
</html>