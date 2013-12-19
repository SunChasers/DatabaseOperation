<%@ page language="java" import="java.util.*" import="com.web.dbDAO.ForumsDAO" import="com.web.dbTable.Forums" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>个人中心</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="WebPage/css/main.css">
<link rel="stylesheet" type="text/css" href="WebPage/css/forums_tab3.css">
<script type="text/javascript" src="WebPage/js/jquery-1.8.0.js"></script>
<script type="text/javascript" src="WebPage/js/main.js"></script>
</head>

<body class="newBody">
<%
List<Forums> forumslist =new ArrayList<Forums>();						
						ForumsDAO forumsdao=new ForumsDAO();
						forumslist=forumsdao.query();
 %>
	<div class="header">
		<div class="logo">
			<div class="logo_guida">
				<img style="width:100px;height:100px;" src="WebPage/img/guida.png">
			</div>
			<div class="login">
			  <div class="login_01"><%if(session.getAttribute("islogin").equals("110")){%>
				    <a href="WebPage/jsp/login.jsp">退出</a>
				    <% }else{ %>
					<a href="WebPage/jsp/login.jsp">登陆</a>
					<%} %></div>
				<div class="login_02"><a href="WebPage/jsp/register.jsp">注册</a></div>
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
				<li id="relationship"><a href="WebPage/jsp/relationship.jsp">资料</a></li>
				<li id="person"><a href="WebPage/jsp/person.jsp">个人中心</a></li>
			</ul>
		</div>
	</div>
	<div class="container">
	<div class="container_top">总帖数:&nbsp;
	<%=forumslist.size() %>
	</div>
		<div class="tips">
					<ul class="tips_ul">
					   <%
						
						for(int i=0;i<forumslist.size();i++){
						%>
						<li><div class="tip_forums"><img src="WebPage/img/teacher.png"><div><em>
						<%=forumslist.get(i).getPublishID()%>
						</em></div></div>
							<div class="tips_content" style="margin-left: 120px;">
								<a class="tip_li_em" href="WebPage/jsp/myrequest.jsp?ID=<%=forumslist.get(i).getID()%>">
						<%=forumslist.get(i).getForums_title() %>
						</a>
							</div>
							<div>
							<div style="float: right;margin-right: 40px;"><span class="frequest">回复:
							<%=forumslist.get(i).getRequestnum() %>
							</span></div>
							<div style="float: right;"><span class="num">共
							<%=forumslist.get(i).gethit() %>
							次点击&nbsp;&nbsp;</span></div>
						    <div style="float: right;"><span class="date">
						    <%=forumslist.get(i).getDate() %>
						    &nbsp;&nbsp;</span></div>
						    </div>
							</li>
							<%} %>
					</ul>
				</div>
	</div>
</body>
</html>