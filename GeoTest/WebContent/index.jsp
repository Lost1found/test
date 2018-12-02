<%@ page language="java" import="com.geotest.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta  http-equiv="Content-Type"   content="text/html;  
     charset=UTF-8">
    <title>地理知识</title>
    <link  href="css/style.css"  rel="stylesheet" />
    <script  type="text/javascript">
function  frmsubmit(){
	var  frm=document.getElementById("frmmain");
	frm.submit();
}
</script>
  </head>
<body>
  <%
    if(session.getAttribute("userName")==null)
    	response.sendRedirect("login.jsp");
  %>
 <jsp:include page="header.jsp">
 <jsp:param name="count"
    value="<%= mQuestions.length %>" />
    </jsp:include>
<%!
int  i=0;
private  GeoQuestion[]  mQuestions=GeoQuestionBank.getQuestions();
private  String  checkAnswer(int  p,boolean  mTrueAnswer){   	   
	if(mQuestions[p].isTrueQuestion()==mTrueAnswer)
	   return "回答正确";
else
	   return "回答错误";
} 
%>

<div  class="question">
<%
   int  i=0;
   if(request.getParameter("next")!=null)
    i=(i+1) % mQuestions.length;
    if(request.getParameter("pre")!=null)
    i=(i-1) % mQuestions.length;
    out.print(mQuestions[i].getQuestion()); 
 %>
</div>
<form  action=""  method="post"  name="frmmain"  id="frmmain">
        <input  type="radio"  name="answer"  value="correct"  onclick="frmsubmit();" />对
        <input  type="radio"  name="answer"  value="wrong"  onclick="frmsubmit();" />错
</form>
<form  action=""  method="post"  name="frmnext">
    <input  type="submit"  name="next"  value="下一题" />
</form>
<form  action=""  method="post"  name="frmnext">
    <input  type="submit"  name="pre"  value="上一题" />
</form>
<div  id="answer">
<%-- 
    String  mAnswer=request.getParameter("answer");
    if(mAnswer!=null){
    	  if(mAnswer.equals("correct"))
          out.print("回答正确");
        else
    	    out.print("回答错误");   
    }
--%>
</div>
</body>
</html>