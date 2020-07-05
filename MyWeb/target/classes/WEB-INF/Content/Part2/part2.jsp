<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="java.util.ArrayList,cn.ztq.MyWeb.entity.PersonalInformation,java.util.Random"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>诸子列传</title>
	
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
	
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<nav class="navbar navbar-default" role="navigation">
					<div class="navbar-header">
						 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> 
						
						 <span class="sr-only">Toggle navigation</span>
						 
						 <span class="icon-bar"></span>
						 
						 <span class="icon-bar"></span>
						 
						 <span class="icon-bar"></span></button> 
						 
						 <a class="navbar-brand" href="../content">首页</a>
					</div>
				
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li>
								 <a href="../content/part1">机械通史</a>
							</li>
							
							<li>
								 <a href="../content/part2">诸子列传</a>
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
						
						<form class="navbar-form navbar-left" role="search">
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
				
				<div class="carousel slide" id="carousel-530943">
					<ol class="carousel-indicators">
						<%--根据数据库注册轮播跳转--%>
						<%! 
							ArrayList<ArrayList<PersonalInformation>> totalInformation=null;
							int num=0;
							Random random=new Random();
							int activeLi=0;
						%>
						<%
							if(request.getAttribute("data")!=null){
								totalInformation=(ArrayList<ArrayList<PersonalInformation>>)request.getAttribute("data");
								num=totalInformation.size();
								//随机初始页面
								activeLi=random.nextInt(num);
								for(int i=0;i<=num-1;i++){
									if(i==activeLi){
						%>
						<li class="active" data-slide-to="<%= i %>" data-target="#carousel-530943"></li>
						<%
									}
									else{
						%>
						<li data-slide-to="<%= i %>" data-target="#carousel-530943"></li>
						<%
									}
								}
							}
						%>
					</ol>
					
					<div class="carousel-inner">
						<%--根据数据库加载轮播内容--%>
						<%
							if(num>0){
								for(int i=0;i<=num-1;i++){
									if(i==activeLi){
						%>
						<div class="item active">
						<%
									}
									else{
						%>
						<div class="item">
						<%
									}
						%>
							<table class="table" style="table-layout:fixed;">
								<tr>
							  		<td>
										<img src="../pictures/upload/<%= totalInformation.get(i).get(0).getValue() %>" width="100%">
							  		</td>
							        <td style="word-wrap:break-word;">
							        	<table class="table table-striped" style="table-layout:fixed;">
              			<%
              						int _num=totalInformation.get(i).size();
              						for(int j=1;j<=_num-1;j++){
              			%>
              			    				<tr>
              			    					<td><%= totalInformation.get(i).get(j).getKey() %></td>
              			    					
              			    					<td><%= totalInformation.get(i).get(j).getValue() %></td>
              			    				</tr>
              			<%				
              						}
              			%>
              			    			</table>
              			    		</td>
              			    	</tr>
              			    	
              			    	<tr>
              			    		<td colspan="2">
	              			    		<div class="jumbotron">
											<h1>
												Hello, world!
											</h1>
											<p>
												This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.
											</p>
											<div style="padding:0 70%">
												 <a class="btn btn-primary btn-large" href="part2/upload">Upload mine</a>
											</div>
										</div>
              			    		</td>
              			    	</tr>
              			    </table>
						</div>
						<%
								}
							}
						%>
					</div> 
					
					<a class="left carousel-control" href="#carousel-530943" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left"></span>
					</a> 
					
					<a class="right carousel-control" href="#carousel-530943" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right"></span>
					</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>