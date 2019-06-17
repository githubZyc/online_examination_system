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
  	<h1>请填写选择题更新信息</h1>
    <form action="updateQuestionBankSelectAction" method="post">
    	<input type="hidden" name="questionBankSelectBean.id" value="${questionBankSelectBean.id }">
    	<input type="hidden"" name="questionBankSelectBean.teachername" value="${questionBankSelectBean.teachername }">
    	<table>
    		<tr>
    			<td>所属课程</td>
    			<td>
    				<select name="questionBankSelectBean.courseid">
    					<c:forEach items="${listCourseBean }" var="courseBean">
    						<c:if test="${courseBean.id==questionBankSelectBean.courseid }">
    							<option value="${courseBean.id }" selected="selected">${courseBean.name }</option>
    						</c:if>
    					</c:forEach>
    					<option value="">请选择课程</option>
    					<c:forEach items="${listCourseBean }" var="courseBean">
    					<option value="${courseBean.id }" >${courseBean.name }</option>
    					</c:forEach>
    				</select>
    			</td>
    		</tr>
    		<tr>
    			<td>题目</td>
    			<td>
    				<textarea rows="10" cols="30" name="questionBankSelectBean.question">${questionBankSelectBean.question }</textarea>
    			</td>
    		</tr>
    		<tr>
    			<td>答案</td>
    			<td>
    				<c:if test="${questionBankSelectBean.answer==1 }">
    					<input type="radio" name="questionBankSelectBean.answer" value="1" checked="checked">A&nbsp;&nbsp;&nbsp;&nbsp;
    				</c:if>
    				<c:if test="${questionBankSelectBean.answer!=1 }">
    					<input type="radio" name="questionBankSelectBean.answer" value="1">A&nbsp;&nbsp;&nbsp;&nbsp;
    				</c:if>
    				<c:if test="${questionBankSelectBean.answer==2 }">
    					<input type="radio" name="questionBankSelectBean.answer" value="2" checked="checked">B&nbsp;&nbsp;&nbsp;&nbsp;
    				</c:if>
    				<c:if test="${questionBankSelectBean.answer!=2 }">
    					<input type="radio" name="questionBankSelectBean.answer" value="2">B&nbsp;&nbsp;&nbsp;&nbsp;
    				</c:if>
    				
    				<c:if test="${questionBankSelectBean.answer==3 }">
    					<input type="radio" name="questionBankSelectBean.answer" value="3" checked="checked">C&nbsp;&nbsp;&nbsp;&nbsp;
    				</c:if>
    				<c:if test="${questionBankSelectBean.answer!=3 }">
    					<input type="radio" name="questionBankSelectBean.answer" value="3">C&nbsp;&nbsp;&nbsp;&nbsp;
    				</c:if>
    				<c:if test="${questionBankSelectBean.answer==4 }">
    					<input type="radio" name="questionBankSelectBean.answer" value="4" checked="checked">D&nbsp;&nbsp;&nbsp;&nbsp;
    				</c:if>
    				<c:if test="${questionBankSelectBean.answer!=4 }">
    					<input type="radio" name="questionBankSelectBean.answer" value="4">D&nbsp;&nbsp;&nbsp;&nbsp;
    				</c:if>
    			</td>
    		</tr>
    		<tr>
    			<td colspan="2" align="right"><input type="submit" value="更新"></td>
    		</tr>
    	</table>
    </form>
  </center>
  </body>
</html>
