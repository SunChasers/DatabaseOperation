package com.web.dbDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.web.dbTable.Student;
import com.web.server.ConnectionServer;

public class StudentDAO {
	private Statement s;
	private Connection conn;
	private ConnectionServer connectionserver;

	public StudentDAO() {
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
		// 使用完了数据库请关闭连接
	}

	/**
	 * 插入
	 * 
	 * @throws SQLException
	 */
	public void insert(String sql) throws SQLException {
		connectionserver.closedb();// 关闭连接，释放资源
	}

	// 插入操作
	public void insert(String uname, String schoolnumber, String password,
			String Class, String email, String phone) throws SQLException {
//		String sql = "insert into student (sno, name,pass_word,class,phone,mailbox) values("
//				+ schoolnumber + uname + password + Class + phone + email + ")";
		String sql = "insert into student (sno, name,pass_word,class,phone,mailbox) values(?,?,?,?,?,?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, schoolnumber);
		ps.setString(2, uname);
		ps.setString(3, password);
		ps.setString(4, Class);
		ps.setString(5, phone);
		ps.setString(6, email);
        ps.executeQuery();
		connectionserver.closedb();// 关闭连接，释放资源
	}
	
	//查询返回密码
	public String query(String sno){
		String sql = "select pass_word from student where sno=?";
		String password=null;
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, sno);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				password = rs.getString(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.print("查询异常");
			e.printStackTrace();
		}finally{
			
		}
		return password;
	}
	
//返回个人了信息
	public List<Student> queryInfor(String sno){
		String sql = "select * from student where sno=?";
		List<Student>list = new ArrayList<Student>();
		try {
			System.out.print("dsfjkds"+sno);
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, sno);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				Student student =new Student();
				student.setSno(rs.getString(1));
				student.setName(rs.getString(2));
				student.setClasses(rs.getString(3));
				student.setPhone(rs.getString(4));
				student.setMailbox(rs.getString(5));
				list.add(student);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.print("查询异常");
			e.printStackTrace();
		}finally{
			
		}
		return list;
	}
	
	public List<Student> query(){
		String sql = "select * from student";
		List<Student>list = new ArrayList<Student>();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				Student student =new Student();
				student.setSno(rs.getString(1));
				student.setName(rs.getString(2));
				student.setClasses(rs.getString(3));
				student.setPhone(rs.getString(4));
				student.setMailbox(rs.getString(5));
				list.add(student);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.print("查询异常");
			e.printStackTrace();
		}finally{
			
		}
		return list;
	}
	/**
	 * 通过学号删除
	 * 
	 * @throws SQLException
	 */

    public boolean delete(String  sno) throws SQLException {
    	String sql="delete from student where sno=?";
    	PreparedStatement ps = conn.prepareStatement(sql);
    	ps.setString(1, sno);
    	int de = ps.executeUpdate();
    	
    	if(de<0){
    		return false;
    	}
		return false;
	}
    
    /**
	 * 删除所有
	 *  
	 * @throws SQLException
	 */
    
    public boolean deleteall() throws SQLException {
    	String sql="delete from student";
    	PreparedStatement ps = conn.prepareStatement(sql);
    	int de = ps.executeUpdate(); 	
    	if(de<0){
    		return false;
    	}
		return false;
	}
	/**
	 * 修改
	 * 
	 * @throws SQLException
	 */
	public void modify(String sql) throws SQLException {
		connectionserver.closedb();// 关闭连接，释放资源
	}
}
