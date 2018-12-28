<%@ page language="java" import="java.util.*"  import="java.util.ArrayList.*" import="com.ShoppingCart.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>21世纪书店--我的购物车</title>
    <style type="text/css">
        input{
            background:pink;
            border:0px solid #c00;
        }
    </style>
    <%@ include file="header.jsp" %>
  </head>
  <body>
    <div align="center">
        <h2 align="center">购物车管理</h2>
        <%
            request.setCharacterEncoding("utf-8");
        ArrayList books=(ArrayList)request.getSession().getAttribute("books");
            for(int i=0;i<books.size();i++){
                if(books.get(i)!=null){
                    String ss=(String)books.get(i);
                    //将已添加到购物车的图书信息保存在表单中
                %>
                <form action="" method="post">
                    <input type="text" name="book" value="<%=ss%>" size="40" maxlength="200" readonly>
                    <input type="submit" value="删除">
                </form>
                <%  
                }
            }
            //获取要删除的图书的信息
            String delbook=request.getParameter("book");
            if(delbook!=null){
                //out.println("要删除的书是 "+delbook+"<br>");
                for(int j=0;j<books.size();j++){
                    String book=(String)books.get(j);
                    if(book==null){
                        books.remove(j);
                    }
                    if(book!=null && book.indexOf(delbook)!=-1){
                        books.remove(j);
                        //刷新当前页面
                        %>
                        <script type="text/javaScript">
                        alert("删除成功");
                        window.location.href=window.location.href;
                        </script>
                        <%
                        break;
                    }
                }   
            }
         %>
    </div>
  </body>
</html>