package com.web.dbTable;

public class Student {
 private String sno;//ѧ��
 private String name;//����
 private String classes;//�༶
 private String phone;//�绰
 private String mailbox;//����
 private String picture_url;//��Ƭ����·��
 private String password;//����
 private String sign;//ǩ��
 private String filename;
 /*
  * ���캯��
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
