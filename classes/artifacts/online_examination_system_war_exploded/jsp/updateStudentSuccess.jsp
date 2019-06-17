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
    
    <title>My JSP 'addStudent.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <h1>更新成功，您可以查看您的更新信息</h1>
  	<form action="searchStudentAction" method="post">
  	<input type="hidden" name="studentBean.powerid" value="1">
    <table>
    	<tr>
    		<td>学号</td>
    		<td><input type="text" name="studentBean.sno"></td>
    	</tr>
    	<tr>
    		<td>姓名</td>
    		<td><input type="text" name="studentBean.name"></td>
    	</tr>
    	<tr>
    		<td>出生日期</td>
    		<td><input type="text" name="studentBean.birthday"></td>
    	</tr>
    	<tr>
    		<td>民族</td>
    		<td><input type="text" name="studentBean.nation"></td>
    	</tr>
    	<tr>
    		<td>电话</td>
    		<td><input type="text" name="studentBean.tel"></td>
    	</tr>
    	<tr>
    		<td>邮箱</td>
    		<td><input type="text" name="studentBean.email"></td>
    	</tr>
    	<tr>
    		<td>地址</td>
    		<td><input type="text" name="studentBean.address"></td>
    	</tr>
    	<tr>
    		<td>密码</td>
    		<td><input type="text" name="studentBean.password"></td>
    	</tr>
    	<tr>
    		<td>班级</td>
    		<td>
    			<select name="studentBean.classid">
    				<option value="" selected="selected">请选择班级</option>
    				<c:forEach items="${listPoliticsClassBean }" var="politicsClassBean">
    				<option value="${politicsClassBean.id }">${politicsClassBean.name }</option>
    				</c:forEach>
    			</select>
    	</tr>
    	<tr>
    		<td>描述</td>
    		<td><input type="text" name="studentBean.des"></td>
    	</tr>
    	<tr>
    		<td colspan="2" align="right"><input type="submit" value="查询"></td>
    	</tr>
    </table>
    </form>
  </body>
</html>
