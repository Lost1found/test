<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import="java.util.Date" %>
<%@  page  import="com.test.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<br>
<title>商品信息浏览</title>
</head>
<span style="font-size:18px;">
<body> 
<%@ include file="header.jsp" %>
<div id="title"style="margin-top:0px;padding:0;height:50px;margin-bottom:-30px;text-align:center;background-color:#e0f0f5">
	<h2 style="color: #000000">商品浏览</h2>
</div>
<div id="body"style="margin-top:30px;padding:0;height:500px;margin-bottom:-30px;text-align:center;background-color:#e0f0f5">
   <table style="border:solid thin #d0E8ff;width=90%;margin:auto;align:center ;cellpadding:10 ;cellspacing:1; bgcolor:#ffffff">  
    <tr>
       <td bgcolor='#ffffd7'width="20%">&nbsp;商品名称</td>                                                                
       <td bgcolor='#ffffd7'width="40%">商品详情<br></td>
       <td bgcolor='#ffffd7'width="10%">单价<br></td>
       <td bgcolor='#ffffd7'width="30%">操作<br></td>
    </tr>
    <tr>
       <td bgcolor="#ffffff">&nbsp;可口可乐</td>                                                    
       <td bgcolor="#ffffff">汽水饮料<br></td>
       <td bgcolor="#ffffff">3.00<br></td>
       <td bgcolor="#ffffff">                                                                         
        <form method="post" action="ShoppingCart.jsp">
			数量<input type="text" name="num" value="1" size="10">                                       
              <input type="submit" name="button1" size=5 value="添加到购物车">
              <input type="hidden" name="name" value="可口可乐">
              <input type="hidden" name="cost" value="3.00">
              <input type="hidden" name="introduce" value="汽水饮料">
        </form>
       </td>
   </tr>
   <tr>
       <td bgcolor="#ffffff">丽芝士纳宝帝威化</td>
       <td bgcolor="#ffffff">休闲零食 奶酪味 威化饼干 460g/盒 <br></td>
       <td bgcolor="#ffffff">44.90<br></td>
       <td bgcolor="#ffffff">
        <form method="post"action="ShoppingCart.jsp">
			数量<input type="text" name="num" value="1" size="10">
              <input type="submit" name="button2" size=5 value="添加到购物车">
              <input type="hidden" name="name" value="丽芝士纳宝帝威化">
              <input type="hidden" name="cost" value="44.90">
              <input type="hidden" name="introduce" value="休闲零食 奶酪味 威化饼干 460g/盒">
        </form>
       </td>
   </tr>
  </table>
  </div>
</body>
</html>