package com.web.dbTable;

import java.sql.Date;

public class Example {
    private int ID;//ʵ��ID
    private String example_name;//ʵ������
    private Date uploaded_date;//�ϴ�����
    private int download_times;//���ش���
    private String example_url;//�ĵ�����url
    private String sno;//���
    public Example(){
    	
    }
	public int getID() {
		return ID;
	}
	public String getExample_name() {
		return example_name;
	}
	public Date getUploaded_date() {
		return uploaded_date;
	}
	public int getDownload_times() {
		return download_times;
	}
	public String getExample_url() {
		return example_url;
	}
	public String getSno() {
		return sno;
	}
    
   }
