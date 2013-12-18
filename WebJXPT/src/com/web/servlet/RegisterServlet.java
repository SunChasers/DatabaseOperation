package com.web.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.dbDAO.StudentDAO;

public class RegisterServlet extends HttpServlet{

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
		String uname = req.getParameter("uname");
		String school_number = req.getParameter("school_number");
		String Class = req.getParameter("Class");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		String password = req.getParameter("password");
		System.out.print(uname+" "+school_number+" "+Class+" "+email+" "+phone );		
		
		StudentDAO studentdao = new StudentDAO();
			try {
				studentdao.insert(uname, school_number, password, Class, email, phone);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	//发送值给jsp页面
      req.setAttribute("success", "1");
      RequestDispatcher rd = req.getRequestDispatcher("WebPage/jsp/register.jsp");
      rd.forward(req, resp);
	}

}
