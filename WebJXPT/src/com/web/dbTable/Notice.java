package com.web.dbTable;

import java.sql.Date;

public class Notice {
	private int ID;// ֪ͨID
	private String notice_content;// ֪ͨ����
	private String notice_send_date;// ֪ͨ��������

	public void setID(int iD) {
		ID = iD;
	}

	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}

	public void setNotice_send_date(String notice_send_date) {
		this.notice_send_date = notice_send_date;
	}

	public Notice() {

	}

	public int getID() {
		return ID;
	}

	public String getNotice_content() {
		return notice_content;
	}

	public String getNotice_send_date() {
		return notice_send_date;
	}
}
