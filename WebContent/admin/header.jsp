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
		 <base href="<%=basePath%>admin/">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
		
	<link rel="css/admin.css" type="text/css" href="stylesheet">

	</head>

	<body>
		<table cellSpacing=0 cellPadding=0 width="100%"	background="images/header_bg.jpg" border='0' style="margin-top: -4px; margin-left: -7px;">
			<tr height="56">
				<td width="260">
					<img height="56" src="images/header_left.png">
				</td>
				<td width="260">
					<img height="56" src="images/online_exam_system.png">
				</td>
				<td style="font-weight: bold; color: #ffffff; padding-top: 20px" align="right"">
					当前用户：${user.name} &nbsp;&nbsp;
					<a style="COLOR: #fff" onclick="if (confirm('确定要退出吗？')) return true; else return false;" href="exitAction" target=_top>退出系统</a>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</td>
			</tr>
		</table>
		<table cellSpacing=0 cellPadding=0 width="100%" border=0>
			<tr bgColor=#1c5db6 height=4>
				<td></td>
			</tr>
		</table>
	</body>
</html>
