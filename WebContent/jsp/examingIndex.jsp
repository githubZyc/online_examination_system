<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'examingIndex.jsp' starting page</title>
    
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
  	<h1 style="font-weight: bold;">考试须知</h1>
    <table width="60%">
    	<tr background="#ffffff">
    		<td style="font-size: 20; font-weight: bold;">1、考生进入考试界面后选择相应题型开始作答。</td>
    	</tr>
    	<tr background="#ffffff">
    		<td style="font-size: 20; font-weight: bold;">2、考试过程中严禁上网查阅资料、严禁他人代考等舞弊行为。</td>
    	</tr>
    	<tr background="#ffffff">
    		<td style="font-size: 20; font-weight: bold;">3、考试时间为2小时，请考生把握好考试时间。</td>
    	</tr>
    	<tr background="#ffffff">
    		<td style="font-size: 20; font-weight: bold;">4、考试结束后请提交试卷，交卷后将返回系统登录页面。</td>
    	</tr>
    </table>
   </center>
  </body>
</html>
