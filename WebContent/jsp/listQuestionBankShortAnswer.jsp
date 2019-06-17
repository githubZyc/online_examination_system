<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'listQuestionBankSelect.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="jsp/css/css.css" type="text/css" rel="stylesheet">

  </head>
  
  <body>
  <table cellSpacing=0 cellPadding=0 width="1180px" style="margin-left: -10px; margin-right: -5px; margin-top: -5px; border: 0">
  	<tr>
  		<td width="100%" style="background-image: url(admin/images/shadow_bg.jpg);" >&nbsp;</td>
  	</tr>
  </table>
  	<center>
  	<h1>您所要查看的简答题信息如下</h1>
    <table border="1" bordercolor="#C6E6FF" cellspacing="0">
    	<tr>
    		<td align="center" style="width: 100px;">出题老师</td>
    		<td align="center" style="width: 100px;">所属课程</td>
    		<td align="center" style="width: 400px;">题目</td>
    		<td align="center" style="width: 400px;">答案</td>
    		<td align="center" style="width: 40px;">更新</td>
    		<td align="center" style="width: 40px;">删除</td>
    	</tr>
    	<c:forEach items="${listQuestionBankShortAnswerBean }" var="questionBankShortAnswerBean">
    	<tr>
    		<td>${questionBankShortAnswerBean.teachername }</td>
    		<td>
    			<c:forEach items="${listCourseBean }" var="courseBean">
    				<c:if test="${questionBankShortAnswerBean.courseid==courseBean.id }">${courseBean.name }</c:if>
    			</c:forEach>
    		</td>
    		<td>${questionBankShortAnswerBean.question }</td>
    		<td align="center">
    			${questionBankShortAnswerBean.answer }
    		</td>
    		<td align="center"><a href="findQuestionBankShortAnswerByIdAction?questionBankShortAnswerBean.id=${questionBankShortAnswerBean.id }">更新</a></td>
    		<td align="center"><a href="deleteQuestionBankShortAnswerAction?questionBankShortAnswerBean.id=${questionBankShortAnswerBean.id }">删除</a></td>
    	</tr>
    	</c:forEach>
    </table>
   	</center>
  </body>
</html>
