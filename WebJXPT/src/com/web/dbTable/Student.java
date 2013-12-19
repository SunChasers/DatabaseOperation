package com.web.dbTable;

public class Student {
 private String sno;//学号
 private String name;//姓名
 private String classes;//班级
 private String phone;//电话
 private String mailbox;//邮箱
 private String picture_url;//照片储存路径
 private String password;//密码
 private String sign;//签名
 private String filename;
 /*
  * 构造函数
  */
 public Student(){
	 
 }
public String getSno() {
	return sno;
}
public String getName() {
	return name;
}
public String getClasses() {
	return classes;
}
public String getPhone() {
	return phone;
}
public String getMailbox() {
	return mailbox;
}
public String getPicture_url() {
	return picture_url;
}
public String getPassword() {
	return password;
}
public String getSign() {
	return sign;
}
public void setSno(String sno) {
	this.sno = sno;
}
public void setName(String name) {
	this.name = name;
}
public void setClasses(String classes) {
	this.classes = classes;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public void setMailbox(String mailbox) {
	this.mailbox = mailbox;
}
public void setPicture_url(String picture_url) {
	this.picture_url = picture_url;
}
public void setPassword(String password) {
	this.password = password;
}
public void setSign(String sign) {
	this.sign = sign;
}

}
