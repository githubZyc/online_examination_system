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
    
    <title>My JSP 'addQuestionBankSelect.jsp' starting page</title>
    
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
  	<h1>请填写所要查看的选择题题目的限定条件</h1>
    <form action="searchQuestionBankSelectAction" method="post">
    	<table>
    		<tr>
    			<td>出题老师</td>
    			<td>
    				<select name="questionBankSelectBean.teachername">
    					<option value="" selected="selected">请选择出题老师</option>
    					<c:forEach items="${listTeacherBean }"  var="teacherBean">
    					<option value="${teacherBean.name }" >${teacherBean.name }</option>
    					</select>
    				</c:forEach>
    			</td>
    		</tr>
    		<tr>
    			<td>所属课程</td>
    			<td>
    				<select name="questionBankSelectBean.courseid">
    					<option value="" selected="selected">请选择课程</option>
    					<c:forEach items="${listCourseBean }" var="courseBean">
    					<option value="${courseBean.id }" >${courseBean.name }</option>
    					</c:forEach>
    				</select>
    			</td>
    		</tr>
    		<tr>
    			<td>题目</td>
    			<td>
    				<textarea rows="10" cols="30" name="questionBankSelectBean.question"></textarea>
    			</td>
    		</tr>
    		<tr>
    			<td colspan="2" align="right"><input type="submit" value="查看"></td>
    		</tr>
    	</table>
    </form>
  </center>
  </body>
</html>
