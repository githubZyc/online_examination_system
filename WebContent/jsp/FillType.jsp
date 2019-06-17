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
    <script type="text/javascript" src="<%=path %>/jsp/js/jquery-1.11.2.min.js"></script>
	<script type="text/javascript">
		function indexDecrease(){
			var index = document.getElementById("index").value;
			var listSize = document.getElementById("listsize").value - 1;
            var paperFillBeanId = document.getElementById("paperFillBeanId").value;
			//显示提交过的分数
			var getScore =  localStorage.getItem(paperFillBeanId);
            document.getElementById("getscore").value = getScore;

			if(index == 0){
			    alert("这已经是第一个，点击确定返回");
			    return false;
			}

			index = --index;
            document.getElementById("index").value = index ;
		}
		function indexAdd(){
            var index = document.getElementById("index").value;
            var listSize = document.getElementById("listsize").value - 1;
            if(index == listSize){
                alert("这已经是最后一个，点击确定返回");
                return false;
			}
			index = ++index;
            document.getElementById("index").value = index ;

		}

		function test(){
            var index = document.getElementById("index").value;
            var listSize = document.getElementById("listsize").value - 1;
            var paperFillBeanId = document.getElementById("paperFillBeanId").value;
            var getScore = document.getElementById("getscore").value;

            if(getScore - 1 > document.getElementById("paperFillBeanScore").value -1){
				alert("该题所得分值超过满分");
				return false;
			}
			if(getScore == ""){
				alert("请填写得分");
				return false;
			}
            $.ajax({
                url:"updateFillBeanAction",//提交地址
                data:$("#updateFillBeanAction").serialize(),//将表单数据序列化
                type:"POST",
                dataType:"json",
                success:function(result){
                    if(result['success'] && (index == listSize)){
						window.location.href ='/listPaperQuetionTypeAction';
					}else{
                        //显示下一题
                        indexAdd();
					}

					//成功与否记录提交得分信息
					localStorage.setItem(paperFillBeanId,getScore);
                    console.info(result['success']);
                }
            });
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
    <form id="updateFillBeanAction">
    	<input type="text" id="paperFillBeanId" name="paperFillBean.id" value="${listPaperFillBean[index].id }">
    	<input type="text" id="index" name="index" value=${index }>
    	<input type="text" id="listsize" name="listsize" value=${listsize }>
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
    				得分:<input type="number" id="getscore" name="paperFillBean.getscore" style="width: 80px">&nbsp;&nbsp;&nbsp;&nbsp;
    				<input type="button" value="后退" style="width: 60px;" onclick="indexDecrease();">&nbsp;&nbsp;
    				<input type="button" value="前进" style="width: 60px;" onclick="indexAdd();">
					<input type="button" value="提交得分" style="width: 60px;" onclick="test();">
    			</td>
    		</tr>
    		
    	</table>
    </form>
    </center>
  </body>
</html>
