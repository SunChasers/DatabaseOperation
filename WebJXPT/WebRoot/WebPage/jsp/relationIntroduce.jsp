<%@ page language="java" import="java.util.*" pageEncoding="utf-8" import="com.web.dbTable.*"%>
<%@page import="com.web.dbDAO.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
//获取ID
String ID=request.getParameter("ID");
RelationCourse relationcourse=new RelationCourse();						
RelationCourseDAO relationcoursedao=new RelationCourseDAO();
relationcourse=relationcoursedao.queryID(ID);
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
<link rel="stylesheet" type="text/css" href="WebPage/css/relationIntroduce.css">
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
           <form action="" name="form1" method="post">
             <table cellpadding="0" cellspacing="0" class="location">
               <tbody>
                   <tr>
                     <td>
                       <table cellpadding="0" cellspacing="0" class="loca">
                         <tbody>
                            <tr>
                              <td>
                                 <img src="WebPage/img/courseintroduce.gif">
                              </td>
                              <td nowrap="nowrap" class="tital">《<%=relationcourse.getCourse_name() %>》</td>
                              <td class="right">&nbsp;</td>
                             </tr>
                         </tbody>
                       </table>
                       </td>
                      </tr>
               </tbody>
             </table >
             <table cellpadding="0" cellspacing="0" class="text">
               <tbody>
                  <tr>
                    <td>
                      <%=relationcourse.getCourse_introduce() %>
                    </td>
                  </tr>
               </tbody>
             </table>
           </form>
		</div>
	

	</div>
</body>
</html>
