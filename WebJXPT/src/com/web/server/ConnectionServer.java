package com.web.server;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionServer {
	private final String JDRIVER="com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private final String CONURL ="jdbc:sqlserver://210.40.16.55:1433;DataBaseName=webteaching";
	private final String USER ="Runningman";
	private final String PWD ="123456";
	private Connection con;
	private Statement s;
	public Statement connect() throws java.lang.ClassNotFoundException, SQLException{
		//������������
		Class.forName(JDRIVER);
		//�������ݿ�url
	     con =DriverManager.getConnection(CONURL, USER, PWD);
		 s =con.createStatement();
		//����һ�����������ֶε�ѧ����student
//		String query ="create table s("+"id char(10)"+")";
		//ִ��sql����
//		s.execute(query);
		return s;
		//�ͷ�Statement�����ӵ����ݿ⼰JDBC��Դ
//		s.close();
		//�ر������ݿ������
//		con.close();
	}
	
	public Connection getCon() throws java.lang.ClassNotFoundException, SQLException{
		return con;

	}
	public void closedb() throws SQLException{
		s.close();
		con.close();
	}
}
