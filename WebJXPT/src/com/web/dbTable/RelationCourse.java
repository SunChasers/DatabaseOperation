package com.web.dbTable;

public class RelationCourse {
  private int ID;//���ID
  private String course_name;//�γ���
  private String course_introduce;//��ؿγ̽���
  /**
   * ���캯��
   */
 public RelationCourse(){
	  
  }
public int getID() {
	return ID;
}
public String getCourse_name() {
	return course_name;
}
public String getCourse_introduce() {
	return course_introduce;
}
public void setID(int iD) {
	ID = iD;
}
public void setCourse_name(String course_name) {
	this.course_name = course_name;
}
public void setCourse_introduce(String course_introduce) {
	this.course_introduce = course_introduce;
}
  
}
