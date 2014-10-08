<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'head.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
		.dropdown-menu {
			width: 310px;
		}
		.dropdown li {
			width: 150px; /*如果显示三列 则width改为70px*/
			float: left;
			display: block;
		}
	</style> 
<script type="text/javascript">
	$(function(){

		$("ul li a").each(function(){
			if($(this).html()=="${menuName}"){
				 $("ul li a[href=#]").parent().removeClass("active");
				 $(this).parent().addClass("active"); 
			}
			if(($(this).html()).indexOf("${menuName}")>0){
				 $("ul li a[href=#]").parent().removeClass("active");
				 $(this).parent().addClass("active"); 
			}
		})
	})
</script>
  </head>
  
  <body>
    <div class="navbar navbar-default navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">程序员</a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="active">
							<a href="#">首页</a>
						</li>
						<li>
							<a href="programLife.action">程序人生</a>
						</li>
						
						<li class="dropdown">
							<a href="#knowledgeNoLimit" class="dropdown-toggle" data-toggle="dropdown">学无止境<span class='caret'></span></a>
							
										<ul class="dropdown-menu" role="menu">
											<li>
												<a href="#">JAVA</a>
											</li>
											<li>
												<a href="knowledge.action">Struts1</a>
											</li>
											<li>
												<a href="knowledge.action">Struts2</a>
											</li>
											<li>
												<a href="knowledge.action">Hibernate</a>
											</li>
											<li>
												<a href="knowledge.action">Spring</a>
											</li>
											<li>
												<a href="#">SpringMVC</a>
											</li>
											<li>
												<a href="knowledge.action">iBatis</a>
											</li>
											<li>
												<a href="knowledge.action">jQuery</a>
											</li>
											<li>
												<a href="knowledge.action">EasyUI</a>
											</li>
											<li>
												<a href="knowledge.action">JS</a>
											</li>
										</ul>
										
						</li>
						<li>
							<a href="happyCode.action">快乐码农</a>
						</li>
						<li>
							<a href="about.action">关于</a>
						</li>
					</ul>

					<div  class="navbar-right">
						<form class="navbar-form navbar-left" role="search">
							<div class="input-group">
								<input type="text" class="form-control" placeholder="搜索...">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button">
										Go
									</button> </span>
							</div>
						</form>
					</div>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
  </body>
</html>
