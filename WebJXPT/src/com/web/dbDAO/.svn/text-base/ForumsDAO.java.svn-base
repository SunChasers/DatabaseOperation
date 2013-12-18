package com.web.dbDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.web.dbTable.Forums;
import com.web.server.ConnectionServer;

public class ForumsDAO {
	private ConnectionServer connectionserver;
	private Statement s;
	private Connection conn;
	private List<Forums> forumslist;
	private PreparedStatement ps;
	public ForumsDAO(){
		forumslist =new ArrayList<Forums>();
		connectionserver = new ConnectionServer();
		try {
			s=connectionserver.connect();
			conn = connectionserver.getCon();
			System.out.print("数据库连接成功");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.print("数据库连接异常");
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 使用完了数据库请关闭连接
	}
	/**
	 * 插入
	 * @throws SQLException 
	 */
	public void insert(Forums forums) throws SQLException{
		List<Forums> forumslist1=new ArrayList<Forums>();
		forumslist1=query();
		int ID=forumslist1.size()+1;
		String sql = "insert into forums(ID,forums_title,hit,requestnum,forums_content,date) values(?,?,?,?,?,?)";
	    ps = conn.prepareStatement(sql);
	    ps.setInt(1, ID);
		ps.setString(2,forums.getForums_title());
		ps.setInt(3, forums.gethit());
		//ps.setString(3, forums.getPublishID());
		ps.setInt(4, forums.getRequestnum());
		ps.setString(5, forums.getForums_content());
		ps.setString(6, forums.getDate());
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
	/**
	 *查询,返回所有的结果
	 * @throws SQLException 
	 */
	public List<Forums> query() throws SQLException{
		String sql="select * from forums";
		ps =conn.prepareStatement(sql);
		ResultSet resultset=ps.executeQuery();
		//需要的列是forums_title hit requestnum date
		while(resultset.next()){
			Forums forums=new Forums();
			forums.setID(resultset.getInt(1));
			forums.setForums_title(resultset.getString(2));
			forums.sethit(resultset.getInt(3));
			forums.setPublishID(resultset.getString(4));
			forums.setRequestnum(resultset.getInt(5));
			forums.setForums_content(resultset.getString(6));
			forums.setDate(resultset.getString(7));
			forumslist.add(forums);
		}
		//connectionserver.closedb();//关闭连接，释放资源
		return forumslist;
	}
}
