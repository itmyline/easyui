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
	SyntaxHighlighter.defaults['toolbar'] = false; //去掉右上角问号图标
	SyntaxHighlighter.config.tagName = 'pre'; //可以更改解析的默认Tag。
	SyntaxHighlighter.config.bloggerMode = true;
	SyntaxHighlighter.config.stripBrs = true;
	SyntaxHighlighter.all();
</script>

	</head>

	<body>
		<jsp:include page="../conf/head.jsp"></jsp:include>
		<div class="container">
			<div class="row">
				<div class="col-md-2">
				</div>
				<div class="col-md-8">
					<div class="jumbotron">
						<h1>
							SyntaxHighlighter代码高亮插件 
						</h1>
						<p>
							<div class="row marketing">
								<h4>
									分类：开发技术
								</h4>
								<p>
									SyntaxHighlighter是Google Code上的一个开源项目,主要用于给网页上的代码着色,

									使用十分方便,效果也不错,而且几乎支持常见的所有语言。
									
									使用步骤：
									
									一、下载并解压缩SyntaxHighlighter(http://download/7757359)当前版本3.0.83
									
									二、引入文件
									
									将解压后的scripts和styles文件夹复制到项目中,在页面中引入shCore.js和核心CSS文件shCore.css
									
									其次引入你要高亮的语言JS,比如想高亮显示Java,那么必须引入scripts文件夹中的shBrushJava.js
									
									最后引入高亮显示的主题CSS,默认为shThemeDefault.css
									
									三、下面以高亮显示html代码为例
									
									引入JS和CSS文件后 写如下代码：
								</p>
								<p>
									<pre class="brush: java;">
									    private String err;
							   			private String msg;
							   			public String getErr() {
											return err;
										}
										public void setErr(String err) {
											this.err = err;
										}
										public String getMsg() {
											return msg;
										}
										public void setMsg(String msg) {
											this.msg = msg;
										}
									</pre>
								</p>
								<p>
									注：HTML代码显示在标签为中,SyntaxHighlighter默认会自动查找标签

									其中标签可自定义,可以是等等,只需修改如下配置代码：
								</p>
								<p>
									<pre class="brush: html;">  
									    <table>  
									        <tbody>  
									        <tr>  
									            <td>hello</td>  
									            <td>syntaxhighlighter</td>  
									        </tr>  
									        <tr>  
									            <td>代码</td>  
									            <td>亮起来</td>  
									        </tr>  
									        </tbody>  
									    </table>  
									</pre> 
								</p>
							</div>
						</p>
					</div>

					<div class="jumbotron">
						<div class="row">
							<div class="col-md-6">
								发表于：2014-09-12
							</div>
							<div class="col-md-6">
								上一篇：
								<a href="#">客户是这样描述他们的需求的 </a>
								</br>
								下一篇：
								<a href="#">Bash脚本15分钟进阶教程</a>
							</div>
						</div>
					</div>
					<div class="jumbotron">
						<!-- 
						<table class="table">
							<tr>
								<td>
									<div>
										<p>张三说:</p>
										<p>写的太好了</p>
										<p align="right">2014-09-11</p>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div>
										<p>张三说:</p>
										<p>写的太好了</p>
										<p align="right">2014-09-11</p>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div>
										<p>张三说:</p>
										<p>写的太好了</p>
										<p align="right">2014-09-11</p>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div>
										<p>张三说:</p>
										<p>写的太好了</p>
										<p align="right">2014-09-11</p>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div>
										<p>张三说:</p>
										<p>写的太好了</p>
										<p align="right">2014-09-11</p>
									</div>
								</td>
							</tr>
						</table>
						<div class="row" style="text-align: center;">
							<ul class="pager">
								  <li><a href="#">上一页</a></li>
								  <li><a href="#">下一页</a></li>
							</ul>
						</div>
						 -->
						留言
						<textarea class="form-control" rows="3"></textarea>
						<div align="left">
							<button type="button" class="btn btn-default btn-sm">
								提交
							</button>
						</div>

					</div>


				</div>
				<div class="col-md-2">
				</div>
			</div>

		</div>
		<jsp:include page="../conf/foot.jsp"></jsp:include>
	</body>
</html>
