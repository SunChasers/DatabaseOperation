package com.web.forumsServerlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.dbDAO.ForumsDAO;
import com.web.dbTable.Forums;
import com.web.time.TimeOne;

public class WForumsServerlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		 super.doGet(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		HttpSession session = req.getSession(true);//获得session对象
		String sno=(String)session.getAttribute("sno");//或者登入者学号
		System.out.println(sno+"faf");
		int hit=0;//初始点击数量为零
		int requestnum=0;//初始帖子回复数量为0
		String forums_title = req.getParameter("forums_title");// 帖子标题
		String forums_content = req.getParameter("forums_content");// 帖子内容

		String ddate;// 获取当前时间
		TimeOne timeone = new TimeOne();
		ddate = timeone.gettime();
		   ForumsDAO forumsdao = new ForumsDAO();
		
		try {
			Forums forums=new Forums();
			forums.setForums_title(forums_title);
			forums.sethit(hit);
			forums.setPublishID(sno);
			forums.setRequestnum(requestnum);
			forums.setForums_content(forums_content);
			forums.setDate(ddate);
			forumsdao.insert(forums);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher rd = req.getRequestDispatcher("WebPage/jsp/bbs.jsp");//重定向会页面
	    rd.forward(req, resp);	
	}

}
