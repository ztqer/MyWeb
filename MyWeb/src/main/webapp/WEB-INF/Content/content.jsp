<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>机械班</title>
	
	<!-- Bootstrap 核心 CSS 文件 -->
	<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
 
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
 
	<!-- Bootstrap 核心 JavaScript 文件 -->
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<!--登陆状态验证-->
	<%
		//因为Cookie不能立即生效，登陆跳转此页面时刷新一次防止回跳
		Boolean b=(Boolean)request.getAttribute("first_login");
		if(b!=null && b==true){
			response.sendRedirect("/MyWeb/content");
		}
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
	
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<nav class="navbar navbar-default" role="navigation">
					<div class="navbar-header">
						 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> 
						 	<span class="sr-only">Toggle navigation</span>
						 
						 	<span class="icon-bar"></span>
						 
						 	<span class="icon-bar"></span>
						 
						 	<span class="icon-bar"></span>
						 </button> 
						 
						 <a class="navbar-brand" href="content">首页</a>
					</div>
				
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li>
								 <a href="content/part1">机械通史</a>
							</li>
							
							<li>
								 <a href="content/part2">诸子列传</a>
							</li>
							
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">鱼雁多劳
									<strong class="caret"></strong>
								</a>
								
								<ul class="dropdown-menu">
									<li>
										 <a href="#">Action</a>
									</li>
									
									<li>
										 <a href="#">Another action</a>
									</li>
									
									<li>
										 <a href="#">Something else here</a>
									</li>
									
									<li class="divider"></li>
									
									<li>
										 <a href="#">Separated link</a>		
									</li>
									
									<li class="divider"></li>
									
									<li>
										 <a href="#">One more separated link</a>	
									</li>
								</ul>
							</li>
						</ul>
						
						<form class="navbar-form navbar-left" role="search" id="search">
							<div class="form-group">
								<input type="text" class="form-control" />
							</div> 
							
							<button type="submit" class="btn btn-default">搜索</button>
						</form>
						
						<ul class="nav navbar-nav navbar-right">
							<li>
								 <a href="#">Link</a>
							</li>
							
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
								
								<ul class="dropdown-menu">
									<li>
										 <a href="#">Action</a>
									</li>
									
									<li>
										 <a href="#">Another action</a>
									</li>
									
									<li>
										 <a href="#">Something else here</a>
									</li>
									
									<li class="divider"></li>
									
									<li>
										 <a href="#">Separated link</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</nav>
				
				<h3 style="text-align:center"> 9160007100 </h3>
				
				<table style="text-align:center"><tr>
					<td><img alt="140x140" width="50%" src="/MyWeb/pictures/school.jpg" border=0></td>
					<td><img alt="140x140" width="50%" src="/MyWeb/pictures/class.jpg" border=0></td>
				</tr></table>
			</div>
		</div>
		
		<div class="row clearfix">
			<div class="col-md-4 column">
				<h2> 机械通史 </h2>
				
				<p>
					自机械班立，逾四载矣，幸宋、吴、申三公事必躬亲，鞠躬呕血，百姓各安其居而乐其业。
				</p>
				
				<p>
					 <a class="btn" href="content/part1"> View details »</a>
				</p>
			</div>
			
			<div class="col-md-4 column">
				<h2> 诸子列传 </h2>
				
				<p>
					日月无光，天穹崩催。星火坠于沧海，神州陷于深渊。万籁具寂，暗恨幽生，天亦有知，霪雨不绝。哀世之奇人之陨,悲国之栋梁之折。申公,江苏人也,少年意气勃发，竟惨然而逝。呜呼哀哉!
				</p>
				
				<p>
					 <a class="btn" href="content/part2"> View more »</a>
				</p>
			</div>
			
			<div class="col-md-4 column">
				<h2> 鱼雁多劳 </h2>
				
				<p>
					长江百流各入海，杨柳千絮四处飞。君去此情依然在，便教鲤鱼多往来。
				</p>
				
				<p> 
					<a class="btn" href="content/part3"> I want to start one »</a> 
				</p>
			</div>
		</div>
	</div>
</body>
</html>