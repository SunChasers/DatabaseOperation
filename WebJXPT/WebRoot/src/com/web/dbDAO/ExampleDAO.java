package com.web.dbDAO;

import java.sql.SQLException;
import java.sql.Statement;

import com.web.server.ConnectionServer;

public class ExampleDAO {
	private Statement s;
	private ConnectionServer connectionserver;
	public ExampleDAO() throws ClassNotFoundException, SQLException{
		connectionserver=new ConnectionServer();
		s=connectionserver.connect();//使用完了数据库请关闭连接
	}
	/**
	 * 插入
	 * @throws SQLException 
	 */
	public void insert(String sql) throws SQLException{
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
}
