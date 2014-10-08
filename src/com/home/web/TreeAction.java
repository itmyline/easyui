package com.home.web;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.home.util.ConnectionManager;

/**
 * 查询数据使用JDBC进行操作
 * 
 */
public class TreeAction {
	private List<TreeNode> treeNodes = new ArrayList<TreeNode>(); // 返回的JSON数据
	private String id; // 树组件使用的ID
	private String parentId; // 树父ID
	private String text; // 显示文本
	private String targetId; // 拖拽目标ID

	/**
	 * 树展现
	 * 
	 * @return
	 */
	public String treeLoad() {

		Statement sta = null;
		ResultSet rs = null;
		try {
			Connection conn = ConnectionManager.getConnection();
			sta = conn.createStatement();
			String sql = "";
			if (id == null) { // 如果id为null或0则是根节点
				sql = "select * from e_column where parentid = '' or parentid = '0'";
			} else { // 查询下面的子节点
				sql = "select * from e_column where parentid = '"+id+"'";
			}
			rs = sta.executeQuery(sql);

			while (rs.next()) {
				String id = rs.getString("id");
				String name = rs.getString("name");
				TreeNode node = new TreeNode();
				node.setId(id);
				node.setText(name);
				node.setChecked(false);
				// 判断是否有子节点，如果有则closed 否则open
				if (isChildrenNode(id)) {
					node.setState("closed");
				} else {
					node.setState("open");
				}
				treeNodes.add(node);
			}
			// 关闭所有资源
			ConnectionManager.closeAll(rs, sta, conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return "success";
	}

	/**
	 * 创建tree
	 * 
	 * @return
	 */
	public String treeCreate() {
		Statement sta = null;
		ResultSet rs = null;
		try {
			Connection conn = ConnectionManager.getConnection();
			sta = conn.createStatement();
			//ID为自增,无需插入
			String sql = "insert into easyui_tree(NAME,parentid) values('','" + parentId + "')";
			sta.execute(sql);

			// 关闭所有资源
			ConnectionManager.closeAll(rs, sta, conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "success";
	}

	/**
	 * 修改tree
	 * 
	 * @return
	 */
	public String treeUpdate() {
		Statement sta = null;
		ResultSet rs = null;
		try {
			Connection conn = ConnectionManager.getConnection();
			sta = conn.createStatement();
			String sql = "update easyui_tree set name = '" + text + "' where id = '" + id + "'";
			sta.executeUpdate(sql);

			// 关闭所有资源
			ConnectionManager.closeAll(rs, sta, conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "success";
	}

	/**
	 * 删除tree
	 * 
	 * @return
	 */
	public String treeDestroy() {
		Statement sta = null;
		ResultSet rs = null;
		try {
			Connection conn = ConnectionManager.getConnection();
			sta = conn.createStatement();
			String sql = "delete from easyui_tree where id = '" + id + "'";
			sta.executeUpdate(sql);

			// 关闭所有资源
			ConnectionManager.closeAll(rs, sta, conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "success";
	}

	/**
	 * 拖拽
	 * 
	 * @return
	 */
	public String treeDnd() {
		Statement sta = null;
		ResultSet rs = null;
		try {
			Connection conn = ConnectionManager.getConnection();
			sta = conn.createStatement();
			//将parentid改为拖拽至目标ID
			String sql = "update  easyui_tree set parentid = '" + targetId + "' where id = '" + id + "'";
			sta.executeUpdate(sql);

			// 关闭所有资源
			ConnectionManager.closeAll(rs, sta, conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "success";
	}

	/**
	 * 判断是否有子节点
	 * 
	 * @return
	 */
	public boolean isChildrenNode(String id) {
		Boolean flag = false;
		Statement sta = null;
		ResultSet rs = null;
		try {
			Connection conn = ConnectionManager.getConnection();
			sta = conn.createStatement();
			String sql = "select * from e_column where parentid = '"+id+"'";
			rs = sta.executeQuery(sql);
			while (rs.next()) {
				flag = true;
			}
			// 关闭所有资源
			ConnectionManager.closeAll(rs, sta, conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

	public List<TreeNode> getTreeNodes() {
		return treeNodes;
	}

	public void setTreeNodes(List<TreeNode> treeNodes) {
		this.treeNodes = treeNodes;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getParentId() {
		return parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getTargetId() {
		return targetId;
	}

	public void setTargetId(String targetId) {
		this.targetId = targetId;
	}

}
