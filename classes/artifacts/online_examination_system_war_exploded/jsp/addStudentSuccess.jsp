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
	
	<link href="jsp/css/css.css" type="text/css" rel="stylesheet">
		
	<script type="text/javascript" src="./jsp/date.js"></script>

  </head>
  
  <body>
  	<table cellSpacing=0 cellPadding=0 width="1180px" style="margin-left: -10px; margin-right: -5px; margin-top: -5px; border: 0">
  		<tr>
  			<td width="100%" style="background-image: url(admin/images/shadow_bg.jpg);" >&nbsp;</td>
  		</tr>
  	</table>
	<center>
  <h1>添加成功,您可以查看添加后的学生信息</h1>
  	<form action="searchStudentAction" method="post">
  	<input type="hidden" name="studentBean.powerid" value="1">
  	<input type="hidden" name="studentBean.des" value="">
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
    		<td><input type="text" name="studentBean.birthday" onclick="fPopCalendar(event,this,this)" onfocus="this.select()"
					readonly="readonly"></td>
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
    		<td colspan="2" align="right"><input type="submit" value="查询"></td>
    	</tr>
    </table>
    </form>
  </body>
</html>
