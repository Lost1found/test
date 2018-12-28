<%@ page language="java" import="lost_found.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.text.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>寻卡启事处理页</title>
</head>
<body>
<%
  request.setCharacterEncoding("UTF-8");
  String driverName="com.mysql.jdbc.Driver";
  String userName=request.getParameter("userName");
  String cardID=request.getParameter("cardID");
  String Ownerphone=request.getParameter("Ownerphone");
  String realName=request.getParameter("realName");
  String school=request.getParameter("school");
  
  java.util.Date date=new java.util.Date();
  String dateime=new Timestamp(date.getTime()).toString();
  try{
	  Class.forName(driverName);
  }catch(ClassNotFoundException e){
	  e.printStackTrace();
  }
  String url="jdbc:mysql://127.0.0.1/lost_and_found?user=root&password=6504a.&characterEncoding=utf-8&serverTimezone=UTC";
  try{
	  Connection con=DriverManager.getConnection(url);
	  Statement statement=con.createStatement();
	  List<Picker> picker=new ArrayList<Picker>();
	  String sql="select cardID from card_founding";//用来匹配失卡招领表的信息
	  ResultSet rs=statement.executeQuery(sql);
	  while(rs.next()){
		  Picker pickers=new Picker();
		  pickers.setCard(rs.getString(1));
		  picker.add(pickers);
	  }
	  if(cardID!=null){
		 Owner u1=new Owner(cardID);
		 for(Picker u:picker){
			 if(u.getCard().equals(u1.getCardID())){
				 out.print("失卡招领库中有你的失卡相关信息，不必发布信息，请直接联系！");
			 }else{
				 String sqls="insert into card_hunting(OwnerName,CardID,OwnerPhone,Name,School) values(?,?,?,?,?) ";
				 PreparedStatement pstmt=con.prepareStatement(sqls);
				 pstmt.setString(1, userName);
				 pstmt.setString(2, cardID);
				 pstmt.setString(3, Ownerphone);
				 pstmt.setString(4, realName);
				 pstmt.setString(5, school);
				 pstmt.executeUpdate();
				 rs.close();
				 pstmt.close();
				 con.close();
				 out.print("提交成功");
			 }
		 }
	  }
  }catch(Exception e){
	  e.printStackTrace();
  }
%>
</body>
</html>