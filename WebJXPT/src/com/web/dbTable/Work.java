package com.web.dbTable;

import java.sql.Date;

public class Work {
	private int ID;//��ҵID
	private String work_title;//��ҵ����
	private String work_content;//��ҵ����
	private String start_date;//��ҵ��ʼʱ��
	private String end_date;//��ҵ��ֹ����
	/*
	 * ���캯������Ҫ��Ӳ���
	 */
	public Work(){
		
	}
	public Work(String work_title, String work_content, String start_date, String end_date){
		
		this.work_title=work_title;
		this.work_content=work_content;
		this.start_date=start_date;
		this.end_date=end_date;
	}
	
	public void setID(int iD) {
		ID = iD;
	}

	public void setWork_title(String work_title) {
		this.work_title = work_title;
	}

	public void setWork_content(String work_content) {
		this.work_content = work_content;
	}

	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}

	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}

	public int getID() {
		return ID;
	}
	
	public String getWork_title() {
		return work_title;
	}
	
	public String getWork_content() {
		return work_content;
	}
	
	public String getStart_date() {
		return start_date;
	}
	
	public String getEnd_date() {
		return end_date;
	}
	
}
