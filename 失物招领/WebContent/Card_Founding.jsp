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
  <center>
     <font face="楷体" size="6" color="#00">失卡招领信息表</font>
  <form name="foundingform" action="Foundingindex.jsp" onsubmit="return recheck(this)" method="post">
  <table width=500px height=500px>
  <tr>
    <td>拾主用户名：</td>
    <td><input type="text" name="userName"
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
  <input type="submit" value="提交"/>
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
</body>
</html>