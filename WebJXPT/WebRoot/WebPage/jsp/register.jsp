<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String success=(String)request.getAttribute("success");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>注册</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="../css/main.css">
<link rel="stylesheet" type="text/css" href="../css/register.css">
<script type="text/javascript" src="../js/jquery-1.8.0.js"></script>
<script type="text/javascript" src="../js/main.js"></script>

</head>

<body class="newBody" id="register"> 

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
	<div class="container">
		<div class="container_top"></div>
		<form method="post" action="register">
			用户名：<input class="input_style" name="uname" type="text"><br>
			学&nbsp&nbsp号：<input class="input_style" name="school_number"
				type="text"><br> 密&nbsp&nbsp码：<input
				class="input_style" name="password" type="password"><br>班&nbsp&nbsp级：<input
				class="input_style" type="text" name="Class"><br>
			邮&nbsp&nbsp箱：<input class="input_style" type="text" name="email"><br>
			电&nbsp&nbsp话：<input class="input_style" type="text" name="phone"><br>
			<%
			if (success != "1") {
			%>
			<input class="input_submit" type="submit" value="注册">
			<% 
			}
			 %>
		</form>
		<%
			if (success == "1") {
				out.print("<div class=" + "sucessful" + ">注册成功</div>");
			}
		%>

	</div>

</body>
</html>
