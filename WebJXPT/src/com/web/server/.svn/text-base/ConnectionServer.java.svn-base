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
		//加载驱动程序
		Class.forName(JDRIVER);
		//连接数据库url
	     con =DriverManager.getConnection(CONURL, USER, PWD);
		 s =con.createStatement();
		//创建一个含有三个字段的学生表student
//		String query ="create table s("+"id char(10)"+")";
		//执行sql命令
//		s.execute(query);
		return s;
		//释放Statement所连接的数据库及JDBC资源
//		s.close();
		//关闭与数据库的连接
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
