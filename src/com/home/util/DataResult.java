package com.home.util;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class DataResult {
	private List<Map<String, Object>> resultList; //结果集 
	/**
	 * 每页记录数
	 */
	private int pageSize = 10;
	/**
	 * 当前页
	 */
	private int currentPage = 1;
	/**
	 * 总记录数
	 */
	private int totalSize;
	/**
	 * 总页数
	 */
	private int totalPage;
	
	
	
	public DataResult runDictionary(String str, String title) {
		String[] mapStr = str.trim().split(",");
		Map<String, String> dictionary = new HashMap<String, String>();
		for (String keyValue : mapStr) {
			String[] node = keyValue.split(":");
			dictionary.put(node[0], node[1]);
		}
		runDictionary(dictionary, title);
		return this;
	}
	
	public DataResult runDictionary(Map<String, String> dictionary, String title) {
		if(resultList!=null&&resultList.size()!=0){
			for (Map<String, Object> node : resultList) {
				String key = String.valueOf(node.get(title));
				Object value = dictionary.get(key);
				if (value != null) {
					node.put(title, value);
				}
			}
		}
		return this;
	}
	/**
	 * @return the pageSize
	 */
	public int getPageSize() {
		return pageSize;
	}
	/**
	 * @param pageSize the pageSize to set
	 */
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	/**
	 * @return the currentPage
	 */
	public int getCurrentPage() {
		return currentPage;
	}
	/**
	 * @param currentPage the currentPage to set
	 */
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	/**
	 * @return the totalSize
	 */
	public int getTotalSize() {
		return totalSize;
	}
	/**
	 * @param totalSize the totalSize to set
	 */
	public void setTotalSize(int totalSize) {
		this.totalSize = totalSize;
	}
	/**
	 * @return the totalPage
	 */
	public int getTotalPage() {
		return totalPage;
	}
	/**
	 * @param totalPage the totalPage to set
	 */
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	/**
	 * @return the resultList
	 */
	public List<Map<String, Object>> getResultList() {
		return resultList;
	}
	/**
	 * @param resultList the resultList to set
	 */
	public void setResultList(List<Map<String, Object>> resultList) {
		this.resultList = resultList;
	}
	
}
