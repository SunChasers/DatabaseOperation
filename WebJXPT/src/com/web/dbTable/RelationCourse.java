package com.web.dbTable;

public class RelationCourse {
  private int ID;//相关ID
  private String course_name;//课程名
  private String dba;//先修课程
  private String relation;//相关性
  private String course_introduce;//相关课程介绍
  /**
   * 构造函数
   */
  public RelationCourse(){
	  
  }
public int getID() {
	return ID;
}
public String getCourse_name() {
	return course_name;
}
public String getDba() {
	return dba;
}
public String getRelation() {
	return relation;
}
public String getCourse_introduce() {
	return course_introduce;
}
  
}
