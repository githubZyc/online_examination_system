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
    
    <title>My JSP 'onlineExaminationSelect.jsp' starting page</title>
    
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
		function changIndex(){
			document.getElementById("index").value = document.getElementById("changindex").value - 1;
		}
		function test(){
			if (document.getElementById("index").value < 0){
				alert("这已经是第一题，点击确定返回")
				document.getElementById("index").value = 0;
			}
			if (document.getElementById("index").value == document.getElementById("listsize").value){
				var nonindex = document.getElementById("index").value -1 + 2;
				alert("没有第" + nonindex + "题，点击确定返回最后一题")
				document.getElementById("index").value = document.getElementById("index").value - 1;
			}
			if (document.getElementById("index").value-1 > document.getElementById("listsize").value-1){
				var nonindex = document.getElementById("index").value -1 + 2;
				alert("没有第" + nonindex + "题，点击确定返回最后一题")
				document.getElementById("index").value = document.getElementById("listsize").value - 1;
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
  <br><br><br><br>
  	<center>
    <form action="examingJudgeAction" method="post" onsubmit="return test();">
    	<input type="hidden" name="paperJudgeBean.id" value="${listPaperJudgeBean[index].id }">
    	<input type="hidden" id="index" name="index" value=${index }>
    	<input type="hidden" id="listsize" name="listsize" value=${listsize }>
    	<table border="1" bordercolor="#C6E6FF" cellspacing="0" width="75%">
    		<tr>
    			<td width="100%" align="center">当前题型：判断题&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题号:${index+1 }</td>
    		</tr>
    		<tr>
    			<td>
    				<textarea rows="8" cols="120" name="paperJudgeBean.question" readonly="readonly">${listPaperJudgeBean[index].question }</textarea>
    			</td>
    		</tr>
    		<tr>
    			<td>
    				<c:if test="${listPaperJudgeBean[index].studentanswer==1 }">
    				<input type="radio" name="paperJudgeBean.studentanswer" value="1" checked="checked">对&nbsp;
    				</c:if>
    				<c:if test="${listPaperJudgeBean[index].studentanswer!=1 }">
    				<input type="radio" name="paperJudgeBean.studentanswer" value="1" >对&nbsp;
    				</c:if>
    				<c:if test="${listPaperJudgeBean[index].studentanswer==2 }">
    				<input type="radio" name="paperJudgeBean.studentanswer" value="2" checked="checked">错&nbsp;
    				</c:if>
    				<c:if test="${listPaperJudgeBean[index].studentanswer!=2 }">
    				<input type="radio" name="paperJudgeBean.studentanswer" value="2">错&nbsp;
    				</c:if>
    			</td>
    		</tr>
    		<tr>
    			<td align="center">
    				<input type="submit" value="上一题" onclick="indexDecrease();">&nbsp;&nbsp;${index+1 }/${listsize }&nbsp;&nbsp;<input type="submit" value="下一题" onclick="indexAdd();">
    				&nbsp;&nbsp;&nbsp;&nbsp;
    				转<input type="text" id="changindex" style="width: 50">题<input type="submit"" value="GO" onclick="changIndex();" style="width: 30">
    			</td>
    		</tr>
    	</table>
    </form>
   	</center>
  </body>
</html>
