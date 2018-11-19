<%@ page language="java" import="java.util.*" import="java.util.ArrayList.*" import="com.ShoppingCart.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>商品浏览</title>
    <style type="text/css">
        input{
            background: white;
            border: 1px ;
        }
    </style>
    <%@ include file="header.jsp" %>
  </head>

  <body>
    <div align="center">
        <h2 align="center">商品浏览</h2>
<%!private  CatalogItem[] items=Catlog.getItems(); %>
        <form action="" method="post">
            <table>
            <tr style="background:#FAFAD2;" bordercolor="#CDC9C9">
             <td align="center">商品名称</td>
             <td align="center">商品详情</td>
             <td align="center">单价</td>
             <td align="center">操作</td>
            </tr>
             <%for(int i=0;i<4;i++){
             %>
             <tr bordercolor="#CDC9C9">
             <td><input type="text" name="book" value="<%=items[i].getItemID() %>">
             <td><input type="text" name="detail" value="<%=items[i].getShortDescription() %>">
             <td><input type="text" name="cost" value="<%=items[i].getCost() %>">
             <td>数量：<input type="text" name="count"/> <input type="button" value="添加到购物车"/></td>
             </tr>
             <%
             } 
             %>
           </table>
        </form>

    <%
        request.setCharacterEncoding("utf-8");
        //获取要加入购物车的图书名
        String book=request.getParameter("book");
        ArrayList books=(ArrayList)request.getSession().getAttribute("books");
        if(books==null){
            books=new ArrayList();
            session.setAttribute("books",books);
        }
        if(book!=null){
            books.add(book);
            out.println("<script type='text/javascript'>alert('加入购物车成功');</script>");
          }
    %>  
    <br>
    <input type="button" value="查看我的购物车 " onClick="location.href='cart.jsp'"><br>
    </div>

    </body>
</html>
