package com.web.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.dbDAO.WorkDAO;
import com.web.dbTable.Work;

public class WorkServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		String title = req.getParameter("title");
		String startDate = req.getParameter("starttime");
		String endDate = req.getParameter("endtime");
		String content = req.getParameter("content");
		
		System.out.println(title+startDate+endDate+content);
		
		Work work = new Work(title,content,startDate,endDate);
		try {
			WorkDAO workdao = new WorkDAO();
			workdao.insert(work);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
		RequestDispatcher rd = req.getRequestDispatcher("WebPage/TUI/setwork.jsp");
	     rd.forward(req, resp);
	}

}
