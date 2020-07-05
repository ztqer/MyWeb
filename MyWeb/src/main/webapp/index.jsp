<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
	<!-- 引入 jQuery 库 -->
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<!-- 引入 jQuery Mobile 库 -->
	<script src="http://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
	<%--跳转登陆界面--%>
	<script type="text/javascript">
	$(document).ready(function(){
		//手机点击
		$("#body").on("tap",function(){
			window.location.href='login';
		});
		//电脑点击
		$("#body").on("click",function(){
			window.location.href='login';
		});
	});
	</script>
	<body id="body" style="background-image:url(/MyWeb/pictures/school.jpg)" >
</html>