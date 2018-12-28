<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/style.css" type="text/css" rel="stylesheet"/>
<title>失卡招领信息表</title>
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
     <font face="楷体" size="6" color="#00">失卡招领信息表</font>
  <form name="foundingform" action="Foundingindex.jsp" onsubmit="return recheck(this)" method="post">
  <table align='center' cellspacing='0' cellpadding='4' border='1' width=800px height=500px bgcolor='#eaf4f9'>
  <tr>
    <td width=200px>拾主用户名：</td>
    <td width=500px><input type="text" name="userName"
    value="请输入您的用户名" onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
    onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999999"/></td>
  </tr>
  <tr>
    <td>拾主手机号：</td>
    <td><input type="text" name="pickerPhone" id="pickerPhone"
        value="请输入11位手机号" onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
        onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999999"/></td>
  </tr>
  <tr>
    <td>拾主姓名：</td>
    <td><input type="text" name="pickerName"
     value="请输入真实姓名" onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
     onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999999"/></td>
  </tr>
  <tr>
    <td>捡拾地点：</td>
    <td><input type="text" name="location"
     value="请尽可能详细描述" onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
     onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999999"/></td>
  </tr>
  <tr>
    <td>捡拾时间：</td>
    <td><input type="text" name="time" id="time"
     value="请按yyyy-MM-dd格式输入" onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
     onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999999"/></td>
  </tr>
  <tr>
    <td>卡号：</td>
    <td><input type="text" name="cardID"
     value="请输入拾卡卡号" onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
     onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999999"/></td>
  </tr>
  <tr>
    <td>失主姓名：</td>
    <td><input type="text" name="ownerName"
    value="请提供失主姓名" onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
    onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999999"/></td>
  </tr>
  <tr>
    <td>失主学校：</td>
    <td><input type="text" name="ownerSchool"
     value="请提供失主学校" onFocus="if(value==defaultValue){value='';this.style.color='#000'}"
     onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999999"/></td>
  </tr>
  </table>
  <br/>
  <br/>
  <input type="submit" value="提交"/>
  &emsp;&emsp;
  <input type="reset"  value="重置"/>
  </form>
    </center>
    <script type="text/javascript">
      function recheck(foundingform)
      {
    	  if(huntingform.location.value==""||huntingform.cardID.value==""||huntingform.userName.value==""||huntingform.pickerName.value==""||huntingform.ownerSchool.value==""||huntingform.ownerName.value=="")
      	{
      		 alert("不允许出现空项！");
      		 return false;
      	}
    	  var p=document.getElementById("pickerPhone");
    	  p=p.value;
    	  if(p.length!=11)
    	  {
    		  alert("手机号必须为11位！");
    	  }
    	  var str=document.getElementById("time");
    	  if($isDate(str)){
    		  try{
    			  str=Date.format(str,"yyyy-MM-dd");
    		  }catch(e){
    			  alert("时间不符合规范！");
    			  return false;
    		  }
    	  }
    	  if(!$isString(str)){
    		  alert("时间不符合规范！");
    		  return false;
    	  }
    	  if(!/^\d[4]((\.|\/|\-)\d{1,2}){1,2}$/.test(str))
    	  {
    		  alert("时间不符合规范！");
    		  return false;
    	  }
    	  var r=str.match(/\d{1,4}/g);
    	  if(r==null){
    		  alert("时间不符合规范！");
    		  return false;
    	  }
    	  var d=new Date(r[0],r[1]-1,r[2]);
    	  return(d.getFullYear()==r[0]&&(d.getMonth()+1)==r[1]&&d.getDate()==r[2]);
      }
    </script>
<div id="footer">
 <p>2016级计本二班（汪辰、王香、颜文君、张宇琛）</p>
</div>
</body>
</html>