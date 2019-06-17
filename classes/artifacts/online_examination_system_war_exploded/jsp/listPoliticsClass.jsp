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
    
    <title>My JSP 'listPoliticsClass.jsp' starting page</title>
    
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
	<h1>您所查看的班级信息如下</h1>
    <table border="1" cellspacing="0">
    	<tr>
    		<td width="220px" align="center">班级名称</td>
    		<td width="160px" align="center">所属专业</td>
    		<td width="100px" align="center">负责老师</td>
    		<td width="260px" align="center">描述</td>
    		<td align="center">更新</td>
    		<td align="center">删除</td>
    	</tr>
    	<c:forEach items="${listPoliticsClassBean }" var="politicsClassBean">
    	<tr>
    		<td>${politicsClassBean.name }</td>
    		<td>
    			<c:forEach items="${listMajorBean }" var="majorBean">
    				<c:if test="${politicsClassBean.majorId==majorBean.id }">${majorBean.name }</c:if>
    			</c:forEach>
    		</td>
    		<td>
    			<c:forEach items="${listTeacherBean }" var="teacherBean">
    				<c:if test="${politicsClassBean.teacherId==teacherBean.id }">${teacherBean.name }</c:if>
    			</c:forEach>
    		</td>
    		<td>${politicsClassBean.des }</td>
    		<td><a href="findPoliticsClassByIdAction?politicsClassBean.id=${politicsClassBean.id }">更新</a></td>
    		<td><a href="deletePoliticsClassAction?politicsClassBean.id=${politicsClassBean.id }">删除</a></td>
    	</tr>
    	</c:forEach>
    </table>
    </center>
  </body>
</html>
