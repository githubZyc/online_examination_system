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
  	<h1>请填写选择题信息</h1>
    <form action="addQuestionBankSelectAction" method="post">
    	<input type="hidden" name="questionBankSelectBean.teachername" value="${user.name }">
    	<table>
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
    			<td>A</td>
    			<td>
    				<textarea rows="2" cols="30" name="questionBankSelectBean.A"></textarea>
    			</td>
    		</tr>
    		<tr>
    			<td>B</td>
    			<td>
    				<textarea rows="2" cols="30" name="questionBankSelectBean.B"></textarea>
    			</td>
    		</tr>
    		<tr>
    			<td>C</td>
    			<td>
    				<textarea rows="2" cols="30" name="questionBankSelectBean.C"></textarea>
    			</td>
    		</tr>
    		<tr>
    			<td>D</td>
    			<td>
    				<textarea rows="2" cols="30" name="questionBankSelectBean.D"></textarea>
    			</td>
    		</tr>
    		<tr>
    			<td>答案</td>
    			<td>
    				<input type="radio" name="questionBankSelectBean.answer" value="1">A&nbsp;&nbsp;&nbsp;&nbsp;			
    				<input type="radio" name="questionBankSelectBean.answer" value="2">B&nbsp;&nbsp;&nbsp;&nbsp; 	 			
    				<input type="radio" name="questionBankSelectBean.answer" value="3">C&nbsp;&nbsp;&nbsp;&nbsp; 	
    	    		<input type="radio" name="questionBankSelectBean.answer" value="4">D&nbsp;&nbsp;&nbsp;&nbsp;
    		</tr>
    		
    		<tr>
    			<td>解析</td>
    			<td>
    				<textarea rows="20" cols="30" name="questionBankSelectBean.explains"></textarea>
    			</td>
    		</tr>
    		<tr>
    			<td colspan="2" align="right"><input type="submit" value="添加"></td>
    		</tr>
    	</table>
    </form>
  </center>
  </body>
</html>
