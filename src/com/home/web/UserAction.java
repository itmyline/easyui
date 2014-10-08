package com.home.web;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.home.model.User;
import com.home.util.ConnectionManager;
import com.home.util.DataResult;

/**
 * 用户信息
 * 
 */
public class UserAction {
	private List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
	private DataResult result = new DataResult();   //结果集
	private User entity;  //User实体
	private String state; //操作状态
	private String ids;   //主键集合 
	private int pageType; //页面类型   0:展示,1:新增, 2:修改

	public String queryAll() {
		StringBuffer queryConditions = new StringBuffer("where 1=1 "); //查询条件
		if(entity!=null){
			if(!"".equals(entity.getUsername())&&entity.getUsername()!=null){
				queryConditions.append(" and username like '%"+entity.getUsername()+"%'");
			}
			if(!"".equals(entity.getOrgname())&&entity.getOrgname()!=null){
				queryConditions.append(" and orgname like '%"+entity.getOrgname()+"%'");
			}
			if(!"".equals(entity.getLoginname())&&entity.getLoginname()!=null){
				queryConditions.append(" and loginname like '%"+entity.getLoginname()+"%'");
			}
		}
		
		Statement sta = null;
		ResultSet rs = null;
		try {
			Connection conn = ConnectionManager.getConnection();
			sta = conn.createStatement();
			String sql = "select * from e_column "+queryConditions+" limit "
					+ (result.getCurrentPage() - 1) * result.getPageSize()
					+ "," + result.getPageSize() + "";
			System.out.println(sql);
			rs = sta.executeQuery(sql);
			ResultSetMetaData md = rs.getMetaData(); // 获得结果集结构信息,元数据
			int columnCount = md.getColumnCount();
			while (rs.next()) {
				Map<String, Object> rowData = new HashMap<String, Object>();
				for (int i = 1; i <= columnCount; i++) {
					if(md.getColumnType(i)==91){  //解决日期类型显示问题  91为Date类型标识，如果是日期类型则转换为String
						rowData.put(md.getColumnName(i), rs.getObject(i).toString());	
					}else{
						rowData.put(md.getColumnName(i), rs.getObject(i));	
					}
				}
				list.add(rowData);
				result.setResultList(list);
			}
			result.setTotalSize(ConnectionManager.getRows(queryConditions.toString()));
			ConnectionManager.closeAll(rs, sta, conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "success";
	}

	/**
	 * 查询组织机构
	 * 
	 * @return
	 */
	public String queryOrganization() {
		Statement sta = null;
		ResultSet rs = null;
		try {
			Connection conn = ConnectionManager.getConnection();
			sta = conn.createStatement();
			rs = sta.executeQuery("select * from e_organization");
			ResultSetMetaData md = rs.getMetaData(); // 获得结果集结构信息,元数据
			int columnCount = md.getColumnCount();
			while (rs.next()) {
				Map<String, Object> rowData = new HashMap<String, Object>();
				for (int i = 1; i <= columnCount; i++) {
					rowData.put(md.getColumnName(i), rs.getObject(i));
				}
				list.add(rowData);
				result.setResultList(list);

			}
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
				rs = sta.executeQuery("select id,username,orgname,state,loginname,ctime,orgId,note from e_user where id="+ids);
				while(rs.next()){
					User user = new User();
					user.setId(rs.getInt(1));
					user.setUsername(rs.getString(2));
					user.setOrgname(rs.getString(3));
					user.setState(rs.getString(4));
					user.setLoginname(rs.getString(5));
					user.setCtime(rs.getDate(6));
					user.setOrgId(rs.getString(7));
					user.setNote(rs.getString(8));
					entity = user;
					
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
				rs = sta.executeQuery("select id,username,orgname,state,loginname,ctime,orgId,note from e_user where id="+ids);
				while(rs.next()){
					User user = new User();
					user.setId(rs.getInt(1));
					user.setUsername(rs.getString(2));
					user.setOrgname(rs.getString(3));
					user.setState(rs.getString(4));
					user.setLoginname(rs.getString(5));
					user.setCtime(rs.getDate(6));
					user.setOrgId(rs.getString(7));
					user.setNote(rs.getString(8));
					entity = user;
					
				}
				ConnectionManager.closeAll(rs, sta, conn);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		}
		return "success";
	}
	public String chooseOrg(){
		ids = entity.getOrgId();
		return "success";
	}

	/**
	 * 添加人员信息
	 * 
	 * @return
	 */
	public String userSave() {
		PreparedStatement sta = null;
		try {
			Connection conn = ConnectionManager.getConnection();
			sta = conn
					.prepareStatement("insert into e_user(username,orgname,state,loginname,ctime,orgId,note) values(?,?,?,?,?,?,?)");
			// ID自动增长
			sta.setString(1, entity.getUsername());
			sta.setString(2, entity.getOrgname());
			sta.setString(3, entity.getState());
			sta.setString(4, entity.getLoginname());
			Date date = new Date(System.currentTimeMillis());
			sta.setDate(5, date);
			sta.setString(6, entity.getOrgId());
			sta.setString(7, entity.getNote());
			sta.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		state = "1"; // 插入成功状态
		return "success";
	}
	/**
	 * 修改人员信息
	 * @return
	 */
	public String userEdit() {
		PreparedStatement sta = null;
		try {
			Connection conn = ConnectionManager.getConnection();
			sta = conn.prepareStatement("update e_user set username=?,orgname=?,state=?,loginname=?,orgId=?,note=? where id = ?");
			sta.setString(1, entity.getUsername());
			sta.setString(2, entity.getOrgname());
			sta.setString(3, entity.getState());
			sta.setString(4, entity.getLoginname());
			sta.setString(5, entity.getOrgId());
			sta.setString(6, entity.getNote());
			sta.setInt(7, entity.getId());
			sta.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		state = "1"; // 修改成功状态
		return "success";
	}
	public String userDel(){
		List<String> list = new ArrayList<String>();
		Statement sta = null;
		for(String s: ids.split(",")){
			try {
				Connection conn = ConnectionManager.getConnection();
				sta = conn.createStatement();
				sta.execute("delete from e_user where id = "+s);
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
	public User getEntity() {
		return entity;
	}

	/**
	 * @param entity
	 *            the entity to set
	 */
	public void setEntity(User entity) {
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

	

}
