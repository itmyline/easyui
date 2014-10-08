<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<jsp:include page="conf/includeAll.jsp"></jsp:include>
  </head>
  
  <body>
  		<!-- 头部文件  -->
        <jsp:include page="conf/head.jsp"></jsp:include>

		<div class="container">
			<div class="row cvheader">
				<div class="col-md-6">
					<h1 class="text-primary">
						IT民工
					</h1>
					<p>
						<span class="glyphicon glyphicon-paperclip"></span> 攻城狮
					</p>
					
				</div>

				<div class="col-md-3">
					<div class="row">

						<div class="col-md-4">
							<p id="contact" class="address text-center">
								联系
							</p>
						</div>

						<div class="col-md-8">
							<p>
								<span class="glyphicon glyphicon-envelope"></span>
								xxx@163.com
							</p>
							<p>
								<span class="glyphicon glyphicon-user"></span> 74955800
							</p>
							<p>
								<span class="glyphicon glyphicon-road"></span> 京城81号
							</p>
						</div>

					</div>
				</div>
  
				<div class="col-md-3">
					<p>
						<!-- 这里定义图片为响应式，并且添加圆角效果，以便保证图片在不同设备上都可以完美显示 //-->
						<img data-toggle="tooltip" data-placement="left" id="avatar" width="120px;" height="120px;"
							title="hello" class="img-responsive img-rounded"
							src="css/img/flower.jpg" alt="">
					</p>
				</div>
				
			</div>
		</div>


		<div id="container">
			 <div class="col-md-6">
				 <div id="myskipper">
					 <div style="background-image: url(css/img/test1.jpg)"></div>
					 <div style="background-image: url(css/img/test2.jpg)"></div>
					 <div style="background-image: url(css/img/test3.jpg)"></div>
				 </div> 
			 </div>
			 <div class="col-md-6">
					<div class="col-md-4">
						<h3>
							孩子们看到老式电脑后的反应
						</h3>
						<img data-toggle="tooltip" data-placement="left" id="avatar"
							title="hello" class="img-responsive img-rounded"
							src="css/img/1.jpg" alt="">
						老式电脑，并不是指的历史上第一台图灵机计算机，也不是指第一台体积有几间屋子大小的那台ENIAC电脑.
					</div>
					<div class="col-md-4">
						<h3>
							IT培训师
						</h3>
						<img data-toggle="tooltip" data-placement="left" id="avatar"
							title="hello" class="img-responsive img-rounded"
							src="css/img/2.jpg" alt="">
						小鱼儿（注：Pilot
						Fish，本文主角的名字）的公司聘请了一个第三方公司为他们的用户进行Window7培训。
					</div>
					<div class="col-md-4">
						<h3>
							客户是这样描述他们的需求的
						</h3>
						<img data-toggle="tooltip" data-placement="left" id="avatar"
							title="hello" class="img-responsive img-rounded"
							src="css/img/3.jpg" alt="">
						技术服务工程师小鱼儿（注：Pilot
						Fish，本文主角的名字）接到一个任务，需要去外地的一个客户那里检查他们的电脑设备。
					</div>
					<div class="col-md-4">
						<h3>
							我是如何打败拖延症的
						</h3>
						<img data-toggle="tooltip" data-placement="left" id="avatar"
							title="hello" class="img-responsive img-rounded"
							src="css/img/4.jpg" alt="">
						关于拖延症的话题我在Hacker
						News上不断的看到有人提出来(你也读了，不是吗？)，感觉有必要将我是如何跟拖延症做斗争的方法分享给大家。
					</div>
					<div class="col-md-4">
						<h3>
							程序员如何活得明白
						</h3>
						<img data-toggle="tooltip" data-placement="left" id="avatar"
							title="hello" class="img-responsive img-rounded"
							src="css/img/5.jpg" alt="">
						可事实上问题不在于此。编程，就跟写作、绘画、作曲一样，首先是一种创造性的活动，而不是一个种技术工作。
					</div>
					<div class="col-md-4">
						<h3>
							Bash脚本15分钟进阶教程 
						</h3>
						<img data-toggle="tooltip" data-placement="left" id="avatar"
							title="hello" class="img-responsive img-rounded"
							src="css/img/6.jpg" alt="">
						这里的Bash脚本技术技巧最初是来自谷歌的“Testing on the Toilet” (TOTT)。
					</div>
			 </div>
              
    	</div>

		<!-- 底部文件 -->
		<jsp:include page="conf/foot.jsp"></jsp:include>
  </body>
  <script type="text/javascript">
		 $(document).ready(function(){
	         $("#myskipper").skippr();
	     }); 
  </script>
</html>
