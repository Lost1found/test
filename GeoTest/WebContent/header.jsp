<%@  page  pageEncoding="UTF-8"%>
<%@  page  import="java.util.Date" %>
<%  Date  date=new  Date(); %>
地理知识,共<%= request.getParameter("count") %>题  
 当前时间为<%= date.toLocaleString() %>
 <!--用户名： <%= request.getParameter("userName") %>  -->
用户名：<%= session.getAttribute("userName") %>
<hr>