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

		<title>人员信息列表</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css" href="css/base.css">
		<link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css">
		<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
		<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
		<script type="text/javascript" src="js/jquery.easyui.min.js"></script>

	</head>

	<body>
		<table style="width: 100%;">
			<tr>
				<td style="vertical-align: top;">
					<div class="search_div">
						<form id="dom_var_search">
							名称:
							<input id="name" type="text">
							状态:
							<select id="state">
								<option value="2">--请选择--</option>
								<option value="1">可用</option>
								<option value="0">禁用</option>
							</select>
							<a id="a_var_search" href="javascript:void(0)"
								class="easyui-linkbutton" data-options="plain:true"
								iconCls="icon-search">查询</a>
							<a id="a_var_reset" href="javascript:void(0)"
								class="easyui-linkbutton" data-options="plain:true"
								iconCls="icon-reload">清除条件</a>
						</form>
					</div>
					<div class="datagrid_div">
						<table id="tt" class="easyui-datagrid">
							<thead>
								<tr>
									<th data-options="field:'ck',checkbox:true"></th>
									<th data-options="field:'NAME',width:100">
										名称
									</th>
									<th data-options="field:'sort',width:100">
										排序
									</th>
									<th data-options="field:'state',width:100">
										状态
									</th>
								</tr>
							</thead>
						</table>
						<!-- 分页栏 -->
						<div id="dom_var_pagination" class="easyui-pagination"></div>
					</div>
					<!-- 弹出窗口 -->
					<div id="dom_var_window"></div>
				</td>
			</tr>
		</table>
	</body>
	<script type="text/javascript">
	var TOOL_BAR = [ {
		id : 'view',
		text : '查看',
		iconCls : 'icon-tip',
		handler : function() {
			shortMenuOpen_grid(null, {
				name : 'view'
			})
		}
	}, {
		id : 'add',
		text : '增加',
		iconCls : 'icon-add',
		handler : function() {
			shortMenuOpen_grid(null, {
				name : 'add'
			})
		}
	}, {
		id : 'edit',
		text : '修改',
		iconCls : 'icon-edit',
		handler : function() {
			shortMenuOpen_grid(null, {
				name : 'edit'
			})
		}
	}, {
		id : 'del',
		text : '删除',
		iconCls : 'icon-remove',
		handler : function() {
			shortMenuOpen_grid(null, {
				name : 'del'
			})
		}
	} ];

	$(function() {
		$('#mytree').tree( {
			url : 'treeLoad.action',
			onSelect : function(node) {
				
			}
		});
		$("#tt").datagrid( {
			url : 'getTagAction.action',
			closable : true,
			checkOnSelect : true,
			striped : true,
			rownumbers : true,
			'toolbar' : TOOL_BAR,
			fitColumns : true,
			loadFilter : function(data) {
				var data_ = {
					"rows" : data.result.resultList,
					"total" : data.size
				}
				$("#dom_var_pagination").pagination( {
					total : data.result.totalSize
				});
				return data_;
			}
		});

		$("#dom_var_pagination").pagination( {
			 onSelectPage: function(pageNumber, pageSize){ 
	            //$('#tt').datagrid('load', "getUserAction.action?currentPage="+pageNumber+"&pageSize="+pageSize+"");
			 	$("#tt").datagrid( {
					url : 'getTagAction.action?result.currentPage='+pageNumber+'&result.pageSize='+pageSize+'',
					closable : true,
					checkOnSelect : true,
					striped : true,
					rownumbers : true,
					'toolbar' : TOOL_BAR,
					fitColumns : true,
					loadFilter : function(data) {
						var data_ = {
							"rows" : data.result.resultList,
							"total" : data.result.totalSize
						}
						$("#dom_var_pagination").pagination( {
							total : data.result.totalSize
						});
						return data_;
					}
				});
	        }
		});
	})
	$("#a_var_search").bind('click', function() {
		var name = $("#name").val();
		var state = $("#state").val();
		$("#tt").datagrid( {
			url : 'getTagAction.action?entity.name='+name+'&entity.state='+state,
			closable : true,
			checkOnSelect : true,
			striped : true,
			rownumbers : true,
			'toolbar' : TOOL_BAR,
			fitColumns : true,
			loadFilter : function(data) {
				if(data.result.resultList!=null){
					var data_ = {
							"rows" : data.result.resultList
						}
						$("#dom_var_pagination").pagination( {
							total : data.result.totalSize
						});
						return data_;
				}else{
					var data_ = {
							"rows" : ''
						}
						$("#dom_var_pagination").pagination( {
							total : ''
						});
						return data_;
				}
				
			}
		});;
	});
	//清除条件 
	$("#a_var_reset").bind('click',function(){
		$("#name").val('');
		$("#state").val('');
	})
	function shortMenuOpen_grid(rowIndex, menuItem){
		if (menuItem.name == 'add') {
			$("#dom_var_window").window( {
				width : "500",
				height : "300",
				title : "新增",
				modal : true,
				minimizable : false,
				closed : true
			});
			$("#dom_var_window").window('open'); 
			$("#dom_var_window").window('refresh', "tagShow.action?pageType=1");
		}
		if (menuItem.name == 'del') {
			var selectedArray = $('#tt').datagrid('getSelections');  //返回被选择的行 
			var ids;
			$(selectedArray).each(function(index,obj){
				if(index==0){
					ids = obj.id;
				}else{
					ids = ids + ',' + obj.id;
				}
			})
			if(selectedArray.length>0){
				var str = selectedArray.length + '条数据将被删除,是否继续?';
				$.messager.confirm('提示',str,function(flag){
					if(flag){
						$.post('tagDelAction.action?ids='+ids,{},function(f){
							if(f.state=='1'){
								$.messager.alert('成功', '删除成功!', 'info');
								$('#tt').datagrid('reload');
							}
						})
					}
				})
			}else{
				$.messager.alert('提示', '请至少选择一条记录!', 'info');  //提示信息 
			}
		}
		if (menuItem.name == 'edit') {
			var selectedArray = $('#tt').datagrid('getSelections');  //返回被选择的行 
			if(selectedArray.length==1){
				$("#dom_var_window").window( {
					width : "500",
					height : "300",
					title : "修改",
					modal : true,
					minimizable : false,
					closed : true
				});
				$("#dom_var_window").window('open'); 
				$("#dom_var_window").window('refresh', "tagShow.action?ids='"+selectedArray[0].id+"'&pageType=2");
			}else{
				$.messager.alert('提示', '请选择一条记录!', 'info');  //提示信息
			}
		}
		if (menuItem.name == 'view') {
			var selectedArray = $('#tt').datagrid('getSelections');  //返回被选择的行 
			if(selectedArray.length==1){
				$("#dom_var_window").window( {
					width : "500",
					height : "280",
					title : "查看",
					modal : true,
					minimizable : false,
					closed : true
				});
				$("#dom_var_window").window('open'); 
				$("#dom_var_window").window('refresh', "tagShow.action?ids='"+selectedArray[0].id+"'&pageType=0");
			}else{
				$.messager.alert('提示', '请选择一条记录!', 'info');  //提示信息
			}
		}
	}
</script>
</html>
