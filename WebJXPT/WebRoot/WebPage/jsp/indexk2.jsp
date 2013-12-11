<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

<title>首页</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="WebPage/css/main.css">
<link rel="stylesheet" type="text/css" href="WebPage/css/person.css">
<script type="text/javascript" src="WebPage/js/jquery-1.8.0.js"></script>
<script type="text/javascript" src="WebPage/js/main.js"></script>

</head>

<body class="newBody">
<div class="header">
		<div class="logo">
			<div class="logo_guida">
				<img style="width:100px;height:100px;" src="WebPage/img/guida.png">
			</div>
			<div class="login">
			  <div class="login_01"><a href="WebPage/jsp/login.jsp">登陆</a></div>
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
	<div class="container_k2">
		<div class="container_top"></div>
		<div class="softwareIntroduce_k">
			

                    <div style="margin-left: 40px;margin-top: 20px;margin-right: 30px;">
					<div style="width:880px;">

						
						<h2>
							&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp软件工程专业简介
						</h2>
					<div >
						<span id="Content" ><P>
								<SPAN style="FONT-WEIGHT: bold">&nbsp&nbsp&nbsp培养目标：</SPAN>软件工程专业培养适应社会主义现代化建设需要的德、智、体、美等方面全面协调发展，面向企事业单位的实用型、工程型高级软件技术人才和软件项目管理人才。通过大学期间的学习，学生具备扎实的计算机科学基础、软件工程基本理论和基本知识，能够熟练使用国际最新软件开发工具和技术，熟悉软件项目开发过程和软件项目管理方法以及应该遵循的软件工程规范和标准，受到软件工程的基本训练，具备很强的软件开发能力和良好的软件工程素质，能够从事软件项目开发、项目管理和软件系统维护等工作。<BR>
								<SPAN style="FONT-WEIGHT: bold">&nbsp&nbsp&nbsp主要课程：</SPAN>高级语言程序设计、离散数学、数字逻辑、计算机组成原理、数据结构、算法设计与分析、数据库原理、计算机网络、操作系统、编译原理、计算机专业英语、软件工程、软件设计与体系结构、软件质量保证与测试、统一建模语言UML、面向对象程序设计、人机交互、软件项目管理、嵌入式系统开发、软件开发工具、软件过程与管理等。<BR>
								<SPAN style="FONT-WEIGHT: bold">&nbsp&nbsp&nbsp就业方向：</SPAN>毕业生可在大型软件公司、科研院所、企事业单位、国防等重要部门从事软件开发、软件项目管理工作，也可在高等学校从事教学和科研工作。本专业毕业生可在计算机软件与理论、计算机应用技术领域继续深造。<BR>
								<SPAN style="FONT-WEIGHT: bold">&nbsp&nbsp&nbsp修业年限：</SPAN>四年<br> <SPAN
									style="FONT-WEIGHT: bold">&nbsp&nbsp&nbsp授予学位：</SPAN>工学学士
							</P> </span>
					</div>
			</div>
			</div>


			




		</div>
	</div>
	
</body>
</html>
