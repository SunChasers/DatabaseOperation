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
		s=connectionserver.connect();//ʹ���������ݿ���ر�����
		conn = connectionserver.getCon();
		System.out.print("���ݿ����ӳɹ�");
	}
	/**
	 * ����
	 * @throws SQLException 
	 */
	public void insert(Forums_request forums_request) throws SQLException{
		//��ѯ���ݿ⣬��ȡID
		//connectionserver.closedb();//�ر����ӣ��ͷ���Դ
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
	 * ɾ��
	 * @throws SQLException 
	 */
	public void delete(String sql) throws SQLException{
		connectionserver.closedb();//�ر����ӣ��ͷ���Դ
	}
	/**
	 * �޸�
	 * @throws SQLException 
	 */
	public void modify(String sql) throws SQLException{
		connectionserver.closedb();//�ر����ӣ��ͷ���Դ
	}
	/*
	 * ��ѯ�����ؽ��
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
	 *��ѯ,���ؽ��
	 * @throws SQLException 
	 */
	public List<Forums_request> query(String ID) throws SQLException{
		//ͨ��ID��ѯ
		String sql="select * from forums_request where requesttoID="+ID;
		ps =conn.prepareStatement(sql);
		ResultSet resultset=ps.executeQuery();
		//��Ҫ������forums_title hit requestnum date
		while(resultset.next()){
			Forums_request forums_request=new Forums_request();
			forums_request.setID(resultset.getInt(1));
			forums_request.setRequest_content(resultset.getString(2));
			forums_request.setRequest_time(resultset.getString(3));
			forums_request.setRequesttoID(resultset.getInt(4));
			forums_request.setSno(resultset.getString(5));
			forums_requestlist.add(forums_request);
		}
		//connectionserver.closedb();//�ر����ӣ��ͷ���Դ
		return forums_requestlist;
	}
}
