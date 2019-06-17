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
	<h1>请填写您要更新的内容</h1>
  	<form action="updateStudentAction" method="post">
  	<input type="hidden" name="studentBean.id" value="${studentBean.id }">
  	<input type="hidden" name="studentBean.powerid" value="1">
    <table>
    	<tr>
    		<td>学号</td>
    		<td><input type="text" name="studentBean.sno" value="${studentBean.sno }"></td>
    	</tr>
    	<tr>
    		<td>姓名</td>
    		<td><input type="text" name="studentBean.name" value="${studentBean.name }"></td>
    	</tr>
    	<tr>
    		<td>出生日期</td>
    		<td><input type="text" name="studentBean.birthday" value="${studentBean.birthday }" onclick="fPopCalendar(event,this,this)" onfocus="this.select()"
					readonly="readonly"></td>
    	</tr>
    	<tr>
    		<td>民族</td>
    		<td><input type="text" name="studentBean.nation" value="${studentBean.nation }"></td>
    	</tr>
    	<tr>
    		<td>电话</td>
    		<td><input type="text" name="studentBean.tel" value="${studentBean.tel }"></td>
    	</tr>
    	<tr>
    		<td>邮箱</td>
    		<td><input type="text" name="studentBean.email" value="${studentBean.email }"></td>
    	</tr>
    	<tr>
    		<td>地址</td>
    		<td><input type="text" name="studentBean.address" value="${studentBean.address }"></td>
    	</tr>
    	<tr>
    		<td>密码</td>
    		<td><input type="text" name="studentBean.password" value="${studentBean.password }"></td>
    	</tr>
    	<tr>
    		<td>班级</td>
    		<td>
    			<select name="studentBean.classid">
    				<option value="${studentBean.classid }" selected="selected">
    					<c:forEach items="${listPoliticsClassBean }" var="politicsClassBean">
    						<c:if test="${studentBean.classid==politicsClassBean.id }">politicsClassBean.name</c:if>
    					</c:forEach>
    				</option>
    				<c:forEach items="${listPoliticsClassBean }" var="politicsClassBean">
    				<option value="${politicsClassBean.id }">${politicsClassBean.name }</option>
    				</c:forEach>
    			</select>
    	</tr>
    	<tr>
    		<td>描述</td>
    		<td><textarea rows="10" cols="30" name="studentBean.des">${studentBean.des }</textarea></td>
    	</tr>
    	<tr>
    		<td colspan="2" align="right"><input type="submit" value="更新"></td>
    	</tr>
    </table>
    </form>
    </center>
  </body>
</html>
