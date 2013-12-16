package com.web.dbDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.web.dbTable.Forums_request;
import com.web.dbTable.RelationCourse;
import com.web.server.ConnectionServer;

public class RelationCourseDAO {
	private Statement s;
	private ConnectionServer connectionserver;
	private Connection conn;
	private PreparedStatement ps;
	public RelationCourseDAO() throws ClassNotFoundException, SQLException{
		connectionserver=new ConnectionServer();
		s=connectionserver.connect();//使用完了数据库请关闭连接
		conn = connectionserver.getCon();
	}
	/**
	 * 插入
	 * @throws SQLException 
	 */
	public void insert(RelationCourse relationcourse) throws SQLException{
		List<RelationCourse> list=query();
		int ID=list.size()+1;
		String sql="insert into relationCourse(ID,course_name,course_introduce) values(?,?,?)";
		ps =conn.prepareStatement(sql);
		ps.setInt(1, ID);
		ps.setString(2, relationcourse.getCourse_name());
		ps.setString(3, relationcourse.getCourse_introduce());
		ps.executeUpdate();
		connectionserver.closedb();//关闭连接，释放资源
	}
	/**
	 * 删除
	 * @throws SQLException 
	 */
	public void delete(String sql) throws SQLException{
		connectionserver.closedb();//关闭连接，释放资源
	}
	/**
	 * 修改
	 * @throws SQLException 
	 */
	public void modify(String sql) throws SQLException{
		connectionserver.closedb();//关闭连接，释放资源
	}
	/*
	 * 查询
	 */
	public List<RelationCourse> query() throws SQLException{
		List<RelationCourse> list=new ArrayList<RelationCourse>();
		String sql="select * from relationCourse";
		ps =conn.prepareStatement(sql);
		ResultSet resultset=ps.executeQuery();
		while(resultset.next()){
			RelationCourse relationcourse=new RelationCourse();
			relationcourse.setID(resultset.getInt(1));
			relationcourse.setCourse_name(resultset.getString(2));
			relationcourse.setCourse_introduce(resultset.getString(3));
			list.add(relationcourse);
		}
		return list;
	}
	/*
	 * 通过ID查询
	 */
	public RelationCourse  queryID(String ID) throws SQLException{
		RelationCourse relationcourse=new RelationCourse();
		String sql="select *from relationCourse where ID="+ID;
		ps =conn.prepareStatement(sql);
		ResultSet resultset=ps.executeQuery();
		while(resultset.next()){
			relationcourse.setID(resultset.getInt(1));
			relationcourse.setCourse_name(resultset.getString(2));
			relationcourse.setCourse_introduce(resultset.getString(3));
		}
		return relationcourse;
	}
	/*
	 * 通过查询
	 */
	public RelationCourse  querycoursename(String coursename) throws SQLException{
		RelationCourse relationcourse=new RelationCourse();
		String sql="select *from relationCourse where course_name="+coursename;
		ps =conn.prepareStatement(sql);
		ResultSet resultset=ps.executeQuery();
		while(resultset.next()){
			relationcourse.setID(resultset.getInt(1));
			relationcourse.setCourse_name(resultset.getString(2));
			relationcourse.setCourse_introduce(resultset.getString(3));
		}
		return relationcourse;
	}
}
