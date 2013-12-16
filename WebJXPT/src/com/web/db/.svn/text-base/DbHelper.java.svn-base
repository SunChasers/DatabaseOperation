package com.web.db;

import java.sql.SQLException;
import java.sql.Statement;
import com.web.server.ConnectionServer;
public class DbHelper {
	private Statement s;
	private ConnectionServer connectionserver;
    public DbHelper(){
    	 connectionserver=new ConnectionServer();
    	 try {
			 s=connectionserver.connect();//使用完了数据库请关闭连接
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
     }
    public void creatTable(String sql) throws SQLException{

		s.execute(sql);   //執行sql命令
		connectionserver.closedb();//關閉連接以及釋放資源
	}
}
