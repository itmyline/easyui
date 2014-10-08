<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
		<jsp:include page="../conf/includeAll.jsp"></jsp:include>
		<script type="text/javascript">
	
</script>
	</head>

	<body>
		<jsp:include page="../conf/head.jsp"></jsp:include>
		<div class="container">
			<div class="page-header">
				<h1>
					关于本站
				</h1>
			</div>
			<p class="lead">
				本站以翻译外国IT方面的评论、访谈为主，没有确定的对象，偏重于软件方面，通过那些独特的海外IT视野，关注IT世界，关切IT民生，锐评IT世事，涵盖Java、.NET、Ruby、SOA、敏捷和架构等。
				本站所有文章均为翻译，一为学英语的一种方式，二为时刻关注国外IT动态。
			</p>
			<div class="page-header">
				<h1>
					关于我
				</h1>
			</div>
			<p>
				联系方式
				<a href="http://www.baidu.com">http://www.baidu.com</a>  
			</p>
			<p>
				QQ:123456789
			</p>
			<p>
				其实包括我自己，大家的认识就是一个做技术的，纯粹的it屌丝，不熟悉的人以为是沉默，寡语，不苟言笑，尽管熟悉的朋友又是另一种认识，如何改变自己大众形象，在写完第一篇关于我自己的文字然后分享出去之后，朋友反馈说，原来你有这样丰富的过去，还保持着读书的习惯，对生活有这样深度的思考，原来发出自己声音的感觉是这样的好^O^，同时发现我周围有太多这种埋头做事而不知道展示自己，分享自己的it工程师，现在正好走在创业这条路上，于是诞生了第一个创业项目:程序员访谈录，现在做了周围大概20多个朋友的访谈，反馈还是正向的，对他们来说，让周围的朋友更好的了解你，是一件很有意义的事情。
			</p>
		</div>

		<div class="footer">
			<div class="container">
				<p class="text-muted">
					Place sticky footer content here.
				</p>
			</div>
		</div>


		<jsp:include page="../conf/foot.jsp"></jsp:include>
	</body>
</html>
