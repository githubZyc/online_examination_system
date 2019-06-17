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
    
    <title>My JSP 'addTeacher.jsp' starting page</title>
    
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
  	<h1>请填写您要更新的内容</h1>
    <form action="updateTeacherAction" method="post">
    	<input type="hidden" name="teacherBean.id" value=${teacherBean.id }>
    	<table>
    		<tr>
    			<td>教师编号</td>
    			<td><input type="text" name="teacherBean.tno" value=${teacherBean.tno }></td>
    		</tr>
    		<tr>
    			<td>姓名</td>
    			<td><input type="text" name="teacherBean.name" value=${teacherBean.name }></td>
    		</tr>
    		<tr>
    			<td>出生日期</td>
    			<td><input type="text" name="teacherBean.birthday" value=${teacherBean.birthday } onclick="fPopCalendar(event,this,this)" onfocus="this.select()" readonly="readonly"></td>
    		</tr>
    		<tr>
    			<td>民族</td>
    			<td><input type="text" name="teacherBean.nation" value=${teacherBean.nation }></td>
    		</tr>
    		<tr>
    			<td>电话</td>
    			<td><input type="text" name="teacherBean.tel" value=${teacherBean.tel }></td>
    		</tr>
    		<tr>
    			<td>邮箱</td>
    			<td><input type="text" name="teacherBean.email" value=${teacherBean.email }></td>
    		</tr>
    		<tr>
    			<td>地址</td>
    			<td><input type="text" name="teacherBean.address" value=${teacherBean.address }></td>
    		</tr>
    		<tr>
    			<td>职位</td>
    			<td><input type="text" name="teacherBean.position" value=${teacherBean.position }></td>
    		</tr>
    		<tr>
    			<td>密码</td>
    			<td><input type="text" name="teacherBean.password" value=${teacherBean.password }></td>
    		</tr>
    		<tr>
    			<td>权限</td>
    			<td>
    			<select name="teacherBean.powerid">
    				<option value="${teacherBean.powerid }" selected="selected">${teacherBean.powerid==2?"普通教师用户":"管理员" }</option>
    				<option value="3">管理员</option>
    				<option value="2">普通教师用户</option>
    			</select>
    			</td>
    		</tr>
    		<tr>
    			<td>描述</td>
    			<td><textarea name="teacherBean.des" rows="10" cols="30">${teacherBean.des }</textarea></td>
    		</tr>
    		<tr>
    			<td colspan="2" align="right"><input type="submit" value="更新"></td>
    		</tr>
    	</table>
    </form>
  </body>
</html>
