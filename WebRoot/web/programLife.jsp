<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'programLife.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<jsp:include page="../conf/includeAll.jsp"></jsp:include>
	<style type="text/css">
		h3{
			color: #00a67c;
		}
		.comment{
			color: #00a67c;
		}
		.ctime{
			color: #999;
		}
		table tr td{
			color: #00a67c;
		}
		ul li{
			color: #00a67c;
		}
	</style>
  </head>
  
  <body>
  	   <jsp:include page="../conf/head.jsp"></jsp:include>
       <div id="container" >
       		 <div class="col-md-1">
       		 </div>
			 <div class="col-md-7" style="padding-bottom: 60px;">
					<div class="col-md-12">
						<h3>
							<a href="detail.action">孩子们看到老式电脑后的反应</a>
						</h3>
						<div class="row">
							<div class="col-md-4">
								<img style="float: left;" data-toggle="tooltip" data-placement="" id="avatar"
								title="hello" class="img-responsive img-rounded"
								src="css/img/1.jpg" alt="">
							</div>
							<div class="col-md-8">
								<div>
									老式电脑，并不是指的历史上第一台图灵机计算机，也不是指第一台体积有几间屋子大小的那台ENIAC电脑.
									可事实上问题不在于此。编程，就跟写作、绘画、作曲一样，首先是一种创造性的活动，而不是一个种技术工作。
								</div>
								<div class="page-header" style="text-align: right;">
									<span class="ctime">2014-09-11</span>&nbsp;&nbsp;&nbsp;<a class="comment" href="#">3评论</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<h3>
							<a href="detail2.action">我是如何打败拖延症的</a>
						</h3>
						<div class="row">
							<div class="col-md-12">
								<div>
									关于拖延症的话题我在Hacker
									News上不断的看到有人提出来(你也读了，不是吗？)，感觉有必要将我是如何跟拖延症做斗争的方法分享给大家。
								</div>
								<div class="pull-right">
									<span class="ctime">2014-09-11</span>&nbsp;&nbsp;&nbsp;<a class="comment" href="#">3评论</a>
								</div>
							</div>
						</div>
					</div>
					
					<div class="col-md-12">
						<h3>
							IT培训师
						</h3>
						<div class="row">
							<div class="col-md-12">
								<div>
									小鱼儿（注：Pilot
									Fish，本文主角的名字）的公司聘请了一个第三方公司为他们的用户进行Window7培训。
								</div>
								<div class="pull-right">
									<span class="ctime">2014-09-11</span>&nbsp;&nbsp;&nbsp;<a class="comment" href="#">3评论</a>
								</div>
							</div>
						</div>
					</div>
					
					<div class="col-md-12">
						<h3>
							客户是这样描述他们的需求的
						</h3>
						<div class="row">
							<div class="col-md-12">
								<div>
									技术服务工程师小鱼儿（注：Pilot
									Fish，本文主角的名字）接到一个任务，需要去外地的一个客户那里检查他们的电脑设备。
								</div>
								<div class="pull-right">
									<span class="ctime">2014-09-11</span>&nbsp;&nbsp;&nbsp;<a class="comment" href="#">3评论</a>
								</div>
							</div>
						</div>
					</div>
					
					<div class="col-md-12">
						<h3>
							程序员如何活得明白
						</h3>
						<div class="row">
							<div class="col-md-4">
								<img style="float: left;" data-toggle="tooltip" data-placement="" id="avatar"
								title="hello" class="img-responsive img-rounded"
								src="css/img/5.jpg" alt="">
							</div>
							<div class="col-md-8">
								<div>
									可事实上问题不在于此。编程，就跟写作、绘画、作曲一样，首先是一种创造性的活动，而不是一个种技术工作。
								</div>
								<div class="page-header" style="text-align: right;">
									<span class="ctime">2014-09-11</span>&nbsp;&nbsp;&nbsp;<a class="comment" href="#">3评论</a>
								</div>
							</div>
						</div>
						
						
					</div>
					<div class="col-md-12">
						<h3>
							Bash脚本15分钟进阶教程 
						</h3>
						<div class="row">
							<div class="col-md-4">
								<img style="float: left;" data-toggle="tooltip" data-placement="" id="avatar"
								title="hello" class="img-responsive img-rounded"
								src="css/img/6.jpg" alt="">
							</div>
							<div class="col-md-8">
								<div>
									这里的Bash脚本技术技巧最初是来自谷歌的“Testing on the Toilet” (TOTT)。
									Fish，本文主角的名字）接到一个任务，需要去外地的一个客户那里检查他们的电脑设备。
								</div>
								<div class="page-header" style="text-align: right;">
									<span class="ctime">2014-09-11</span>&nbsp;&nbsp;&nbsp;<a class="comment" href="#">3评论</a>
								</div>
							</div>
						</div>
						
					</div>
					<div class="row" style="text-align: center;">
						<ul class="pager">
							  <li><a href="#">上一页</a></li>
							  <li><a href="#">下一页</a></li>
						</ul>
					</div>
			 </div>
			 <div class="col-md-4">
			 	<!-- 右边文件 -->
			 	<jsp:include page="/conf/right.jsp"></jsp:include>
       		 </div>
              
    	</div>
    	<jsp:include page="../conf/foot.jsp"></jsp:include>
  </body>
</html>
