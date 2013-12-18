package com.web.forumsServerlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.dbDAO.Forums_requestDAO;
import com.web.dbTable.Forums_request;
import com.web.time.TimeOne;

public class MyrequestServerlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doPost(req, resp);
		req.setCharacterEncoding("utf-8");
		String request_content=req.getParameter("request_content");
		HttpSession session = req.getSession(true);//获得session对象
		String sno=(String)session.getAttribute("sno");//或者登入者学号
		//获取ID
		int ID=Integer.parseInt((String)session.getAttribute("requesttoID"));
		System.out.println("me"+ID);
		System.out.println(sno+"mmm");
		System.out.println(request_content);
		String request_time=TimeOne.gettime();//获取当前时间
		//将数据插入的相应的表中
		try {
			Forums_requestDAO forums_requestdao=new Forums_requestDAO();
			Forums_request forums_request=new Forums_request();
			forums_request.setRequest_content(request_content);
			forums_request.setRequest_time(request_time);
			forums_request.setRequesttoID(ID);
			forums_request.setSno(sno);
			forums_requestdao.insert(forums_request);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher rd = req.getRequestDispatcher("WebPage/jsp/myrequest.jsp?ID="+ID);//重定向会页面
	     rd.forward(req, resp);
		
	}

}
