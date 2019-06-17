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
    
    <title>My JSP 'listStudent.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="jsp/css/css.css" type="text/css" rel="stylesheet">
	
	<script type="text/javascript">
		function del(){
			if(confirm("确定删除该条记录？")){
				return true;
			} 
			return false;
		}
	</script>

  </head>
  
  <body>
  	<table cellSpacing=0 cellPadding=0 width="1180px" style="margin-left: -10px; margin-right: -5px; margin-top: -5px; border: 0">
  		<tr>
  			<td width="100%" style="background-image: url(admin/images/shadow_bg.jpg);" >&nbsp;</td>
  		</tr>
  	</table>
	<center>
	<h1>您所查询的学生信息如下</h1>
  	<table border="1" cellspacing="0">
  		<tr>
  			<td align="center" style="width: 100px">学号</td>
  			<td align="center" style="width: 80px">姓名</td>
  			<td align="center" style="width: 100px">出生日期</td>
  			<td align="center" style="width: 40px">民族</td>
  			<td align="center" style="width: 100px">电话</td>
  			<td align="center" style="width: 120px">邮箱</td>
  			<td align="center" style="width: 100px">地址</td>
  			<td align="center" style="width: 160px">班级</td>
  			<td align="center" style="width: 200px">描述</td>
  			<td align="center" style="width: 50px">更新</td>
  			<td align="center" style="width: 50px">删除</td>
  		</tr>
  		<c:forEach items="${listStudentBean }" var="studentBean">
  		<c:if test="${studentBean.sno!=\"00000000000\" }">
  		<tr>
  			<td>${studentBean.sno }</td>
  			<td>${studentBean.name }</td>
  			<td>${studentBean.birthday }</td>
  			<td>${studentBean.nation }</td>
  			<td>${studentBean.tel }</td>
  			<td>${studentBean.email }</td>
  			<td>${studentBean.address }</td>
  			<td>
  			<c:forEach items="${listPoliticsClassBean }" var="politicsClassBean">
  				<c:if test="${studentBean.classid==politicsClassBean.id }">
  					${politicsClassBean.name }
  				</c:if>
  			</c:forEach>
  			</td>
  			<td>${studentBean.des }</td>
  			<td><a href="findStudentByIdAction?studentBean.id=${studentBean.id }">更新</a></td>
  			<td><a href="deleteStudentAction?studentBean.id=${studentBean.id }" onclick="return del();">删除</a></td>
  		</tr>
  		</c:if>
  		</c:forEach>
  	</table>
  	</center>
  </body>
</html>
