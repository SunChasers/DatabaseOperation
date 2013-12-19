package com.web.dbDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.web.dbTable.Book;
import com.web.dbTable.RelationCourse;
import com.web.server.ConnectionServer;

public class BookDAO {
	private Statement s;
	private Connection conn;
	private PreparedStatement ps;
	private ConnectionServer connectionserver;
	public BookDAO(){
		connectionserver = new ConnectionServer();
		try {
			connectionserver.connect();
			conn = connectionserver.getCon();
			s = connectionserver.connect();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.print("数据库连接异常");
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 使用完了数据库请关闭连接//使用完了数据库请关闭连接
	}
	/**
	 * 插入
	 * @throws SQLException 
	 */
	public void insert(Book book) throws SQLException{
		List<Book> list=query();
		int ID=list.size()+1;
		String sql="insert into book(ID,book_name,book_introduce) values(?,?,?)";
		ps =conn.prepareStatement(sql);
		ps.setInt(1, ID);
		ps.setString(2, book.getBook_name());
		ps.setString(3, book.getBook_introduce());
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
	/*
	 * 查询
	 */
	public List<Book> query() throws SQLException{
		List<Book> list=new ArrayList<Book>();
		String sql="select * from book";
		ps =conn.prepareStatement(sql);
		ResultSet resultset=ps.executeQuery();
		while(resultset.next()){
			Book book=new Book();
			book.setID(resultset.getInt(1));
			book.setBook_name(resultset.getString(2));
			book.setBook_introduce(resultset.getString(3));
			list.add(book);
		}
		return list;
	}
}
