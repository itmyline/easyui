<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'foot.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

  </head>
  
  <body>
   <div class="row">
	 		<div class="col-md-12">
				<img style="float: left;" data-toggle="tooltip" data-placement="" id="avatar"
						title="hello" class="img-responsive img-rounded"
						src="css/img/weibo.jpg" alt="">
			</div>
			<div class="col-md-12">
				<h3 style="color: #222;font-weight: bold;">文章分类</h3>
				<div  class="col-md-10">
					<table class="table">
					  	<tr>
					  		<td>Java评论</td>
					  		<td>创业理想</td>
					  		<td>团队建设</td>
					  	</tr>
					  	<tr>
					  		<td>幽默讽刺</td>
					  		<td>心得体会</td>
					  		<td>思想人生</td>
					  	</tr>
					  	<tr>
					  		<td>批评评论</td>
					  		<td>技术技巧</td>
					  		<td>敏捷开发</td>
					  	</tr>
					  	<tr>
					  		<td>求职招聘</td>
					  		<td>移动开发</td>
					  		<td>程序员幽默</td>
					  	</tr>
					  	<tr>
					  		<td>软件工具</td>
					  	</tr>
					</table>
				</div>
			</div>
			
			<div class="col-md-12">
				<h3 style="color: #222;font-weight: bold;">最新文章</h3>
				<div  class="col-md-10">
					<table class="table">
						<tr>
							<td>
								<div class="row">
									<div class="col-md-4">
										<img style="width: 100px;height: 64px;" data-toggle="tooltip" data-placement="" id="avatar"
											title="hello" class="img-responsive img-rounded"
											src="css/img/1.jpg" alt="">
										<div>
											
										</div>
									</div>
									<div class="col-md-offset-2">
										<div>
											5种服务器网络编程模型讲解
										</div>
										<div style="text-align: left;padding-top: 20px;">
											<span class="ctime">2014-09-11</span>
										</div>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="row">
									<div class="col-md-4">
										<img style="width: 100px;height: 64px;" data-toggle="tooltip" data-placement="" id="avatar"
											title="hello" class="img-responsive img-rounded"
											src="css/img/2.jpg" alt="">
										<div>
											
										</div>
									</div>
									<div class="col-md-offset-2">
										<div>
											递归算法实例讲解
										</div>
										<div style="text-align: left;padding-top: 20px;">
											<span class="ctime">2014-09-11</span>
										</div>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="row">
									<div class="col-md-4">
										<img style="width: 100px;height: 64px;" data-toggle="tooltip" data-placement="" id="avatar"
											title="hello" class="img-responsive img-rounded"
											src="css/img/3.jpg" alt="">
										<div>
											
										</div>
									</div>
									<div class="col-md-offset-2">
										<div>
											周鸿祎的17个互联网方法论
										</div>
										<div style="text-align: left;padding-top: 20px;">
											<span class="ctime">2014-09-11</span>
										</div>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="row">
									<div class="col-md-4">
										<img style="width: 100px;height: 64px;" data-toggle="tooltip" data-placement="" id="avatar"
											title="hello" class="img-responsive img-rounded"
											src="css/img/4.jpg" alt="">
										<div>
											
										</div>
									</div>
									<div class="col-md-offset-2">
										<div>
											高并发网络编程之epoll详解
										</div>
										<div style="text-align: left;padding-top: 20px;">
											<span class="ctime">2014-09-11</span>
										</div>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="row">
									<div class="col-md-4">
										<img style="width: 100px;height: 64px;" data-toggle="tooltip" data-placement="" id="avatar"
											title="hello" class="img-responsive img-rounded"
											src="css/img/5.jpg" alt="">
										<div>
											
										</div>
									</div>
									<div class="col-md-offset-2">
										<div>
											ZIP压缩算法详细分析及解压
										</div>
										<div style="text-align: left;padding-top: 20px;">
											<span class="ctime">2014-09-11</span>
										</div>
									</div>
								</div>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
  </body>
</html>
