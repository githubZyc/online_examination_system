<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ page isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateDept.jsp' starting page</title>
    
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
 	<h1>请填写您要更新的内容</h1>
 	<form action="updateMajorAction" method="post">
 	<input type="hidden" name="majorBean.id" value="${majorBean.id }">
    <table>
    	<tr>
    		<td>
    			专业名称
    		</td>
    		<td>
    			<input type="text" name="majorBean.name" value="${majorBean.name }">
    		</td>
    	</tr>
    	<tr>
    		<td>
    			创办日期
    		</td>
    		<td>
    			<input type="text" name="majorBean.setDate" onclick="fPopCalendar(event,this,this)" value="${majorBean.setDate }" onfocus="this.select()" readonly="readonly">
    		</td>
    	</tr>
    	<tr>
    		<td>
    			所属院系
    		</td>
    		<td>
    			<select name="majorBean.deptId">
    				<option value="${deptBean.id }">${deptBean.name }</option>
    				
    				<c:forEach items="${listDept }" var="deptBean1">
    				<option value="${deptBean1.id }" >${deptBean1.name }</option>
    				</c:forEach>
    			</select>
    		</td>
    	</tr>
    	<tr>
    		<td>
    			描述
    		</td>
    		<td>
    		
    			<textarea rows="10" cols="30" name="majorBean.des">${majorBean.des }</textarea><br>
    		</td>
    	</tr>
    	<tr>
    		<td colspan="2" align="right">
    			<input type="submit" value="更新">&nbsp;
    		</td>
    	</tr>
    </table>
    </form>
    </center>
  </body>
</html>
