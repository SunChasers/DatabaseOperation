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
		HttpSession session = req.getSession(true);//���session����
		String sno=(String)session.getAttribute("sno");//���ߵ�����ѧ��
		System.out.println(sno+"faf");
		int hit=0;//��ʼ�������Ϊ��
		int requestnum=0;//��ʼ���ӻظ�����Ϊ0
		String forums_title = req.getParameter("forums_title");// ���ӱ���
		String forums_content = req.getParameter("forums_content");// ��������

		String ddate;// ��ȡ��ǰʱ��
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
		RequestDispatcher rd = req.getRequestDispatcher("WebPage/jsp/bbs.jsp");//�ض����ҳ��
	    rd.forward(req, resp);	
	}

}
