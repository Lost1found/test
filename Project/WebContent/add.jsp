<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,lost_found.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HUNTING_CHECK</title>
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
     	String number=(String)session.getAttribute("addNum");
     	String sql="update from card_hunding set check='0' where CardID='"+number+"'";
     	statement.executeUpdate(sql);
     }catch(SQLException e){
      	e.printStackTrace();
     }finally{
      	DBConnection.free(con, statement, rs);
     }
     %>
</body>
</html>