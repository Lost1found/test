<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/style.css" type="text/css" rel="stylesheet"/>
<title>失卡招领信息表</title>
</head>
<body style="background-color:#f2e3eb;">
  <jsp:include page="header.jsp">
  <jsp:param value="" name=""/>
  </jsp:include>
  <center>
     <font face="楷体" size="6" color="#00">失卡招领信息表</font>
  <form name="foundingform" action="失卡招领处理界面.jsp" onsubmit="return recheck(this)" method="post">
  <table align='center' cellspacing='0' cellpadding='4' border='1' width=800px height=500px bgcolor='#eaf4f9'>
  <tr>
    <td width=200px>拾主用户名：</td>
    <td width=500px><input type="text" name="userName"/></td>
  </tr>
  <tr>
    <td>拾主手机号：</td>
    <td><input type="text" name="pickerPhone" id="pickerPhone"/></td>
  </tr>
  <tr>
    <td>拾主姓名：</td>
    <td><input type="text" name="pickerName"/></td>
  </tr>
  <tr>
    <td>捡拾地点：</td>
    <td><input type="text" name="location"/></td>
  </tr>
  <tr>
    <td>捡拾时间：</td>
    <td><input type="text" name="time" id="time"/></td>
  </tr>
  <tr>
    <td>卡号：</td>
    <td><input type="text" name="cardID"/></td>
  </tr>
  <tr>
    <td>失主姓名：</td>
    <td><input type="text" name="ownerName"/></td>
  </tr>
  <tr>
    <td>失主学校：</td>
    <td><input type="text" name="ownerSchool"/></td>
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
    	  if(foundingform.location.value==""||foundingform.cardID.value==""||foundingform.userName.value==""||foundingform.pickerName.value==""||foundingform.ownerSchool.value==""||foundingform.ownerName.value=="")
      	{
      		 alert("不允许出现空项！");
      		 return false;
      	}
    	  var p=document.getElementById("pickerPhone");
    	  p=p.value;
    	  if(p.length!=11)
    	  {
    		  alert("手机号必须为11位！");
    		  return false;
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