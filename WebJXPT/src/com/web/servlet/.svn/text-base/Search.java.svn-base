package com.web.servlet;

import java.io.*;
import java.sql.SQLException;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;
import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.disk.*;
import org.apache.commons.fileupload.servlet.*;

import com.web.dbDAO.ExampleDAO;
import com.web.dbTable.Example;

public class Search extends HttpServlet {

	String fileName;
	private List<Example> slist;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			
			
			
			
			request.setCharacterEncoding("utf-8");
			String function = request.getParameter("function");
			
			ExampleDAO exampledao = null;
			try {
				exampledao = new ExampleDAO();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			slist=exampledao.searchpageQuery(1, 10, function);
			
	}

	

}
