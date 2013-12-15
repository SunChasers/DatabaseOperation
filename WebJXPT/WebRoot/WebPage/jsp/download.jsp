<%@ page contentType="text/html; charset=gb2312"%> 
<%@ page language="java"%>
<%@ page import="java.io.*"%>
<% request.setCharacterEncoding("gb2312"); %>
<%
 String filename=request.getParameter("fname");
 String filepath=request.getParameter("fpath");
%>
<html>
<head>
<title>下载备份文件</title>
<link href="/journal/CSS/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<%
//得到向客户输出的输出流：
  OutputStream outSream1 = response.getOutputStream();
  //输出文件用的字节数组，第次向输出流发送600个字节：
  byte b[] = new byte[600];
  //要下载的文件：
  File fileLoad = new File("d:/","a1.doc");
  //客户使用保存文件的对话框：
  response.setHeader("Content-disposition","attachment; filename="+"a1.doc");
  //通知客户文件的MIME类型：
  response.setContentType("application/octet-stream");
  //通知客户文件的长度
  long fileLength=fileLoad.length();
  String length=String.valueOf(fileLength);
  response.setHeader("Content_Length",length);
  //读取文件，并发送给客户//
  FileInputStream in = new FileInputStream(fileLoad);
  int n=0;
  while((n=in.read(b)) != -1) {
   outSream1.write(b,0,n);
  }
%>
</body>
</html>