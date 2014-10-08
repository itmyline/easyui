<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">
	<!-- /* 增加插入代码工具图标 */
	.btnCode {
		background: transparent url(img/code.png) no-repeat 0px 0px;
		background-position: 3px -2px;
	}
	-->
</style>
<form id="dom_var_entity">
	<input type="hidden" id="entity_id" name="entity.id" value="${entity.id }"/>
	<table class="editTable">
		<tr>
			<td class="title">
				标题:
			</td>
			<td colspan="8">
				<input type="text" class="easyui-validatebox" size="50" data-options="required:true"
					id="entity_name" name="entity.name" value="${entity.name}">
			</td>
		</tr>
		<tr>
			<td class="title">
				摘要:
			</td>
			<td colspan="8">
				<textarea rows="3" cols="32" class="easyui-validatebox"
					data-options="required:false,validType:',maxLength[64]'"
					id="entity_note" name="entity.note">${entity.note}</textarea>
			</td>
		</tr>
		<tr>
			<td class="title">
				内容:
			</td>
			<td colspan="8">
				<textarea rows="30" cols="50" class="easyui-validatebox"
					data-options="required:false,validType:',maxLength[64]'"
					id="entity_content" name="entity.note">${entity.note}</textarea>
			</td>
		</tr>
		<tr>
			<td class="title">
				状态:
			</td>
			<td colspan="8">
				<select name="entity.state" id="entity_state" value="${entity.state}">
					<option value="1">
						发布
					</option>
					<option value="0">
						草稿
					</option>
					<option value="0">
						私密
					</option>
				</select>
			</td>
		</tr>
		<tr>
			<td class="title">
				是否最新:
			</td>
			<td colspan="8">
				<select name="entity.state" id="entity_state" value="${entity.state}">
					<option value="1">
						是
					</option>
					<option value="0">
						否
					</option>
				</select>
			</td>
		</tr>
		<tr>
			<td class="title">
				是否最热:
			</td>
			<td colspan="8">
				<select name="entity.state" id="entity_state" value="${entity.state}">
					<option value="1">
						是
					</option>
					<option value="0">
						否
					</option>
				</select>
			</td>
		</tr>
		<tr>
			<td class="title">
				图片:
			</td>
			<td colspan="8">
				   <input type="file" id="entity_sort" name="entity.sort">
			</td>
		</tr>
		<tr>
			<td class="title">
				备注:
			</td>
			<td colspan="8">
				<textarea rows="3" cols="32" class="easyui-validatebox"
					data-options="required:false,validType:',maxLength[64]'"
					id="entity_note" name="entity.note">${entity.note}</textarea>
			</td>
		</tr>
		<tr>
			<th colspan="9">
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
					$.post('tagSaveAction.action', $("#dom_var_entity").serializeArray(), function(flag) {
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
				$.post('tagEditAction.action', $("#dom_var_entity").serializeArray(), function(flag) {
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

	    //xheditor的使用
		var plugins={
			Code:{c:'btnCode',t:'插入代码',h:1,e:function(){
				var _this=this;
				var htmlCode="<div>编程语言<select id='xheCodeType'>";
					htmlCode+="<option value='html'>HTML/XML</option>";
					htmlCode+="<option value='js'>Javascript</option>";
					htmlCode+="<option value='css'>CSS</option>";
					htmlCode+="<option value='php'>PHP</option>";
					htmlCode+="<option value='java'>Java</option>";
					htmlCode+="<option value='py'>Python</option>";
					htmlCode+="<option value='pl'>Perl</option>";
					htmlCode+="<option value='rb'>Ruby</option>";
					htmlCode+="<option value='cs'>C#</option>";
					htmlCode+="<option value='c'>C++/C</option>";
					htmlCode+="<option value='vb'>VB/ASP</option>";
					htmlCode+="<option value=''>其它</option>";
					htmlCode+="</select></div><div>";
					htmlCode+="<textarea id='xheCodeValue' wrap='soft' spellcheck='false' style='width:300px;height:100px;' />";
					htmlCode+="</div><div style='text-align:right;'><input type='button' id='xheSave' value='确定' /></div>";			
				var jCode=$(htmlCode),jType=$('#xheCodeType',jCode),jValue=$('#xheCodeValue',jCode),jSave=$('#xheSave',jCode);
				jSave.click(function(){
					_this.loadBookmark();
					_this.pasteHTML('<pre class="brush: '+jType.val()+'">'+_this.domEncode(jValue.val())+'</pre>&nbsp;');
					_this.hidePanel();
					return false;	
				});
				_this.saveBookmark();
				_this.showDialog(jCode);
			}},
			
		};
		$('#entity_content').xheditor({
				plugins:plugins,  //使用我们定义的插件  
				loadCSS:'<style>pre{margin-left:2em;border-left:3px solid #CCC;padding:0 1em;}</style>',
		});
		
	})
</script>