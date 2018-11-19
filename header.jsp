<%@  page  pageEncoding="UTF-8"%>
<%@  page  import="java.util.Date" %>
<link href="css/style.css" type="text/css" rel="stylesheet"/>
<%  Date  date=new  Date(); %>
<div id="header">
<div id="size">电子商务平台</div>  <h3> 今天是 <%= date.toLocaleString()  %> 星期<%= date.getDay()  %>  用户名： <%= request.getParameter("userName") %></h3> 
</div>
<hr>