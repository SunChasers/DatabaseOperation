<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String success = (String) request.getAttribute("success");
	String uname = request.getParameter("name");
	String user = null;
	String sno = request.getParameter("sno");
	System.out.println(sno);

	//String sno = null;
	if (success == "1") {
		session.setAttribute("islogin", "110");
		session.setAttribute("sno", sno);
	} else {
		session.setAttribute("islogin", "119");
		session.setAttribute("sno", null);
	}
	
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>登陆</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="WebPage/css/main.css">
<link rel="stylesheet" type="text/css" href="WebPage/css/login.css">
<script type="text/javascript" src="WebPage/js/jquery-1.8.0.js"></script>
<script type="text/javascript" src="WebPage/js/main.js"></script>
</head>

<body class="newBody" id="login">

	<div class="header">
		<div class="logo">
			<div class="logo_guida">
				<img style="width:100px;height:100px;" src="WebPage/img/guida.png">
			</div>
			<div class="login">
				<div class="login_01">
				    <%if(session.getAttribute("islogin").equals("110")){%>
				    <a href="WebPage/jsp/login.jsp">退出</a>
				    <% }else{ %>
					<a href="WebPage/jsp/login.jsp">登陆</a>
					<%} %>
				</div>
				<div class="login_02">
					<a href="WebPage/jsp/register.jsp">注册</a>
				</div>
			</div>
			<div class="title_top">
				<img style="width:280px;height:100px;" src="WebPage/img/title.png">
			</div>
		</div>
		<div class="menu">
			<ul class="menu_ul">
				<li id="index"><a href="WebPage/jsp/index.jsp">首页</a></li>
				<li id="example"><a href="WebPage/jsp/example.jsp">实例</a></li>
				<li id="bbs"><a href="WebPage/jsp/bbs.jsp">论坛</a></li>
				<li id="relationship"><a href="WebPage/jsp/relationship.jsp">资料</a>
				</li>
				<li id="person"><a href="WebPage/jsp/person.jsp">个人中心</a></li>
			</ul>
		</div>
	</div>

	<!-- 网页内容 -->
	<div class="logincontainer">
		<div class="container_top"></div>
		<div class="login_form"
			style="font-size:20px;margin-left:270px;margin-top:50px;">
			<form action="login" method="post">
				学&nbsp&nbsp号：<input class="uname" type="text" name="sno" /><br>
				密&nbsp&nbsp码：<input class="upassword" type="password"
					name="password" /><br>
				<%
					if (session.getAttribute("islogin").equals("119")) {
				%>
				<input class="sub" type="submit" value="登陆">
				<%
					}
				%>

			</form>
			<%
				if (session.getAttribute("islogin").equals("110")) {
					out.print("<div class=" + "loginSucessful" + ">已登陆</div>");
				}
			%>
		</div>
	</div>
</body>
</html>