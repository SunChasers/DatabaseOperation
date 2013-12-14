package com.web.dbTable;

public class Forums {
	private int ID;//帖子代理ID
	private String forums_title;//帖子标题
    private int hit;//帖子点击数
    private String publishID;//帖子发布者ID
    private int requestnum;//回复数量
    private String forums_content;//内容
    private String date;//帖子发布时间
    /**
     * 构造函数
     */
    public Forums(){
    	
    }
    public Forums(String forums_title,String forums_content,String date){
    	this.forums_title=forums_title;
    	this.forums_content=forums_content;
    	this.date=date;
    }
	public int getID() {
		return ID;
	}
	public String getForums_title() {
		return forums_title;
	}
	public int gethit() {
		return hit;
	}
	public String getPublishID() {
		return publishID;
	}
	public int getRequestnum() {
		return requestnum;
	}
	public String getForums_content() {
		return forums_content;
	}
	public String getDate() {
		return date;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public void setForums_title(String forums_title) {
		this.forums_title = forums_title;
	}
	public void sethit(int hit) {
		this.hit = hit;
	}
	public void setPublishID(String publishID) {
		this.publishID = publishID;
	}
	public void setRequestnum(int requestnum) {
		this.requestnum = requestnum;
	}
	public void setForums_content(String forums_content) {
		this.forums_content = forums_content;
	}
	public void setDate(String date) {
		this.date = date;
	}
    
}
