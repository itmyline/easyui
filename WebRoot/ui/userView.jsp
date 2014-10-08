<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<form id="dom_var_entity">
	<table class="editTable">
		<tr>
			<td class="title">
				名称:
			</td>
			<td colspan="3">
				${entity.username}
			</td>
		</tr>
		<tr>
			<td class="title">
				组织机构:
			</td>
			<td colspan="3">
				${entity.orgname }
			</td>
		</tr>
		<tr>
			<td class="title">
				登录名:
			</td>
			<td colspan="3">
				${entity.loginname}

			</td>
		</tr>
		<tr>
			<td class="title">
				备注:
			</td>
			<td colspan="3">
				${entity.note}
			</td>
		</tr>
		<tr>
			<td class="title">
				状态:
			</td>
			<td colspan="3">
				${entity.state}
			</td>
		</tr>
		<tr>
			<td class="title">
				创建时间:
			</td>
			<td colspan="3">
				${entity.ctime}
			</td>
		</tr>
		<tr>
			<th colspan="4">
				<div class="div_button">
					<a id="dom_var_cancle_form" href="javascript:void(0)"
						class="easyui-linkbutton" style="width: 55px;">取消</a>
				</div>
			</th>
		</tr>
		
	</table>
</form>
<script type="text/javascript">
	$(function(){
		$("table tr:nth-child(odd)").css("background-color","#eeeeee"); //隔行换色

		//关闭窗口 
		$("#dom_var_cancle_form").bind('click',function(){
			$("#dom_var_window").window('close');
		})
		
	})
</script>