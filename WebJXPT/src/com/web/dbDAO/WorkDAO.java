package com.web.dbDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.web.dbTable.Student;
import com.web.dbTable.Work;
import com.web.server.ConnectionServer;

public class WorkDAO {

	private Statement s;
	private Connection conn;
	private ConnectionServer connectionserver;

	public WorkDAO() throws ClassNotFoundException, SQLException {
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

	}

	/*
	 * 查询表作业表的所有信息
	 */

	public List<Work> query() {
		String sql = "select * from work";
		List<Work> list = new ArrayList<Work>();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Work work = new Work();
				work.setID(rs.getInt(1));
				work.setWork_title(rs.getString(2));
				work.setWork_content(rs.getString(3));
				work.setStart_date(rs.getString(4));
				work.setEnd_date(rs.getString(5));
				list.add(work);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	/*
	 * 分页查询
	 */
	public List<Work> pageQuery(int currentPage, int pageSize) {
		String sql = "select * from work";
		List<Work> list = new ArrayList<Work>();
		int beginrow = pageSize * (currentPage - 1);// 开始的位置		
		int endrow = currentPage * pageSize;// 终止的位置		
		int currentNum = 0;// 经历的行数
		try {

			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				if (currentNum >= beginrow && currentNum < endrow) {
					Work work = new Work();
					work.setID(rs.getInt(1));
					work.setWork_title(rs.getString(2));
					work.setWork_content(rs.getString(3));
					work.setStart_date(rs.getString(4));
					work.setEnd_date(rs.getString(5));
					list.add(work);
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
		return list;

	}

	/*
	 * 查询数据库获得中的页数
	 */

	public int getPageSize(int count){//获取总的页数
		  int total = 0;
		  String sql = "select count(*) from student"; 
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
	 * 插入
	 * 
	 * @throws SQLException
	 * 
	 */
	
	public int calulateDateCount(){
		String sql="select count(*) from work";
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
	
	/**
	 * 通过学号删除
	 * 
	 * @throws SQLException
	 */

    public boolean delete(int  ID) throws SQLException {
    	String sql="delete from work where ID=?";
    	PreparedStatement ps = conn.prepareStatement(sql);
    	ps.setInt(1, ID);
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
    	String sql="delete from work";
    	PreparedStatement ps = conn.prepareStatement(sql);
    	int de = ps.executeUpdate(); 	
    	if(de<0){
    		return false;
    	}
		return false;
	}
    
	public void insert(Work work) throws SQLException {
		String sql="insert into work (ID,work_title,work_content,start_date,end_date) values(?,?,?,?,?)";
		int count = calulateDateCount();
		int IDcount = count+1;
		PreparedStatement ps =conn.prepareStatement(sql);
		ps.setInt(1, IDcount);
		ps.setString(2, work.getWork_title());
		ps.setString(3, work.getWork_content());
		ps.setString(4, work.getStart_date());
		ps.setString(5, work.getEnd_date());
		int isInsert = ps.executeUpdate();
		if(isInsert>0){
			System.out.println("插入成功");
		}
		connectionserver.closedb();// 关闭连接，释放资源
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
