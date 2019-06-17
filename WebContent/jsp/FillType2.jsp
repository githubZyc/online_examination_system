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
    
    <title>My JSP 'FillType.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<script type="text/javascript">
		function indexDecrease(){
			document.getElementById("index").value = document.getElementById("index").value - 1;
		}
		function indexAdd(){
			document.getElementById("index").value = document.getElementById("index").value - 1 + 2;
		}
		function test(){
			if (document.getElementById("index").value < 0){
				alert("这已经是第一个，点击确定返回")
				document.getElementById("index").value = 0;
			}
			if (document.getElementById("index").value - 1 == document.getElementById("listsize").value - 1){
				var nonindex = document.getElementById("index").value -1 + 2;
				alert("这已经是最后一个，点击确定返回")
				document.getElementById("index").value = document.getElementById("index").value - 1;
			}
			if(document.getElementById("getscore").value - 1 > document.getElementById("paperFillBeanScore").value -1){
				alert("该题所得分值超过满分");
				return false;
			}
			if(document.getElementById("getscore").value == ""){
				alert("请填写得分");
				return false;
			}
			return true;
		}
	</script>

  </head>
  
  <body style="background-color: #EAF3FC">
  <table cellSpacing=0 cellPadding=0 width="1350px" style="margin-left: -10px; margin-right: -5px; margin-top: -5px; border: 0">
  	<tr>
  		<td width="100%" style="background-image: url(admin/images/shadow_bg.jpg);" >&nbsp;</td>
  	</tr>
  </table>
  <center>
  	<h1>您现在正在批阅的试卷题型是填空题</h1>
    <form action="updateFillBeanAction" onsubmit="return test();">
    	<input type="hidden" name="paperFillBean.id" value="${listPaperFillBean[index].id }">
    	<input type="hidden" id="index" name="index" value=${index }>
    	<input type="hidden" id="listsize" name="listsize" value=${listsize }>
    	<input type="hidden" id="paperFillBeanScore" value=${listPaperFillBean[index].score }>
    	<table border="1" bordercolor="#C6E6FF" cellspacing="0">
    		<tr>
    			<td>题目:</td>
    		</tr>
    		<tr>
    			<td align="right">
    				<textarea rows="5" cols="122" readonly="readonly" style="border: 0px;">${listPaperFillBean[index].question }</textarea>
    			</td>
    		</tr>
    		<tr>
    			<td>标准答案:</td>
    		</tr>
    		<tr>
    			<td>
    				<textarea rows="3" cols="122" readonly="readonly" style="border: 0px;">${listPaperFillBean[index].modelanswer }</textarea>
    			</td>
    		</tr>
    		<tr>
    			<td>学生答案:</td>
    		</tr>
    		<tr>
    			<td>
    				<textarea rows="3" cols="122" readonly="readonly" style="border: 0px;">${listPaperFillBean[index].studentanswer }</textarea>
    			</td>
    		</tr>
    		<tr>
    			<td>
    				该题满分：${listPaperFillBean[index].score }&nbsp;&nbsp;&nbsp;
    				得分:<input type="text" id="getscore" name="paperFillBean.getscore" style="width: 80px">&nbsp;&nbsp;&nbsp;&nbsp;
    				<input type="submit" value="后退" style="width: 60px;" onclick="indexDecrease();">&nbsp;&nbsp;
    				<input type="submit" value="前进" style="width: 60px;" onclick="indexAdd();">
    			</td>
    		</tr>
    		
    	</table>
    </form>
    </center>
  </body>
</html>
