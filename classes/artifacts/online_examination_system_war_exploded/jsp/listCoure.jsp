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
    
    <title>My JSP 'listCoure.jsp' starting page</title>
    
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
	<h1>所有课程信息如下</h1>
    <table border="1" cellspacing="0">
    	<tr>
    		<td align="center" style="width: 100px">课程名称</td>
    		<td align="center" style="width: 400px">描述</td>
    		<td align="center" style="width: 40px">更新</td>
    		<td align="center" style="width: 40px">删除</td>
    	</tr>
    	<c:forEach items="${listCourseBean }" var="courseBean">
    	<tr>
    		<td>${courseBean.name }</td>
    		<td>${courseBean.des }</td>
    		<td><a href="findCourseByIdAction?courseBean.id=${courseBean.id }">更新</a></td>
    		<td><a href="deleteCourseAction?courseBean.id=${courseBean.id }">删除</a></td>
    	</tr>
    	</c:forEach>
    </table>
    </center>
  </body>
</html>
