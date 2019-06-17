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
	
	<script type="text/javascript">
		var int = self.setInterval("remaintime()",1000);
    	function remaintime(){
    		var remaintime = document.getElementById("remaintime").value;
    		document.getElementById("remaintime").value = remaintime-1;
    		document.getElementById("hours").value = (remaintime - (remaintime%3600))/3600;
    		document.getElementById("minutes").value = (remaintime%3600 - remaintime%3600%60)/60;
    		document.getElementById("seconds").value = remaintime%60;
    	}
    	
    	function urlfun(url){
    		var aaa=url.href;
    		url.href = aaa + "?studentid=" + document.getElementById("studentid").value + "&paperName=" + document.getElementById("paperName").value;
    	}
	</script>

	</head>

	<body>
		<input type="hidden" id="studentid" name="studentid" value="${studentid }">
		<input type="hidden" id="paperName" name="paperName" value="${paperName }">
		<table cellSpacing=0 cellPadding=0 width="100%"	background="images/header_bg.jpg" border='0' style="margin-top: -4px; margin-left: -7px;">
			<tr height="56">
				<td width="200">
					<img height="56" src="images/examination_header_left.png">
				</td>
				<td>
					<br>
					请选择答题类型：
					<a href="examSelectAction" target="main" style="text-decoration: none;"><input type="button" value="选择题"></a>
					<a href="examJudgeAction" target="main" style="text-decoration: none;"><input type="button" value="判断题"></a>
					<a href="examFillAction" target="main" style="text-decoration: none;"><input type="button" value="填空题"></a>
					<a href="examShortAnswerAction" target="main" style="text-decoration: none;"><input type="button" value="简答题"></a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="exitAction" target="_top" style="text-decoration: none;"><input type="button" value="交卷"></a>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</td>
				<td style="font-weight: bold; color: #ffffff; padding-top: 20px" align="right"">
					当前用户：${user.name}&nbsp;&nbsp;
					考试剩余时间:<input type="hidden" id="remaintime" value=7200>
					<input type="text" id="hours" style="width: 20px">小时
					<input type="text" id="minutes" style="width: 20px">分
					<input type="text" id="seconds" style="width: 20px">秒
					&nbsp;&nbsp;&nbsp;
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
