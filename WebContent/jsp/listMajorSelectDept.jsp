<%@page import="com.online_examination_system.bean.DeptBean"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'listMajorSelectDept.jsp' starting page</title>
    
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
  <%
  	List<DeptBean> listDept = (List<DeptBean>)request.getAttribute("listDept");
  	DeptBean deptBean = null;
   %>
   <center>
   <h1>请选择您要查看的院系</h1>
    <form action="listMajorAction" method="post">
    	<table>
    		<tr>
    			<td>所属院系</td>
    			<td>
    				<select name="deptId">
	    				<option value="" selected="selected">请选择院系</option>
	    				<option value="0">查看所有院系专业</option>
	    				<%
	    					for (int i = 0; i < listDept.size(); i++){
	    						deptBean = listDept.get(i);
	    				%>
	    				<option value="<%=deptBean.getId() %>"><%=deptBean.getName() %></option>
	    				<%
	    					}
	    				 %>
    				</select>
    			</td>
    		</tr>
    		<tr>
    			<td colspan="2" align="right"">
    				<input type="submit" value="查看">&nbsp;
    			</td>
    		</tr>
    	</table>
    </form>
    </center>
  </body>
</html>
