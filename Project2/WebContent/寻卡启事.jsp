<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/style.css" type="text/css" rel="stylesheet"/>
<title>寻卡启事信息表</title>
</head>
<body style="background-color:#f2e3eb;">
  <jsp:include page="header.jsp">
  <jsp:param value="" name=""/>
  </jsp:include>
  <center>
    <font face="楷体" size="6" color="#00">寻卡启事信息表</font>
  <form  name="huntingform" action="寻卡启事处理界面.jsp" onsubmit="return check(this);" method="post">
  <table align='center' cellspacing='0' cellpadding='4' border='1' width=800px height=400px bgcolor='#eaf4f9' color=#000000>
  <tr>
     <td>失主用户名：</td>
     <td><input type="text" name="userName"/></td>
   </tr>
   
   <tr>
      <td>卡号：</td>
      <td><input type="text" name="cardID"/></td> 
   </tr>
   <tr>
       <td>失主手机号：</td>
       <td><input type="text" name="Ownerphone" id="Ownerphone"/></td>
   </tr>
   <tr>
       <td>姓名：</td>
       <td><input type="text" name="realName"/></td>
   </tr>
   <tr>
       <td>学校：</td>
       <td><input type="text" name="school"/></td>
   </tr>
  </table> 
  <br/>
  <br/>
  <input type="submit" value="提交"/>
  &emsp;&emsp;
  <input type="reset"  value="重置"/>    
  </form>
    <script type="text/javascript">
    function check(huntingform)  //表单输入验证函数
    {
    	if(huntingform.userName.value==""||huntingform.realName.value==""||huntingform.school.value==""||huntingform.cardID.value=="")
    	{
    		 alert("不允许出现空项！");
    		 return false;
    	}
    	var p=document.getElementById("Ownerphone");
    	p=p.value;
    	if(p.length!=11)
    	{
    		alert("手机号必须为11位！");
    		return false;
    	}
    }
    </script>
  
  </center>
<div id="footer">
 <p>2016级计本二班（汪辰、王香、颜文君、张宇琛）</p>
</div>
</body>
</html>