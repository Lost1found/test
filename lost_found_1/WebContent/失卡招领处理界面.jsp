<%@ page language="java"  import="lost_found.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.sql.*,java.text.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>失卡招领处理页</title>
</head>
<body>
<%
  request.setCharacterEncoding("UTF-8");
  String driverName="com.mysql.jdbc.Driver";
  String userNames=request.getParameter("userName");//拾主用户名
  String pickerPhone=request.getParameter("pickerPhone");//拾主手机号
  String pickerName=request.getParameter("pickerName");//拾主真实姓名
  String location=request.getParameter("location");//捡拾地点
  String time=request.getParameter("time");//捡拾时间
  String cardId=request.getParameter("cardID");//卡号
  String ownerName=request.getParameter("ownerName");//失主姓名
  String ownerSchool=request.getParameter("ownerSchool");//失主学校
  
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
	  List<Owner> owner=new ArrayList<Owner>();//用来匹配寻卡启事表中的信息
	  String sql="select CardID from card_hunting";
	  ResultSet rs=statement.executeQuery(sql);
	  while(rs.next()){
		  Owner owners=new Owner();
		  owners.setCardID(rs.getString(1));
		  owner.add(owners);
	  }
	  if(cardId!=null){
		  Picker u2=new Picker(cardId);
		  for(Owner u:owner){
			  if(u.getCardID().equals(u2.getCard())){
				  out.print("寻卡启事库中有人丢失了这张卡，不必发布信息，请直接联系！");
			  }else{
				  String sqls="insert into card_founding(pickerUser,pickerPhone,pickerName,pickLocation,pickTime,cardID,ownerName,ownerSchool) values(?,?,?,?,?,?,?,?)";
				  PreparedStatement pstmt=con.prepareStatement(sqls);
				  pstmt.setString(1, userNames);//添加数据库操作
				  pstmt.setString(2, pickerPhone);
				  pstmt.setString(3, pickerName);
				  pstmt.setString(4, location);
				  pstmt.setString(5, time);
				  pstmt.setString(6, cardId);
				  pstmt.setString(7, ownerName);
				  pstmt.setString(8, ownerSchool);
				  pstmt.executeUpdate();
				  rs.close();
				  pstmt.close();
				  con.close();
				  out.print("提交成功！");
			  }
		  }
	  }
  }catch(Exception e){
	  e.printStackTrace();
  }
%>
</body>
</html>