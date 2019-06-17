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
    
    <title>My JSP 'selectPaper.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="jsp/css/css.css" type="text/css" rel="stylesheet">
	
  </head>
  
  <body>
   	<table cellSpacing=0 cellPadding=0 width="1368px" style="margin-left: -10px; margin-right: -5px; margin-top: -5px; border: 0">
  		<tr>
  			<td width="100%" style="background-image: url(admin/images/shadow_bg.jpg);" >&nbsp;</td>
  		</tr>
  	</table>
  	<center>
  		<h1>请选择试卷与题目类型</h1>
  		<form action="forwardTypeAction" method="post">
  			<input type="hidden" name="studentid" value="${user.id }">
  			<table>
  				<tr>
  					<td>试卷名称</td>
  					<td>
  						<select name="paperName" id="paperName">
  							<option value="">请选择试卷</option>
  							<c:forEach items="${listPaperName }" var="papername">
  							<option value="${papername }">${papername }</option>
  							</c:forEach>
  						</select>
  					</td>
  				</tr>
  				<tr>
  					<td colspan="2">
  						<br>
  						<input type="radio" name="QuestionType" value="Fill" checked="checked">填空题&nbsp;&nbsp;
  						<input type="radio" name="QuestionType" value="ShortAnswer">简答题
  					</td>
  				</tr>
  				<tr>
  					<td colspan="2" align="right"><input type="submit" value="开始阅卷">&nbsp;</td>
  				</tr>
  			</table>
  		</form>
  	</center>
  </body>
</html>
