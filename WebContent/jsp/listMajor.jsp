<%@page import="com.online_examination_system.bean.MajorBean"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ page isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'listMajor.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body style="background-color: #EAF3FC">
	  <table cellSpacing=0 cellPadding=0 width="1180px" style="margin-left: -10px; margin-right: -5px; margin-top: -5px; border: 0">
	  	<tr>
	  		<td width="100%" style="background-image: url(admin/images/shadow_bg.jpg);" >&nbsp;</td>
	  	</tr>
	  </table>
	<center>
	<h1>您所查看的院系包含的以下专业</h1>
    <table border="1" bordercolor="#C6E6FF" cellspacing="0">
    	<tr>
    		<td width="220px" align="center">专业名称</td>
    		<td width="160px" align="center">开设日期</td>
    		<td width="260px" align="center">描述</td>
    		<td align="center">更新</td>
    		<td align="center">删除</td>
    	</tr>
    	
    	<c:forEach items="${listMajor}" var="majorBean" >
    	<tr>
    		<td>${majorBean.name }</td>
    		<td>${majorBean.setDate }</td>
    		<td>${majorBean.des }</td>
    		<td><a href="findMajorByIdAction?majorId=${majorBean.id }">更新</a></td>
    		<td><a href="deleteMajorByIdAction?majorId=${majorBean.id }">删除</a></td>
    	</tr>
    	</c:forEach>
    </table>
    </center>
  </body>
</html>
