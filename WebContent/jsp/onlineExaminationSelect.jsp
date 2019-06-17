<%@ page language="java" pageEncoding="UTF-8"%>
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
    <script type="text/javascript" src="<%=path %>/jsp/js/jquery-1.11.2.min.js"></script>
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

		function getOptions() {
            $.ajax({
                type: "POST",
                url: "/getSelectOptionsAction",
                data: {"questionBankSelectId":document.querySelector("#questionId").value},
				success:function (result) {
                    var parse = JSON.parse(result);
					document.querySelector("#tdA").innerHTML = "A:"  + parse.A;
                    document.querySelector("#tdB").innerHTML = "B:"  + parse.B;
                    document.querySelector("#tdC").innerHTML = "C:"  + parse.C;
                    document.querySelector("#tdD").innerHTML = "D:"  + parse.D;
                }

            });
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
    <form action="examingSelectAction" method="post" onsubmit="return test();">
    	<input type="hidden" name="paperSelectBean.id" value="${listPaperSelectBean[index].id }">
    	<input type="hidden" id="index" name="index" value=${index }>
    	<input type="hidden" id="listsize" name="listsize" value=${listsize }>
		<input type="hidden" id="questionId" name="questionBankSelectId" value=${listPaperSelectBean[index].questionid}>
    	<table border="1" bordercolor="#C6E6FF" cellspacing="0" width="75%">
    		<tr>
    			<td width="100%" align="center">当前题型：选择题&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题号:${index+1 }</td>
    		</tr>
    		<tr>
    			<td>
    				<textarea rows="8" cols="120" name="paperSelectBean.question" readonly="readonly">${listPaperSelectBean[index].question }</textarea>
    			</td>
    		</tr>
			<tr id="tdA">

			</tr>
			<tr id="tdB">

			</tr>
			<tr id="tdc">

			</tr>
			<tr id="tdD">

			</tr>
    		<tr>
    			<td>
    				<c:if test="${listPaperSelectBean[index].studentanswer==1 }">
    				<input type="radio" name="paperSelectBean.studentanswer" value="1" checked="checked">A&nbsp;
    				</c:if>
    				<c:if test="${listPaperSelectBean[index].studentanswer!=1 }">
    				<input type="radio" name="paperSelectBean.studentanswer" value="1" >A&nbsp;
    				</c:if>
    				<c:if test="${listPaperSelectBean[index].studentanswer==2 }">
    				<input type="radio" name="paperSelectBean.studentanswer" value="2" checked="checked">B&nbsp;
    				</c:if>
    				<c:if test="${listPaperSelectBean[index].studentanswer!=2 }">
    				<input type="radio" name="paperSelectBean.studentanswer" value="2">B&nbsp;
    				</c:if>
    				<c:if test="${listPaperSelectBean[index].studentanswer==3 }">
    				<input type="radio" name="paperSelectBean.studentanswer" value="3" checked="checked">C&nbsp;
    				</c:if>
    				<c:if test="${listPaperSelectBean[index].studentanswer!=3 }">
    				<input type="radio" name="paperSelectBean.studentanswer" value="3" >C&nbsp;
    				</c:if>
    				<c:if test="${listPaperSelectBean[index].studentanswer==4 }">
    				<input type="radio" name="paperSelectBean.studentanswer" value="4" checked="checked">D&nbsp;
    				</c:if>
    				<c:if test="${listPaperSelectBean[index].studentanswer!=4 }">
    				<input type="radio" name="paperSelectBean.studentanswer" value="4" >D&nbsp;
    				</c:if>
    			</td>
    		</tr>
    		<tr>
    			<td align="center">
    				<input type="submit" value="上一题" onclick="indexDecrease();">&nbsp;&nbsp;${index+1 }/${listsize }&nbsp;&nbsp;<input type="submit" value="下一题" onclick="indexAdd();">
    				&nbsp;&nbsp;&nbsp;&nbsp;
    				转<input type="text" id="changindex" style="width: 50">题<input type="submit" value="GO" onclick="changIndex();" style="width: 30">
    			</td>
				<td><input type="button" value="获取选择项" onclick="getOptions();"></td>
    		</tr>
    	</table>
    </form>
   	</center>
  </body>
</html>
