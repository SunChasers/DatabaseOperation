<%@ page language="java" import="java.util.*" import="com.web.dbDAO.*"
	import="com.web.dbTable.*" import="com.web.page.PageInfo"pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%
List<Example> slist;
int currentPage = 1;//开始默认第一页
	String c = request.getParameter("currentPage");//获取当前页
	if (c != null && !c.equals("")) {
		currentPage = Integer.parseInt(c);
	}
	PageInfo infos = new PageInfo(currentPage);
	infos.setCurpage(currentPage);
	infos.setCount(2);//每一页显示的页数
	infos.setTotal();
	List<Example> elist = infos.geteList();	

	String search = new String(request.getParameter("search").getBytes("ISO-8859-1"), "utf-8");
	System.out.println(search);
	ExampleDAO exampledao = null;
			
				exampledao = new ExampleDAO();
			
			slist=exampledao.searchpageQuery(1, 10, search);
%>
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
<link rel="stylesheet" type="text/css" href="WebPage/css/example.css">
<script type="text/javascript" src="WebPage/js/jquery-1.8.0.js"></script>
<script type="text/javascript" src="WebPage/js/example1.js"></script>
</head>

<body class="newBody">









	<div class="header">
		<div class="logo">
			<div class="logo_guida">
				<img style="width:100px;height:100px;" src="WebPage/img/guida.png">
			</div>
			<div class="login">
				<div class="login_01">
					<a href="WebPage/jsp/login.jsp">登陆</a>
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
	<div class="container">
		<div class="container_top"></div>
		<div class="person_left">
			<div class="person_select">
				<ul class="person_select_ul">
					<li id="p_li01">经典实例展示</li>
					<li id="p_li02">上传实例下载</li>
				</ul>
			</div>
		</div>

		<div class="person_right">
			<div class="p_li_1" style="display:none;">
				<div class="tips">
					<ul class="tips_ul">
						<li>


							<div class="softwareIntroduce_txt">
								<h1>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;高校医院管理信息系统需求说明书<br>
								</h1>
								<p>
									&nbsp;&nbsp;&nbsp;&nbsp;校医院为了适应工作发展的需要，委托项目组为其开发一套新的《高校医院电脑管理系统》。<br>
									&nbsp;&nbsp;&nbsp;&nbsp;高校医院主要为全校教职工、学生、家属提供医疗服务，包括门诊、住院、保健等服务项目。《高校医院电脑管理系统》应将这些项目有关的信息纳入电脑系统统一管理，以便及时获取有关信息，提高医疗效果和管理效率。<br>
									&nbsp;&nbsp;&nbsp;&nbsp;《高校医院电脑管理系统项目组》成员与校医院有关人员经过一个月的工作，就校医院现有正单独使用的门诊、住院、公费医疗、保健等电脑应用系统进行了详细的分析，并考虑到医院各部门联网后的应用需求。确定分以下子系统进行新系统的开发：住院部管理子系统；门诊部管理子系统；中西药房管理子系统；保健档案管理子系统；公费医疗管理子系统；病案管理子系统；业务管理子系统；人事管理子系统；系统管理子系统。<br>
									&nbsp;&nbsp;&nbsp;&nbsp;以下是各子系统之间的数据引用关系：
								</p>
							</div>
							<div class="softwareIntroduce_img_01">
								<img src="WebPage/img/example1.png">
							</div> <br>



							<div class="detail1">

								<a href="WebPage/example/a.doc">下载整个案例 </a>
							</div>
						</li>




					</ul>
				</div>
			</div>
			<div class="p_li_2" >
				<div class="tips">
				
				
				
				
				
				
				
					<ul class="tips_ul">

						 
						 
						
                        <% for(Example example:slist){ %>
						<li><img src="WebPage/img/down2.png"><a
							style="margin-top: 50px;" href="WebPage/jsp/download.jsp?downlink=<%=example.getExample_name() %>"><b><%=example.getExample_name() %></b>
						</a>
							<div style="float: right;">
								<span class="time">共3次下载</span>
							</div>
							<div style="float: right;">
								<span class="time">2013-11-01&nbsp;&nbsp;</span>
							</div>
						</li>
						<% }%>







					</ul>

				</div>
			</div>
<!--  <table class="homework_table_tip" cellspacing="0" cellpadding="0">
				<tr>
							<td colspan="5" align="center"><a
								href="WebPage/jsp/person.jsp?currentPage=1">首页</a> 
								<%
 	                             int ncounts = infos.getTotal();
 		                          for (int i = 0; i < ncounts; i++) {
                                %> 
                                 <a href="WebPage/jsp/person3.jsp?currentPage=<%=i + 1%>"><%=i + 1%></a>
								<%}%> 
								<%
 	                              int ncountes = infos.getTotal();
                                 %> 
                              <a href="WebPage/jsp/person3.jsp?currentPage=<%=ncountes%>">尾页</a></td>
						</tr>
				</table>
				-->
		</div>
	</div>
</body>
</html>
