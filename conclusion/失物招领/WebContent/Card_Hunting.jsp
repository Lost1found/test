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
  <center>
    <font face="楷体" size="6" color="#00">寻卡启事信息表</font>
  <form  name="huntingform" action="Huntingindex.jsp" onsubmit="return check(this);" method="post">
  <table width=500px height=400px>
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
  <input type="submit" value="提交"/>
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
</body>
</html>