<%@ page language="java" import="java.util.*" pageEncoding="utf-8" import="com.web.dbTable.*"%>
<%@page import="com.web.dbDAO.*"%>
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

<title>课程相关</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="WebPage/css/main.css">
<link rel="stylesheet" type="text/css"
	href="WebPage/css/relationship.css">
<link rel="stylesheet" type="text/css"
	href="WebPage/css/relation_tab1.css">
<script type="text/javascript" src="WebPage/js/jquery-1.8.0.js"></script>
<script type="text/javascript" src="WebPage/js/main.js"></script>
<script type="text/javascript" src="WebPage/js/resours.js"></script>
<script type="text/javascript" src="WebPage/js/relation.js"></script>

</head>

<body class="newBody">

	<div class="header">
		<div class="logo">
			<div class="logo_guida">
				<img style="width:100px;height:100px;" src="WebPage/img/guida.png">
			</div>
			<div class="login">
				<div class="login_01">
					<%
						if (session.getAttribute("islogin").equals("110")) {
					%>
					<a href="WebPage/jsp/login.jsp">退出</a>
					<%
						} else {
					%>
					<a href="WebPage/jsp/login.jsp">登陆</a>
					<%
						}
					%>
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
				<li id="index"><a href="WebPage/jsp/index.jsp">首页</a>
				</li>
				<li id="example"><a href="WebPage/jsp/example.jsp">实例</a>
				</li>
				<li id="bbs"><a href="WebPage/jsp/bbs.jsp">论坛</a>
				</li>
				<li id="relationship"><a href="WebPage/jsp/relationship.jsp">资料</a>
				</li>
				<li id="person"><a href="WebPage/jsp/person.jsp">个人中心</a>
				</li>
			</ul>
		</div>
	</div>

	<!-- 网页内容 -->
	<div class="container">
		<div class="container_top">
			<div class="searchdiv">
			<form action="WebPage/jsp/checkrelationIntroduce.jsp" method="post">
				<table class="search" cellpadding="0" cellspacing="0" style="text-align: center;margin-right: 300px;">
					<tbody>
						<tr>
							<td width="100%">请输入课程名称: <input name="keyword"
								id="searchtitle" class="input" type="text"> <input
								name="button" type="submit" class="button" value="查询"></td>

						</tr>
					</tbody>
				</table>
			</form>
			</div>

		</div>
		<div class="relation_left">

			<div class="relation_select">
				<ul class="relation_select_ul">
					<li id="r_li01">相关课程</li>
					<li id="r_li02">相关书籍</li>
					<li id="r_li03">软件下载</li>

				</ul>
			</div>
		</div>
		<div class="relation_right">
		    <div class="r_li1">
		       <div class="tips">
		         <ul class="tips_ul">
		         <%
		         List<RelationCourse> relationcourselist =new ArrayList<RelationCourse>();						
				 RelationCourseDAO relationcoursedao=new RelationCourseDAO();
				 relationcourselist=relationcoursedao.query();
				 for(int i=0;i<relationcourselist.size();i++){
		          %>
		         <li>
		         <img src="WebPage/img/down2.png"><b style="margin-top: 50px;">
		         <b>
		         <%=relationcourselist.get(i).getCourse_name()%>
		         </b>
				 <div style="float: right;"><a href="WebPage/jsp/relationIntroduce.jsp?ID=<%=relationcourselist.get(i).getID()%>">查看</a></div>
				 </li>
				 <% 
				 }
				 %>
		         </ul>
		       </div>
		    </div>
		    <div class="r_li2" style="display: none;">
		     <div class="tips">
		         <ul class="tips_ul">
		         <li>
		         <img src="WebPage/img/down2.png"><a style="margin-top: 50px;" href=""><b>cocos2D-x</b></a>
				 <div style="float: right;"><a href="WebPage/jsp/relationIntroduce.jsp">查看</a></div>
				 </li>
		         </ul>
		       </div>
		    </div>
		    <div class="r_li3 style="display:none;">
		    </div>
		</div>
         <!-- right -->

	</div>
</body>
</html>
