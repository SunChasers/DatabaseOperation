package com.web.dbTable;

import java.sql.Time;

public class Forums_request {
	private int ID;//���ӻظ�����ID
	private String request_content;//�ظ�����
	private String request_time;//�ظ�ʱ��
	private int requesttoID;//�ظ�������ID
	private String sno;
	/**
	 * ���캯��
	 * @return
	 */
	public Forums_request(){
		
	}
	public int getID() {
		return ID;
	}
	public String getRequest_content() {
		return request_content;
	}
	public String getRequest_time() {
		return request_time;
	}
	public int getRequesttoID() {
		return requesttoID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public void setRequest_content(String request_content) {
		this.request_content = request_content;
	}
	public void setRequest_time(String request_time) {
		this.request_time = request_time;
	}
	public void setRequesttoID(int requesttoID) {
		this.requesttoID = requesttoID;
	}
	public String getSno() {
		return sno;
	}
	public void setSno(String sno) {
		this.sno = sno;
	}
	
	
}
