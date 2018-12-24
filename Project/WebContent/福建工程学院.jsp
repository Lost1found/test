<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,lost_found.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>福建师范大学</title>
<link href="css/style.css" rel="stylesheet"/>
</head>
<body>
<%
     Connection con=null;
     Statement statement=null;
     ResultSet rs=null;
     List<Student> students=new ArrayList<Student>();
     try{
     	con=DBConnection.getConnection();
     	statement=con.createStatement();
     	String sql="select * from students";
     	rs=statement.executeQuery(sql);
     	while(rs.next()){
     		Student stu=new Student();
     		stu.setNumber(rs.getString(1));
     		stu.setName(rs.getString(2));
     		stu.setSex(rs.getString(3));
     		stu.setAge(rs.getInt(4));
     		stu.setDate(rs.getString(5));
     		stu.setTelephone(rs.getString(6));
     		stu.setClass_(rs.getString(7));
     		stu.setMajor(rs.getString(8));
     		stu.setDepartment(rs.getString(9));
     		students.add(stu);
     	}
     	session.setAttribute("stu_list", students);
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
	<td><a href="寻卡启示.jsp">寻卡启事</a></td>
	<td><a href="关于我们.jsp">关于我们</a></td>
	<td><a href="留言板.jsp">留言板</a></td>
  </tr>
 </table>
</div>
<div style="
    width:1000px;
	height:300px;
	background: url(/images/福建师范大学.png) no-repeat center ;
	margin:0px auto;
	margin-top:50px;">
   <div id="leftC">
   <img src="images/fjnu.jpg" width="200px" height="200px">
   </div>
   <div id="middleC">
   <h1>福建师范大学----旗山校区</h1>
   </div>
</div>
<br/>
<br/>
<div id="content">
    <table>
     <tr>
     <th>失卡招领</th>
     <th>寻卡启示</th>
     </tr>
     <%
      for(Student s:students){
    	  out.print("ID:"+s.getNumber()+"NAME:"+s.getName());
      }
     %>
     <tr>
     </tr>
    </table>
</div>

</body>
</html>