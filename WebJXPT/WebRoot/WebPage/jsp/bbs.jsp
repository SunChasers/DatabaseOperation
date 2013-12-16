 <%@page import="com.web.dbDAO.ForumsDAO"%>
<%@ page language="java" import="java.util.*"  import="com.web.dbDAO.ForumsDAO" import="com.web.dbTable.Forums" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>论坛</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">	
	<link rel="stylesheet" type="text/css" href="WebPage/css/main.css">
	<link rel="stylesheet" type="text/css" href="WebPage/css/forums.css">
	<link rel="stylesheet" type="text/css" href="WebPage/css/forums_tab1.css">
	<link rel="stylesheet" type="text/css" href="WebPage/css/forums_tab2.css">
	<script type="text/javascript" src="WebPage/js/jquery-1.8.0.js"></script>
    <script type="text/javascript" src="WebPage/js/main.js"></script>
    <script type="text/javascript" src="WebPage/js/forums.js"></script>

  </head>
  
  <body class="newBody">
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
	
	<!-- 网页内容 -->
	<div class="container">

        <div class="forums_left">
			<div class="forums_select">
				<ul class="forums_select_ul">
					<li id="left_li01">我的帖子</li>
					<li id="left_li02">发帖</li>
					<li id="left_li03">帖子区</li>
				</ul>
			</div>
			<!--forums_select -->
		</div>
		<!-- forums_left -->
		<div class="forums_right">
		<div class="right1">
		<div class="right1_head">
		<div class="head_picture">
		<img src="WebPage/img/teacher.png">
		</div>
		<div class="myintroduce">
		<div id="myname">刘立洲</div><!-- 姓名 -->
		<div id="mysign">个性签名：人生就像一场戏</div><!-- 个性签名 -->
		
		</div>
		</div>
		<div class="myforums">
		   <ul class="tips_ul">
			
						
						<%
						List<Forums> forumslist =new ArrayList<Forums>();						
						ForumsDAO forumsdao=new ForumsDAO();
						forumslist=forumsdao.query();
						for(int i=0;i<forumslist.size();i++){
						%>
				        <li>
				        <img src="WebPage/img/down2.png">
				        <a style="margin-top: 50px;" href="WebPage/jsp/myrequest.jsp?ID=<%=forumslist.get(i).getID()%>">
				        <b>
				        <%=forumslist.get(i).getForums_title()%>
				        </b></a>
				        <div style="float: right;">
				        <span class="request">回复:
				        <%=forumslist.get(i).getRequestnum()%>
				        </span>
				        </div>
				        <div style="float: right;"><span class="num">共
				        <%=forumslist.get(i).gethit()%>
				                            次點擊&nbsp;</span></div>
				        <div style="float: right;"><span class="date">
				        <%=forumslist.get(i).getDate() %>
				        &nbsp;</span></div>
				        </li>
				        <%
				        }
				        %>
				       


						
					</ul>
		</div>
		</div>
		<!-- right1 -->
	    <div class="right2" style="display: none;">
	    <form action="WForumsServerlet" method="post">
	        <div class="myforums">
	        <ul class="tips_ull">
	          <li>
	          <div style="float:left;text-align: center;"><span>标题:&nbsp;</span></div>
	           <div style="float:left;text-align: center;margin-top: 6px"><textarea name="forums_title" style="width:400px;height:20px;name="></textarea></div>
	          <div>&nbsp;<input  class="publish" type="submit" value="发布"></div>
	         
	          
	          </li>
	          <li>
	          <textarea name="forums_content" style="width:500px;height: 600px;"></textarea>
	          </li>
	        </ul>
	        </div>
	    </form>
	    </div>
	    <!-- right2帖子區 -->
		</div>
		<!-- forums_right -->
	</div>
	<!-- container -->
  </body>
</html>
