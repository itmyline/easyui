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
			<div class="row">
				<div class="col-md-2">
				</div>
				<div class="col-md-8">
					<div class="jumbotron">
						<h1>
							一叶扁舟入江南
						</h1>
						<p>
							<div class="row marketing">
								<h4>
									分类：思想人生
								</h4>
								<p>
									&nbsp;&nbsp;&nbsp;&nbsp;我在烟雨里摇撸一叶扁舟路过江南，不经意载入谁小溪边浣纱的眉眼，
									</br>
									你低头笑得恬淡，我抬首再没能风轻云淡错过你的每一个瞬间。
									</br>
									说书人轻抚了纸折扇，又说一段故事里被人念念不忘的长安，我却独自醉在你的江南，
									</br>
									你一颦一笑的温婉，让我流连忘返。又说起长安，良辰美景繁花开遍，惹得多少人赞叹惊艳，
									</br>
									&nbsp;&nbsp;&nbsp;&nbsp;
									挥毫泼墨写下那些千古流传的诗篇，我却只小心翼翼提笔为你填一阙忆江南，轻墨淡染倒影里的那一份安然，生怕惊扰了你在水墨里的浅眠。
									</br>
									抬步上石阶，谁抚琴一曲白头吟，谁题写一篇凤求凰，一拨一弹，一字一句，乱了心弦入了执念。
									</br>
									若说江南是温柔醇厚的酒，绵长入喉，而江南的你则让我醉死也甘愿的毒。
									</br>
									牵你的手走过老去的青石板，似乎这样就能如同故事里说的那样实现不离不弃的誓言。
									</br>
									沏一杯新茶知你凉暖，添一件新衣许你温柔，不求和你石桥纸伞烟柳的唯美遇见，可否求你陪我在这江南，
									</br>
									&nbsp;&nbsp;&nbsp;&nbsp;不要一世长安，只愿平平淡淡。在岁月静好里约好彼此相伴，后来你放我一人在这时光里搁浅。
									</br>
									如果可以，我愿以命做赌，赌你会陪我到最后，赌你会陪我在漫长光阴里不朽，而我只因忘记在烟雨朦胧里抬眼许你一个回眸，
									</br>
									便从此生生辜负了你在佛前求了五百年的缘分与擦肩。
									</br>
									又或许，那天我扁舟驶过你的门前，你唇边带笑不过是一个美丽却错误的习惯，我却一再的沦陷，
									</br>
									&nbsp;&nbsp;&nbsp;&nbsp;沦陷在我一厢情愿的江南，贪恋着你的笑意给过的温暖。大抵如此，我不过是无意路过的少年，而你垂首笑得柔软只因恰好烟雨绵绵。
									</br>
									茶杯又被谁斟满，鼓掌叫好要说书人再来一段白蛇与许仙的纠葛，别人故事里的爱恨恩怨，
									</br>
									与我无关。所有的风景突然开始急速的后退变暗，江南被你的离开定格成了永远，我又从谁身旁路过，
									</br>
									又与谁匆匆擦肩，她是否有着与你一样的眉弯，是否和你有着相似的安然，而自你离开后，我着眼每一个身影，
									</br>
									&nbsp;&nbsp;&nbsp;&nbsp;每一处墨色，都是你。我在扁舟里守着悠悠流逝的时间，油纸伞突然撑开又被人合上，恰似短暂又突如其来的缘。
									</br>
									那些停留在旧光阴里的日记，不是我的喜乐，一页页，全是我再也不忍翻阅的，与你有关的悲欢。
									</br>
									我将仅余的温存葬给你在的江南，纵使无人心疼无人过问，此后经年，依旧守着你我初见的温暖。
									</br>
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
								上一篇：<a href="#">客户是这样描述他们的需求的 </a></br>
								下一篇：<a href="#">Bash脚本15分钟进阶教程</a>
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
							<button type="button" class="btn btn-default btn-sm">提交</button>
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
