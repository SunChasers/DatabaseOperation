package com.web.dbDAO;

import java.sql.SQLException;
import java.sql.Statement;

import com.web.server.ConnectionServer;

public class ExampleDAO {
	private Statement s;
	private ConnectionServer connectionserver;
	public ExampleDAO() throws ClassNotFoundException, SQLException{
		connectionserver=new ConnectionServer();
		s=connectionserver.connect();//ʹ���������ݿ���ر�����
	}
	/**
	 * ����
	 * @throws SQLException 
	 */
	public void insert(String sql) throws SQLException{
		connectionserver.closedb();//�ر����ӣ��ͷ���Դ
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
}
