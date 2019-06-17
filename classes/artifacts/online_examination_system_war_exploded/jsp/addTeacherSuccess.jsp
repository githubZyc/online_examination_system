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
    
    <title>My JSP 'listTeacher.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="jsp/css/css.css" type="text/css" rel="stylesheet">
	
	<script type="text/javascript" src="./jsp/date.js"></script>
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
  	<h1>添加成功,添加后所有的教师信息如下</h1>
    <table border="1" cellspacing="0">
    	<tr>
    		<td align="center" style="width: 100px">教师编号</td>
    		<td align="center" style="width: 80px">姓名</td>
    		<td align="center" style="width: 100px">出生日期</td>
    		<td align="center" style="width: 40px">民族</td>
    		<td align="center" style="width: 100px">电话</td>
    		<td align="center" style="width: 120px">邮箱</td>
    		<td align="center" style="width: 100px">地址</td>
    		<td align="center" style="width: 60px">职位</td>
    		<td align="center" style="width: 200px">描述</td>
    		<td align="center" style="width: 50px">更新</td>
    		<td align="center" style="width: 50px">删除</td>
    	</tr>
    	<c:forEach items="${listTeachser }" var="teacherBean">
    	<tr>
    		<td align="center">${teacherBean.tno }</td>
    		<td align="center">${teacherBean.name }</td>
    		<td align="center">${teacherBean.birthday }</td>
    		<td align="center">${teacherBean.nation }</td>
    		<td align="center">${teacherBean.tel }</td>
    		<td align="center">${teacherBean.email }</td>
    		<td>${teacherBean.address }</td>
    		<td align="center">${teacherBean.position }</td>
    		<td>${teacherBean.des }</td>
    		<td align="center"><a href="findTeacherByIdAction?teacherBean.id=${teacherBean.id }">更新</a></td>
    		<td align="center"><a href="deleteTeacherAction?teacherBean.id=${teacherBean.id }" onclick="return del();">删除</a></td>
    	</tr>
    	</c:forEach>
    </table>
  </center>
  </body>
</html>
