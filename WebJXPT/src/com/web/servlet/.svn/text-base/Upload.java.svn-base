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

public class Upload extends HttpServlet {

	String fileName=new String();
	String function=new String();
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/heml:charset=utf-8");
		request.setCharacterEncoding("utf-8");
		String message="";
		int maxSize=50*1024*1024;
		DiskFileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload=new ServletFileUpload(factory);
		try {
			List items=upload.parseRequest(request);
			
			Iterator itr=items.iterator();
			while(itr.hasNext()){
				FileItem item=(FileItem)itr.next();
				if(!item.isFormField()){
					if(item.getName()!=null&&!item.getName().equals("")){
						long upFileSize=item.getSize();
						fileName=item.getName();
						if(upFileSize>maxSize){
							message="您上传的文件太大，请不要超过50M!";
							break;
						}
						File tempFile=new File(fileName);
						@SuppressWarnings("deprecation")
						File file=new File("d:\\",tempFile.getName());
						try{
						item.write(file);
						}catch(Exception e){
						e.printStackTrace();
						message="上传文件出现错误:"+e.getMessage();
						}
					}else {
						message="没有选择上传文件！";
							
					}
					
				}
			}
			} catch (Exception e){
				e.printStackTrace();
				message="上传文件出现错误:"+e.getMessage();
			}
			if("".equals(message)){
				message="上传文件成功！";
			}
			request.setAttribute("message", message);
			request.getRequestDispatcher("WebPage/jsp/result.jsp").forward(request, response);
			
			
			
			

			function = fileName.substring(fileName.length()-4
					, fileName.length());
			HttpSession session =request.getSession();
			String sno=(String) session.getAttribute("sno");
			
			System.out.println(fileName);
			System.out.println(function);
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
			try {
				exampledao.insert(fileName, function,  sno);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	}

	

}
