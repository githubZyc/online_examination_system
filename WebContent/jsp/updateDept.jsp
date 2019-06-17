<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'addDept.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		
		<link href="jsp/css/css.css" type="text/css" rel="stylesheet">
		
		<script type="text/javascript" src="./jsp/date.js"></script>

	</head>

	<body style="background-color: #EAF3FC">
	 <table cellSpacing=0 cellPadding=0 width="1180px" style="margin-left: -10px; margin-right: -5px; margin-top: -5px; border: 0">
  		<tr>
  			<td width="100%" style="background-image: url(admin/images/shadow_bg.jpg);" >&nbsp;</td>
  		</tr>
  	</table>
	<center>
	<h1>请填写您要更新的院系信息</h1>
		<s:form action="updateAction">
			<s:hidden name="deptBean.id"></s:hidden>
			<s:textfield name="deptBean.name" label="院系名称" style="width:275px;"></s:textfield>
			<s:textfield name="setDate" label="创办日期" style="width:275px;"
					onclick="fPopCalendar(event,this,this)" onfocus="this.select()"
					readonly="true"></s:textfield>
			<s:textarea name="deptBean.des" label="描述"
					style="width:275px; height: 200px;"></s:textarea>
			<s:submit value="更新"></s:submit>
		</s:form>
	</center>
	</body>
</html>
