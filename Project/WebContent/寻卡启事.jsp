<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/style.css" type="text/css" rel="stylesheet"/>
<title>寻卡启事信息表</title>
</head>
<body>
<div id="top">
<h1>失卡招领</h1>
</div>
<!-- 导航 -->
<div id="bar">
 <table class="table1">
  <tr>
	<td><a href="主界面.jsp">首页</a></td>
	<td><a href="失卡招领.jsp">失卡招领</a></td>
	<td><a href="寻卡启事.jsp">寻卡启事</a></td>
	<td><a href="关于我们.jsp">关于我们</a></td>
	<td><a href="留言板.jsp">留言板</a></td>
  </tr>
 </table>
</div>
<!-- 中间部分 -->
<div id="middle">
<img alt="" src="images/12.png">
<img alt="" src="images/11.png">
</div>
  <center>
    <font face="楷体" size="6" color="#00">寻卡启事信息表</font>
  <form  name="huntingform" action="Huntingindex.jsp" onsubmit="return check(this);" method="post">
  <table align='center' cellspacing='0' cellpadding='4' border='1' width=800px height=500px bgcolor='#eaf4f9' color=#000000>
  <tr>
     <td>失主用户名：</td>
     <td><input type="text" name="userName"
    value="请输入您的用户名" onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
    onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999999"/></td>
   </tr>
   
   <tr>
      <td>卡号：</td>
      <td><input type="text" name="cardID"
    value="请输入您的卡号" onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
    onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999999"/></td>
   </tr>
   <tr>
       <td>失主手机号：</td>
       <td><input type="text" name="Ownerphone" id="Ownerphone"
    value="请输入您的11位手机号" onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
    onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999999"/></td>
   </tr>
   <tr>
       <td>姓名：</td>
       <td><input type="text" name="realName"
       value="请输入您的真实姓名" onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
       onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999999"/></td>
   </tr>
   <tr>
       <td>学校：</td>
       <td><input type="text" name="school"
       value="请输入您的学校" onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
       onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999999"/></td>
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
    	}
    }
    </script>
  
  </center>
<div id="footer">
 <p>2016级计本二班（汪辰、王香、颜文君、张宇琛）</p>
</div>
</body>
</html>