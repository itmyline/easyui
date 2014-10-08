package com.home.web;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.home.model.Category;
import com.home.util.ConnectionManager;
import com.home.util.DataResult;

/**
 * 用户信息
 * 
 */
public class ArticleAction {
	private List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
	private DataResult result = new DataResult();   //结果集
	private Category entity;  //User实体
	private String state; //操作状态
	private String ids;   //主键集合 
	private int pageType; //页面类型   0:展示,1:新增, 2:修改
    private String menuName; 

	public String queryAll() {
		StringBuffer queryConditions = new StringBuffer("where 1=1 "); //查询条件
		if(entity!=null){
			if(!"".equals(entity.getName())&&entity.getName()!=null){
				queryConditions.append(" and name like '%"+entity.getName()+"%'");
			}
			if(entity.getState()!=2){
				queryConditions.append(" and state = '"+entity.getState()+"'");
			}
		}
		
		Statement sta = null;
		ResultSet rs = null;
		try {
			Connection conn = ConnectionManager.getConnection();
			sta = conn.createStatement();
			String sql = "select * from e_article "+queryConditions+" limit "
					+ (result.getCurrentPage() - 1) * result.getPageSize()
					+ "," + result.getPageSize() + "";
			System.out.println(sql);
			rs = sta.executeQuery(sql);
			ResultSetMetaData md = rs.getMetaData(); // 获得结果集结构信息,元数据
			int columnCount = md.getColumnCount();
			while (rs.next()) {
				Map<String, Object> rowData = new HashMap<String, Object>();
				for (int i = 1; i <= columnCount; i++) {
					if(md.getColumnType(i)==93){  //解决日期类型显示问题  91为Date类型标识，如果是日期类型则转换为String
						rowData.put(md.getColumnName(i), rs.getObject(i).toString());	
					}else{
						rowData.put(md.getColumnName(i), rs.getObject(i));	
					}
				}
				list.add(rowData);
				result.setResultList(list);
			}
			result.runDictionary("1:可用,0:禁用", "state");
			result.setTotalSize(ConnectionManager.getRows(queryConditions.toString()));
			ConnectionManager.closeAll(rs, sta, conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "success";
	}


	public String view() {
		switch(pageType){
		case(1):{   //新增 
			break;
		}
		case(0):{ //展示 
			Statement sta = null;
			ResultSet rs = null;
			try {
				Connection conn = ConnectionManager.getConnection();
				sta = conn.createStatement();
				rs = sta.executeQuery("select id,name,sort,state,note,ctime,utime from e_tag where id="+ids);
				while(rs.next()){
					Category category = new Category();
					category.setId(rs.getInt(1));
					category.setName(rs.getString(2));
					category.setSort(rs.getString(3));
					category.setState(rs.getInt(4));
					category.setNote(rs.getString(5));
					category.setCtime(rs.getTimestamp(6));
					category.setUtime(rs.getTimestamp(7));
					entity = category;
					
				}
				ConnectionManager.closeAll(rs, sta, conn);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return "view";
		}
		case(2):{ //修改 
			Statement sta = null;
			ResultSet rs = null;
			try {
				Connection conn = ConnectionManager.getConnection();
				sta = conn.createStatement();
				rs = sta.executeQuery("select id,name,sort,state,note,ctime,utime  from e_tag where id="+ids);
				while(rs.next()){
					Category category = new Category();
					category.setId(rs.getInt(1));
					category.setName(rs.getString(2));
					category.setSort(rs.getString(3));
					category.setState(rs.getInt(4));
					category.setNote(rs.getString(5));
					entity = category;
					
				}
				ConnectionManager.closeAll(rs, sta, conn);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		}
		return "success";
	}
	/**
	 * 添加分类信息
	 * 
	 * @return
	 */
	public String save() {
		PreparedStatement sta = null;
		try {
			Connection conn = ConnectionManager.getConnection();
			sta = conn.prepareStatement("insert into e_tag(name,sort,state,note,ctime) values(?,?,?,?,?)");
			// ID自动增长
			sta.setString(1, entity.getName());
			sta.setString(2, entity.getSort());
			sta.setInt(3, entity.getState());
			sta.setString(4, entity.getNote());
			java.util.Date curDate = new java.util.Date();
			java.sql.Timestamp ts = new java.sql.Timestamp(curDate.getTime());
			sta.setTimestamp(5, ts);
			sta.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		state = "1"; // 插入成功状态
		return "success";
	}
	/**
	 * 修改分类信息
	 * @return
	 */
	public String edit() {
		PreparedStatement sta = null;
		try {
			Connection conn = ConnectionManager.getConnection();
			sta = conn.prepareStatement("update e_tag set name=?,sort=?,state=?,note=? where id = ?");
			sta.setString(1, entity.getName());
			sta.setString(2, entity.getSort());
			sta.setInt(3, entity.getState());
			sta.setString(4, entity.getNote());
			//sta.setTimestamp(5, ts);  //utime自动更新 无需修改
			sta.setInt(5, entity.getId());
			sta.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		state = "1"; // 修改成功状态
		return "success";
	}
	public String del(){
		Statement sta = null;
		for(String s: ids.split(",")){
			try {
				Connection conn = ConnectionManager.getConnection();
				sta = conn.createStatement();
				sta.execute("delete from e_tag where id = "+s);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		state = "1";  //删除成功状态
		return "success";
	}

	/**
	 * 跳转
	 * 
	 * @return
	 */
	public String forSend() {
		return "success";
	}
	public String forSendProgramLife() {
		menuName = "程序人生";
		return "success";
	}
	public String detail() {
		menuName = "程序人生";
		return "success";
	}
	/**
	 * @return the state
	 */
	public String getState() {
		return state;
	}

	/**
	 * @param state
	 *            the state to set
	 */
	public void setState(String state) {
		this.state = state;
	}

	

	/**
	 * @return the entity
	 */
	public Category getEntity() {
		return entity;
	}

	/**
	 * @param entity the entity to set
	 */
	public void setEntity(Category entity) {
		this.entity = entity;
	}

	/**
	 * @return the list
	 */
	public List<Map<String, Object>> getList() {
		return list;
	}

	/**
	 * @param list the list to set
	 */
	public void setList(List<Map<String, Object>> list) {
		this.list = list;
	}

	/**
	 * @return the result
	 */
	public DataResult getResult() {
		return result;
	}

	/**
	 * @param result the result to set
	 */
	public void setResult(DataResult result) {
		this.result = result;
	}

	/**
	 * @return the ids
	 */
	public String getIds() {
		return ids;
	}

	/**
	 * @param ids the ids to set
	 */
	public void setIds(String ids) {
		this.ids = ids;
	}

	/**
	 * @return the pageType
	 */
	public int getPageType() {
		return pageType;
	}

	/**
	 * @param pageType the pageType to set
	 */
	public void setPageType(int pageType) {
		this.pageType = pageType;
	}


	/**
	 * @return the menuName
	 */
	public String getMenuName() {
		return menuName;
	}


	/**
	 * @param menuName the menuName to set
	 */
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	
}
