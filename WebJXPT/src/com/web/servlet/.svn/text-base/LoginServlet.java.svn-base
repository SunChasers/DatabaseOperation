package com.web.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.dbDAO.StudentDAO;

public class LoginServlet extends HttpServlet{

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
		req.setCharacterEncoding("utf-8");
		String sno = req.getParameter("sno");
		String upassword = req.getParameter("password");
		StudentDAO student = new StudentDAO();
		
		String studentPassword = student.query(sno);
		System.out.println(studentPassword);
	   //发送值给jsp页面
		if(upassword.equals(studentPassword)){
			System.out.println(studentPassword);
			 req.setAttribute("success", "1");
		     RequestDispatcher rd = req.getRequestDispatcher("WebPage/jsp/login.jsp");
		     rd.forward(req, resp);
		}

	}

}
