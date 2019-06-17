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
    
    <title>My JSP 'createPaper.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="jsp/css/css.css" type="text/css" rel="stylesheet">
	
	<script type="text/javascript">
		function checked(){
			var selectNumber = document.getElementById("selectNumberId").value; 
			var selectScore = document.getElementById("selectScoreId").value;
			var select = 0;
			var judgeNumber = document.getElementById("judgeNumberId").value;
			var judgeScore = document.getElementById("judgeScoreId").value;
			var judge = 0;
			var fillNumber = document.getElementById("fillNumberId").value;
			var fillScore = document.getElementById("fillScoreId").value;
			var fill = 0;
			var shortAnswerNumber = document.getElementById("shortAnswerNumberId").value;
			var shortAnswerScore = document.getElementById("shortAnswerScoreId").value;
			var shortAnswer = 0;
			var re = /^\d{1,2}$/;
			if (selectNumber.match(re) != null){
				if (selectScore.match(re) != null){
				 select = selectNumber*selectScore;
				} else {
					alert("您输入的选择题每题分值不合法!");
					return false;
				}
			} else {
				alert("您输入的选择题数量不合法!");
				return false;
			}
			
			if (judgeNumber.match(re) != null){
				if (judgeScore.match(re) != null){
				 judge = judgeNumber*judgeScore;
				} else {
					alert("您输入的判断题每题分值不合法!");
					return false;
				}
			} else {
				alert("您输入的判断题数量不合法!");
				return false;
			}
			
			if (fillNumber.match(re) != null){
				if (fillScore.match(re) != null){
				 fill = fillNumber*fillScore;
				} else {
					alert("您输入的填空题每题分值不合法!");
					return false;
				}
			} else {
				alert("您输入的填空题数量不合法!");
				return false;
			}
			
			if (shortAnswerNumber.match(re) != null){
				if (shortAnswerScore.match(re) != null){
				 shortAnswer = shortAnswerNumber*shortAnswerScore;
				} else {
					alert("您输入的简答题每题分值不合法!");
					return false;
				}
			} else {
				alert("您输入的简答题数量不合法!");
				return false;
			}
			
			if (select-1 + judge-1 + fill-1 + shortAnswer-1 + 4 != 100){
				alert("您所要生成的试卷总分不为100分，请重新填写题目数量与分值。")
				return false;
			}
            return true;
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
	<h1>请填写要生成的试卷信息</h1>
	<form action="createPaperAction" method="post" onsubmit="return checked();">
	<table>
		<tr>
			<td>试卷名称</td>
			<td><input name="paperName"></td>
		</tr>
		<tr><td colspan="2"></td></tr>
		<tr>
			<td>所属课程</td>
			<td>
				<select name="courseid">
					<option value="">请选择课程</option>
					<c:forEach items="${listCourseBean }" var="courseBean">
					<option value="${courseBean.id }">${courseBean.name }</option>
					</c:forEach>
				</select>
			</td>
		</tr>
		<tr><td colspan="2"></td></tr>
	</table>
	<table>
		<tr>
			<td>选择题数量</td>
			<td><input id="selectNumberId" name="selectNumber" style="width: 90px"></td>
			<td align="right">&nbsp;每题分值</td>
			<td><input id="selectScoreId" name="selectScore" style="width: 90px"></td>
		</tr>
		<tr><td colspan="4"></td></tr>
		<tr>
			<td>判断题数量</td>
			<td><input id="judgeNumberId" name="judgeNumber" style="width: 90px"></td>
			<td align="right">每题分值</td>
			<td><input id="judgeScoreId" name="judgeScore" style="width: 90px"></td>
		</tr>
		<tr><td colspan="4"></td></tr>
		<tr>
			<td>填空题数量</td>
			<td><input id="fillNumberId" name="fillNumber" style="width: 90px"></td>
			<td align="right">每题分值</td>
			<td><input id="fillScoreId" name="fillScore" style="width: 90px"></td>
		</tr>
		<tr><td colspan="4"></td></tr>
		<tr>
			<td>简答题数量</td>
			<td><input id="shortAnswerNumberId" name="shortAnswerNumber" style="width: 90px"></td>
			<td align="right">每题分值</td>
			<td><input id="shortAnswerScoreId" name="shortAnswerScore" style="width: 90px"></td>
		</tr>
		<tr>
			<td colspan="4" align="right"><input type="submit" value="生成试卷"></td>
		</tr>
	</table>
	</form>
	</center>
  </body>
</html>
