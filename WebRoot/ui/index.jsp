<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>jQuery EasyUI首页</title>
		
		<link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css">
		<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
		<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
		<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
	</head>
	<body class="easyui-layout">
		<!-- 北 -->
		<div data-options="region:'north',border:false" style="height: 36px; border: 0px; padding: 0px; overflow: hidden;">
			<div class="accordion" style="text-align: right; height: 100%; background-color: #438EB9;">
				<div style="margin: auto;">
					<img src="img/top.jpg" width="1400"  height="35" style="margin: auto;border: 0px;" border="0" />
				</div>
			</div>
			
		</div>
		<!-- 西 -->
		<div data-options="region:'west',split:true,title:' '"style="width: 155px;">
			<div class="easyui-layout" data-options="fit:true">
				<div id="pic" data-options="region:'north',split:false" style="height: 130px; padding: 4px;">
					<img alt="" src="img/head.jpg" width="130px;">
					<div align="center">欢迎光临</div>
					<div align="center" id="showDate"></div>
				</div>
				<div data-options="region:'center'">
						<div id="frame_accordion" class="easyui-accordion" data-options="fit:true">  
						    <div title="基础资料" data-options="" style="overflow:auto;padding:10px;">  
						        <ul id="tree1" class="easyui-tree" >  
								    <li  data-options="iconCls:'icon-client_account_template'">  
				                        <span>分类管理</span>  
				                    </li>  
				                    <li  data-options="iconCls:'icon-business-contact'">  
				                        <span>标签管理</span>  
				                    </li>  
				                    <li data-options="iconCls:'icon-group_green_edit'">  
				                        <span>文章管理</span>  
				                    </li>  
				                    <!-- 
				                    <li data-options="iconCls:'icon-my-account'">  
				                        <span>客户信息管理</span>  
				                    </li>  
								    <li data-options="iconCls:'icon-business-contact'">  
								        <span>项目资料管理</span>  
								    </li>
								     -->
								    
								</ul>  
						    </div>  
						    <div title="系统管理" style="padding:10px;">  
						        	那片笑声让我想起我的那些花儿   
						    </div>  
						    <div title="人员管理" style="padding:10px;">  
						        	在我生命每个角落静静为我开着   
						    </div>
						    <div title="模型管理" style="padding:10px;">  
						       		我曾以为我会永远守在她身旁   
						    </div>
						    <div title="统计查询" style="padding:10px;">  
						        	今天我们已经离去在人海茫茫   
						    </div>  
						</div> 
				</div>
			</div>
		</div>
		<!-- 南 -->
		<div data-options="region:'south',border:false" style="height: 20px; background-color: #f3f3f3;text-align: right;">
			@版权所有2014&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
		<!-- 中 -->
		<div data-options="region:'center'">
			<div class="easyui-tabs" id="frame_tabs" style="overflow: hidden;background-color: #f3f3f3;"
				data-options="fit:true,border:false,plain:true">
				<div title="首页" style="overflow: hidden;">
					<jsp:include page="/home.jsp"></jsp:include>
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript">

		$(function(){
			setInterval("getTime();",1000);
		})
		//取得系统当前时间
		function getTime(){
			var myDate = new Date();
			var date = myDate.toLocaleDateString();
			var hours = myDate.getHours();
			var minutes = myDate.getMinutes();
			var seconds = myDate.getSeconds();
			$("#showDate").html(date+" "+hours+":"+minutes+":"+seconds);
		}
	
		$('#tree1').tree( {
			 onSelect : function(node) {  
                openMenuTow(node);  
            } 
		});
		function openMenuTow(node){

			 //树型菜单的名字   
            var noteText = $(".tree-title", node.target).text();  
            var exist_tab = $('#frame_tabs').tabs('getTab', noteText);  
            //判断是否已经打开该选项卡  
            if (exist_tab) {  
                $('#frame_tabs').tabs('select', noteText);  
                return;  
            } else {  
                var content = "";
                if(noteText=="分类管理"){
                	content = '<iframe scrolling="auto" frameborder="0"  src="CATEGORY_ACTION_CONSOLE.action" style="width:100%;height:100%;"></iframe>';
                }else if(noteText=="标签管理"){
                	content = '<iframe scrolling="auto" frameborder="0"  src="TAG_ACTION_CONSOLE.action" style="width:100%;height:100%;"></iframe>';
                }else if(noteText=="文章管理"){
                	content = '<iframe scrolling="auto" frameborder="0"  src="ARTICLE_ACTION_CONSOLE.action" style="width:100%;height:100%;"></iframe>';
                }
                $('#frame_tabs').tabs('add', {  
                    'id' : 'tab',  
                    title : noteText,  
                    fit : true,  
                    content : content,  
                    closable : true  
                });  
                //获取最后一个tabs 在新加的选项卡后面添加"关闭全部"  
                var li = $(".tabs-wrap ul li:last-child");  
                $("#close").remove();  
                li.after("<li id='close'><a class='tabs-inner' href='javascript:void()' onClick='javascript:closeAll()'>关闭全部</a></li>");  
            }  
		}
		function closeAll() {  
            $(".tabs li").each(function(index, obj) {  
                  //获取所有可关闭的选项卡  
                  var tab = $(".tabs-closable", this).text();  
                  $(".easyui-tabs").tabs('close', tab);  
            });  
            $("#close").remove();//同时把此按钮关闭  
        }  
	</script>
	
</html>
