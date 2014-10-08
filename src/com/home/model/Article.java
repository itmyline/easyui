package com.home.model;

import java.sql.Clob;
import java.sql.Timestamp;

public class Article {
	
	private int id;
	private String name;   //标题
	private Clob content;  //内容
	private int state;     //状态
	private int isNew;     //是否最新
	private int isHot;     //是否最热
	private int isImg;     //是否有图片
	private String fileName;
	private String realName;
	private String filePath;
	private String note;      //备注
	private Timestamp ctime; // 创建时间
	private Timestamp utime; // 修改时间
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
	 * @return the content
	 */
	public Clob getContent() {
		return content;
	}
	/**
	 * @param content the content to set
	 */
	public void setContent(Clob content) {
		this.content = content;
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
	 * @return the isNew
	 */
	public int getIsNew() {
		return isNew;
	}
	/**
	 * @param isNew the isNew to set
	 */
	public void setIsNew(int isNew) {
		this.isNew = isNew;
	}
	/**
	 * @return the isHot
	 */
	public int getIsHot() {
		return isHot;
	}
	/**
	 * @param isHot the isHot to set
	 */
	public void setIsHot(int isHot) {
		this.isHot = isHot;
	}
	/**
	 * @return the isImg
	 */
	public int getIsImg() {
		return isImg;
	}
	/**
	 * @param isImg the isImg to set
	 */
	public void setIsImg(int isImg) {
		this.isImg = isImg;
	}
	/**
	 * @return the fileName
	 */
	public String getFileName() {
		return fileName;
	}
	/**
	 * @param fileName the fileName to set
	 */
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	/**
	 * @return the realName
	 */
	public String getRealName() {
		return realName;
	}
	/**
	 * @param realName the realName to set
	 */
	public void setRealName(String realName) {
		this.realName = realName;
	}
	/**
	 * @return the filePath
	 */
	public String getFilePath() {
		return filePath;
	}
	/**
	 * @param filePath the filePath to set
	 */
	public void setFilePath(String filePath) {
		this.filePath = filePath;
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
