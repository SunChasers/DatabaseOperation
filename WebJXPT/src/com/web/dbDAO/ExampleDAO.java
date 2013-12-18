package com.web.dbDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.web.dbTable.Example;
import com.web.dbTable.Notice;
import com.web.server.ConnectionServer;

public class ExampleDAO {
	private Statement s;
	private Connection conn;
	private ConnectionServer connectionserver;
	public ExampleDAO() throws ClassNotFoundException, SQLException{
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
	public void insert(String sql) throws SQLException{
		connectionserver.closedb();//关闭连接，释放资源
	}
	
	
	
	public void insert(String example_name, String example_function,String sno) throws SQLException {
//		String sql = "insert into student (sno, name,pass_word,class,phone,mailbox) values("
//				+ schoolnumber + uname + password + Class + phone + email + ")";
		String sql = "insert into example (ID,example_name,example_function,sno) values(?,?,?,?)";
		int count = calulateDateCount();
		int ID=count+1;
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1,ID);
		ps.setString(2, example_name);
		ps.setString(3, example_function);
		ps.setString(4, sno);		
        ps.executeQuery();
		//connectionserver.closedb();// 关闭连接，释放资源
	}
	
	
	public int calulateDateCount(){
		String sql="select count(*) from example";
		int count=0;
		try {
			PreparedStatement ps =conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				count=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return count;
	}
	
	
	
	public List<Example> pageQuery(int currentPage, int pageSize) {
		String sql = "select * from example";
		List<Example> elist = new ArrayList<Example>();
		int beginrow = pageSize * (currentPage - 1);// 开始的位置
		int endrow = currentPage * pageSize;// 终止的位置
		int currentNum = 0;// 经历的行数

		try {

			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				if (currentNum >= beginrow && currentNum < endrow) {
					Example example = new Example();
					example.setID(rs.getInt(1));
					example.setexample_name(rs.getString(2));
					example.setFiletype(rs.getString(4));
					
					elist.add(example);
					if (currentNum == endrow - 1) {
						break;
					}
				}
				currentNum++;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return elist;
	}
	
	
	public List<Example> searchpageQuery(int currentPage, int pageSize,String function) {
		String sql = "select example_name from example where example_function=?";
		List<Example> elist = new ArrayList<Example>();
		int beginrow = pageSize * (currentPage - 1);// 开始的位置
		int endrow = currentPage * pageSize;// 终止的位置
		int currentNum = 0;// 经历的行数

		try {

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,function);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				if (currentNum >= beginrow && currentNum < endrow) {
					Example example = new Example();
					example.setexample_name(rs.getString(1));
					elist.add(example);
					if (currentNum == endrow - 1) {
						break;
					}
				}
				currentNum++;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return elist;

	}
	
	
	
	
	
	
	public int getPageSize(int count){//获取总的页数
		  int total = 0;
		  String sql = "select count(*) from example"; 
		  try{
			  PreparedStatement ps = conn.prepareStatement(sql);
				ResultSet rs = ps.executeQuery();
		   if(rs.next()){
		        int records = rs.getInt(1);
		        if(records%count==0){
		         total = records / count;
		        }else{
		         total = records / count + 1;
		       }
		      }
		    }catch(Exception ex){
		     ex.printStackTrace();
		    }
		    return total;
		  }
	
	
	/**
	 * 通过学号删除
	 * 
	 * @throws SQLException
	 */

    public boolean delete(String  ID) throws SQLException {
    	String sql="delete from example where ID=?";
    	PreparedStatement ps = conn.prepareStatement(sql);
    	ps.setString(1, ID);
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
    	String sql="delete from example";
    	PreparedStatement ps = conn.prepareStatement(sql);
    	int de = ps.executeUpdate(); 	
    	if(de<0){
    		return false;
    	}
		return false;
	}

	
	public boolean insert(Example example){
		String sql="insert into example (ID,example_name,uploaded_tate)";
		return true;
	}

	/**
	 * 修改
	 * @throws SQLException 
	 */
	public void modify(String sql) throws SQLException{
		connectionserver.closedb();//关闭连接，释放资源
	}
}
