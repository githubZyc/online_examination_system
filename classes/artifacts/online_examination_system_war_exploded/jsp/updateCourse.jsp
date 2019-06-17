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
    
    <title>My JSP 'addCourse.jsp' starting page</title>
    
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
	<h1>请填写您要更新的课程信息</h1>
    <form action="updateCourseAction" method="post">
    <input type="hidden" name="courseBean.id" value="${courseBean.id }">
    	<table>
    		<tr>
    			<td>pa课程名称</td>
    			<td><input type="text" name="courseBean.name" value="${courseBean.name }"></td>
    		</tr>
    		<tr>
    			<td>描述</td>
    			<td><textarea rows="10" cols="30" name="courseBean.des">${courseBean.des }</textarea></td>
    		</tr>
    		<tr>
    			<td colspan="2" align="right"><input type="submit" value="更新"></td>
    		</tr>
    	</table>
    </form>
    </center>
  </body>
</html>
