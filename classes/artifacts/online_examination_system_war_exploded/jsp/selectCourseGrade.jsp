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
    
    <title>My JSP 'selectCourseGrade.jsp' starting page</title>
    
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
  <h1>请选择查看的课程</h1>
    <table border="1" cellspacing="0">
    	<tr>
    		<td width="120px" align="center">课程名称</td>
    		<td width="120px" align="center">考试试卷</td>
    		<td width="120px" align="center">成绩</td>
    	</tr>
    	<c:forEach items="${listGradeBean }" var="gradeBean">
    	<tr>
    		<td width="120px" align="center">${gradeBean.courseName }</td>
    		<td width="120px" align="center">${gradeBean.paperName }</td>
    		<td width="120px" align="center">${gradeBean.grade }</td>
    	</tr>
    	</c:forEach>
    </table>
    </center>
  </body>
</html>
