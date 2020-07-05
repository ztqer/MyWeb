<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<!--登陆状态验证-->
	<%
		boolean b=false;
		if(request.getCookies()!=null){
			for(Cookie cookie:request.getCookies()){
				if(cookie.getName().equals("login")){
					b=true;
					break;
				}
			}
		}
		if(b==false){
			response.sendRedirect("/MyWeb/login");
		}
	%>
	<meta charset="UTF-8">
	<title>诸子列传-编辑与上传</title>
	
	<!-- Bootstrap 核心 CSS 文件 -->
	<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
 
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
 
	<!-- Bootstrap 核心 JavaScript 文件 -->
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<form method="post" enctype="multipart/form-data" action="upload/doPost">
		<h1>请选择你的照片</h1>
		
		<p>选择一个文件:</p>
		
    	<input type="file" name="picture" />
    	
    	<br></br>
    	
		<h1>请添加个人信息</h1>
		
    	<button type="button" id="addButton" onclick="Add()">
    		增加一行
    	</button>
    	
    	<div style="width:60%;">
	    	<table class="table table-striped" style="table-layout:fixed;word-wrap:break-word;" id="addTable">
	        	<tr>
	        		<td> 
	        			<input type="text" name="key" placeholder="标签（例：姓名）">
	        		</td>
	              	<td> 
	              		<input type="text" name="value" placeholder="内容（例：申鑫泽）">
	              	</td>
	        	</tr>
	        </table>
    	</div>
        
    	<br></br>
    	
    	<p>注意：重复上传会覆盖之前的信息</p>
    	
    	<input type="submit" value="上传" />
	</form>
	
	<!--表格增加一行-->
	<script>
		$(document).ready(function(){
			$("#addButton").click(function(){
				$("#addTable").append("<tr><td><input type=\"text\" name=\"key\" placeholder=\"标签（例：姓名）\"></td>"
						+"<td><input type=\"text\" name=\"value\" placeholder=\"内容（例：申鑫泽）\"></td></tr>");
			});
		});
	</script>
</body>
</html>