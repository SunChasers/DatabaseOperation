package com.web.dbDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.web.dbTable.Forums;
import com.web.dbTable.Forums_request;
import com.web.server.ConnectionServer;

public class Forums_requestDAO {
	private ConnectionServer connectionserver;
	private Statement s;
	private Connection conn;
	private List<Forums_request> forums_requestlist;
	private PreparedStatement ps;
	public Forums_requestDAO() throws ClassNotFoundException, SQLException{
		forums_requestlist=new ArrayList<Forums_request>();
		connectionserver=new ConnectionServer();
		s=connectionserver.connect();//使用完了数据库请关闭连接
		conn = connectionserver.getCon();
		System.out.print("数据库连接成功");
	}
	/**
	 * 插入
	 * @throws SQLException 
	 */
	public void insert(Forums_request forums_request) throws SQLException{
		//查询数据库，获取ID
		//connectionserver.closedb();//关闭连接，释放资源
		int ID=queryall().size()+1;
		String sql="insert into forums_request(ID,request_content,request_time,requesttoID,sno) values(?,?,?,?,?)";
		ps =conn.prepareStatement(sql);
		ps.setInt(1, ID);
		ps.setString(2, forums_request.getRequest_content());
		ps.setString(3, forums_request.getRequest_time());
		ps.setInt(4, forums_request.getRequesttoID());
		ps.setString(5, forums_request.getSno());
		ps.executeUpdate();
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
	 * 查询表，返回结果
	 */
	public List<Forums_request> queryall() throws SQLException{
		String sql ="select * from forums_request";
		ps =conn.prepareStatement(sql);
		ResultSet resultset=ps.executeQuery();
		List<Forums_request> alllist=new ArrayList<Forums_request>();
		while(resultset.next()){
			Forums_request forums_request=new Forums_request();
			forums_request.setID(resultset.getInt(1));
			forums_request.setRequest_content(resultset.getString(2));
			forums_request.setRequest_time(resultset.getString(3));
			forums_request.setRequesttoID(resultset.getInt(4));
			forums_request.setSno(resultset.getString(5));
			alllist.add(forums_request);
		}
		return alllist;
	}
	/**
	 *查询,返回结果
	 * @throws SQLException 
	 */
	public List<Forums_request> query(String ID) throws SQLException{
		//通过ID查询
		String sql="select * from forums_request where requesttoID="+ID;
		ps =conn.prepareStatement(sql);
		ResultSet resultset=ps.executeQuery();
		//需要的列是forums_title hit requestnum date
		while(resultset.next()){
			Forums_request forums_request=new Forums_request();
			forums_request.setID(resultset.getInt(1));
			forums_request.setRequest_content(resultset.getString(2));
			forums_request.setRequest_time(resultset.getString(3));
			forums_request.setRequesttoID(resultset.getInt(4));
			forums_request.setSno(resultset.getString(5));
			forums_requestlist.add(forums_request);
		}
		//connectionserver.closedb();//关闭连接，释放资源
		return forums_requestlist;
	}
}
