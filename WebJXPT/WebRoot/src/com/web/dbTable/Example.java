package com.web.dbTable;

import java.sql.Date;

public class Example {
    private int ID;//实例ID
    private String example_name;//实例名称
    private Date uploaded_date;//上传日期
    private int download_times;//下载次数
    private String example_url;//文档储存url
    private String sno;//编号
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
