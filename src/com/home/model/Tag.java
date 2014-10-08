package com.home.model;

import java.sql.Timestamp;

public class Tag {
	private int id;
	private String name;
	private String sort;  //排序
	private int state;    //状态
	private String note;  //备注
	private Timestamp ctime;  //创建时间
	private Timestamp utime; //修改时间
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the sort
	 */
	public String getSort() {
		return sort;
	}
	/**
	 * @param sort the sort to set
	 */
	public void setSort(String sort) {
		this.sort = sort;
	}
	/**
	 * @return the state
	 */
	public int getState() {
		return state;
	}
	/**
	 * @param state the state to set
	 */
	public void setState(int state) {
		this.state = state;
	}
	/**
	 * @return the note
	 */
	public String getNote() {
		return note;
	}
	/**
	 * @param note the note to set
	 */
	public void setNote(String note) {
		this.note = note;
	}
	/**
	 * @return the ctime
	 */
	public Timestamp getCtime() {
		return ctime;
	}
	/**
	 * @param ctime the ctime to set
	 */
	public void setCtime(Timestamp ctime) {
		this.ctime = ctime;
	}
	/**
	 * @return the utime
	 */
	public Timestamp getUtime() {
		return utime;
	}
	/**
	 * @param utime the utime to set
	 */
	public void setUtime(Timestamp utime) {
		this.utime = utime;
	}
	
}
