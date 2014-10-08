<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<form id="dom_var_entity">
	<input type="hidden" id="entity_id" name="entity.id" value="${entity.id }"/>
	<table class="editTable">
		<tr>
			<td class="title">
				名称:
			</td>
			<td colspan="3">
				<input type="text" class="easyui-validatebox" data-options="required:true"
					id="entity_name" name="entity.name" value="${entity.name}">
			</td>
		</tr>
		<tr>
			<td class="title">
				排序:
			</td>
			<td colspan="3">
				<input type="text" class="easyui-validatebox" data-options="required:true"
					id="entity_sort" name="entity.sort" value="${entity.sort}">
			</td>
		</tr>
		<tr>
			<td class="title">
				状态:
			</td>
			<td colspan="3">
				<select name="entity.state" id="entity_state" value="${entity.state}">
					<option value="1">
						可用
					</option>
					<option value="0">
						禁用
					</option>
				</select>
			</td>
		</tr>
		<tr>
			<td class="title">
				备注:
			</td>
			<td colspan="3">
				<textarea rows="3" cols="32" class="easyui-validatebox"
					data-options="required:false,validType:',maxLength[64]'"
					id="entity_note" name="entity.note">${entity.note}</textarea>
			</td>
		</tr>
		<tr>
			<th colspan="4">
				<div class="div_button">
					<c:if test="${pageType==1}">
						<a id="dom_var_add_entity" href="javascript:void(0)"
							class="easyui-linkbutton" style="width: 55px;">增加</a>
					</c:if>
					<c:if test="${pageType==2}">
						<a id="dom_var_edit_entity" href="javascript:void(0)"
							class="easyui-linkbutton" style="width: 55px;">修改</a>
					</c:if>
					
					<a id="dom_var_cancle_form" href="javascript:void(0)"
						class="easyui-linkbutton" style="width: 55px;">取消</a>
				</div>
			</th>
		</tr>
		
	</table>
</form>
<script type="text/javascript">
	$(function(){

		$("#entity_state").val("${entity.state}")  //select回显
		
		$("table tr:nth-child(odd)").css("background-color","#eeeeee"); //隔行换色
	
		
		//关闭窗口 
		$("#dom_var_cancle_form").bind('click',function(){
			$("#dom_var_window").window('close');
		})
		$("#dom_var_add_entity").bind('click',function(){
			if ($('#dom_var_entity').form('validate')) {
				if (confirm('您确定保存该任务吗？')) {
					$.post('categorySaveAction.action', $("#dom_var_entity").serializeArray(), function(flag) {
						if (flag.state == '1') {
							alert("操作成功，窗口即将关闭!");
							$("#dom_var_window").window('close');  //关闭
							$('#tt').datagrid('reload');           //刷新 
						} else {
							alert("操作失败!");
						}
					});
				}
			}
		})
		$("#dom_var_edit_entity").bind('click',function(){
			if ($('#dom_var_entity').form('validate')) {
				$.post('categoryEditAction.action', $("#dom_var_entity").serializeArray(), function(flag) {
					if (flag.state == '1') {
						alert("操作成功，窗口即将关闭!");
						$("#dom_var_window").window('close');  //关闭
						$('#tt').datagrid('reload');           //刷新 
					} else {
						alert("操作失败!");
					}
				});
			}
		})
		
	})
</script>