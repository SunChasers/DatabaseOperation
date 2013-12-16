<%@ page language="java" import="java.util.*" import="com.web.dbDAO.Forums_requestDAO" import="com.web.dbDAO.ForumsDAO" import="com.web.dbTable.Forums" import="com.web.dbTable.Forums_request" pageEncoding="UTF-8"%>
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
<!-- 顯示隱藏DIV -->
<script type="text/javascript">
 function myFunction(){
 var u=document.getElementById("tt_request");
 var v=document.getElementById("ttbtn");
 u.style.display="";
 v.style.display="";
 }
</script>
</head>

<body class="newBody">
<%
List<Forums_request> forums_requestlist =new ArrayList<Forums_request>();					
Forums_requestDAO forums_requestdao=new Forums_requestDAO();
forums_requestlist=forums_requestdao.query(request.getParameter("ID"));
session.setAttribute("requesttoID", request.getParameter("ID"));
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
	<div class="container_top">总回复:&nbsp;
	<%=forums_requestlist.size()%>
	</div>
	<!-- 检索数据库 ,知道了我发布的帖子的ID-->
		<div class="tips">
					<ul class="tips_ul">
					   <%
						for(int i=0;i<forums_requestlist.size();i++){
						%>
						<li>
						<div class="tip_forums"><img src="WebPage/img/teacher.png">
						<em>
						<%=session.getAttribute("sno")%>
						</em>
						</div>
						<div class="myrequest_content">
						<%=forums_requestlist.get(i).getRequest_content() %>
						</div>							
		                </li>
				         <% 
				         }
				         %>
					</ul>
		</div>
		<form action="MyrequestServerlet" method="post">
		<div><input type="button" value="回覆" style="background: #FFFFCC;" onclick="myFunction()"></div>
		<div id="tt_request" style="display: none"><textarea name="request_content" cols="100px" rows="5px"></textarea></div>
		<div id="ttbtn" style="display: none"><input type="submit" value="確定"></div>
		</form>
	</div>
</body>
</html>