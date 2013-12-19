package com.web.dbDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.web.dbTable.Notice;
import com.web.dbTable.Work;
import com.web.server.ConnectionServer;

public class NoticeDAO {
	private Statement s;
	private Connection conn;
	private ConnectionServer connectionserver;

	public NoticeDAO() throws ClassNotFoundException, SQLException {
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

	/**
	 * 插入
	 * 
	 * @throws SQLException
	 */

	public List<Notice> pageQuery(int currentPage, int pageSize) {
		String sql = "select * from notice";
		List<Notice> list = new ArrayList<Notice>();
		int beginrow = pageSize * (currentPage - 1);// 开始的位置
		int endrow = currentPage * pageSize;// 终止的位置
		int currentNum = 0;// 经历的行数

		try {

			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				if (currentNum >= beginrow && currentNum < endrow) {
					Notice notic = new Notice();
					notic.setID(rs.getInt(1));
					notic.setNotice_content(rs.getString(2));
					notic.setNotice_send_date(rs.getString(3));
					list.add(notic);
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

	public int getPageSize(int count) {// 获取总的页数
		int total = 0;
		String sql = "select count(*) from notice";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				int records = rs.getInt(1);
				if (records % count == 0) {
					total = records / count;
				} else {
					total = records / count + 1;
				}
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return total;
	}
    //获得数据行数
	public int calulateDateCount() {
		String sql = "select count(*) from notice";
		int count = 0;
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				count = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return count;
	}

	public void insert(Notice notice) throws SQLException{
		String sql="insert into notice(ID,notice_content,notice_send_date)values(?,?,?)";
		int count = calulateDateCount();
		int ID = count+1;
		PreparedStatement ps = conn.prepareStatement(sql);		
		ps.setInt(1,ID);
		
		ps.setString(2, notice.getNotice_content());
		ps.setString(3, notice.getNotice_send_date());
		int isInsert = ps.executeUpdate();
		
		if(isInsert>0){
			System.out.print("插入成功");
		}
		connectionserver.closedb();//关闭连接，释放资源
	}

	/**
	 * 删除
	 * 
	 * @throws SQLException
	 */
	public void delete(String sql) throws SQLException {
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
