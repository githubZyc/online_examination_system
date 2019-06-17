<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.online_examination_system.bean.*"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

		<title>My JSP 'searchDept.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

		<script type="text/javascript">
		function del(){
			if(confirm("确定删除该条记录？")){
				return true;
			} 
			return false;
		}
	</script>

	</head>
	<%
		String userName = (String) request.getSession().getAttribute(
				"userName");
	%>
	<body style="background-color: #EAF3FC">
	<table cellSpacing=0 cellPadding=0 width="1180px" style="margin-left: -10px; margin-right: -5px; margin-top: -5px; border: 0">
  		<tr>
  			<td width="100%" style="background-image: url(admin/images/shadow_bg.jpg);" >&nbsp;</td>
  		</tr>
 	</table>
		<center>
			<h1>添加成功，您可以继续添加院系信息</h1>
			<table>
			<tr><td>
				<table border="1" bordercolor="#C6E6FF" cellspacing="0">
					<tr>
			  			<td width="220px" align="center">院系名称</td>
			  			<td width="160px" align="center">创办日期</td>
			  			<td width="260px" align="center">描述</td>
			  			<td align="center">更新</td>
			  			<td align="center">删除</td>
			  		</tr>
					<s:iterator value="listDept" id="deptBean" var="deptBean">
						<tr>
							<td>
								<s:property value="name" />
							</td>
							<td>
								<s:date name="setdate" format="yyyy-MM-dd" />
							</td>
							<td>
								<s:property value="des" />
							</td>
							<td>
								<a href="findByIdAction?id=<s:property value='id' />">更新</a>
							</td>
							<td>
								<a href="deleteAction?id=<s:property value='id' />"
									onclick="return del();">删除</a>
							</td>
						</tr>
					</s:iterator>
				</table>
				</td>
			</tr>
			<tr>
				<td align="right">
					<a href="./jsp/addDept.jsp" style="text-decoration: none; position: relative; width: 1000px;">
						<input type="button" value="继续添加">
					</a>
				</td>
			</tr>
			</table>
		</center>
		
	</body>
</html>
