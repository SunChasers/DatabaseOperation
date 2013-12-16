<%@ page contentType="text/html; charset=utf-8"%> 
<%@ page language="java"%>
<%@ page import="java.io.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
 String filename=request.getParameter("fname");
 String filepath=request.getParameter("fpath");
%>
<html>
<head>
<title>涓�浇澶�唤��欢</title>
<link href="/journal/CSS/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<%
//寰������疯��虹�杈��娴��
  OutputStream outSream1 = response.getOutputStream();
  //杈����欢�ㄧ�瀛���扮�锛��娆″�杈��娴����00涓�����
  byte b[] = new byte[600];
  String filelink = new String(request.getParameter("downlink")
									.getBytes("ISO-8859-1"), "utf-8");;
  //瑕��杞界���欢锛�
  File fileLoad = new File("d:/",filelink);
  //瀹㈡�浣跨�淇����欢���璇��锛�
  response.setHeader("Content-disposition","attachment; filename="+"example.doc");
  //���瀹㈡���欢��IME绫诲�锛�
  response.setContentType("application/octet-stream");
  //���瀹㈡���欢���搴�
  long fileLength=fileLoad.length();
  String length=String.valueOf(fileLength);
  response.setHeader("Content_Length",length);
  //璇诲���欢锛�苟���缁����/
  FileInputStream in = new FileInputStream(fileLoad);
  int n=0;
  while((n=in.read(b)) != -1) {
   outSream1.write(b,0,n);
  }
%>
</body>
</html>