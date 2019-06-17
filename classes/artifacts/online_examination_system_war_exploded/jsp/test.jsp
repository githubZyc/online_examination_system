<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="jsp/css/css.css" type="text/css" rel="stylesheet">

  </head>
  
  <body style="background-color: #EAF3FC">
	<table cellSpacing=0 cellPadding=0 width="1180px" style="margin-left: -10px; margin-right: -5px; margin-top: -5px; border: 0">
  		<tr>
  			<td width="100%" style="background-image: url(admin/images/shadow_bg.jpg);" >&nbsp;</td>
  		</tr>
 	</table>
    <center>
	<h1>请填写要生成的试卷信息</h1>
	试卷名称&nbsp;&nbsp;<input><br><br>
	所属课程&nbsp;&nbsp;<select><option>请选择课程</option></select><br><br>
	选择题数量<input style="width: 90px">&nbsp;&nbsp;&nbsp;每题分值&nbsp;<input style="width: 90px"><br><br>
	判断题数量<input style="width: 90px">&nbsp;&nbsp;&nbsp;每题分值&nbsp;<input style="width: 90px"><br><br>
	填空题数量<input style="width: 90px">&nbsp;&nbsp;&nbsp;每题分值&nbsp;<input style="width: 90px"><br><br>
	简答题数量<input style="width: 90px">&nbsp;&nbsp;&nbsp;每题分值&nbsp;<input style="width: 90px"><br><br>

	</center>
  </body>
</html>
