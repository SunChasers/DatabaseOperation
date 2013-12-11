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
	<!-- 
	<div class="top">
		<img src="WebPage/img/top_img2.gif">
	</div>
	<div class="daohang">
		<ul id="ul_daohang" class="daohang_01_ul">
			<li id="li_index" class="index"><a href="WebPage/jsp/index.jsp">首页</a>
			</li>
			<li id="li_example"><a href="WebPage/jsp/example.jsp">实例</a></li>
			<li id="li_bbs"><a href="WebPage/jsp/bbs.jsp">论坛</a></li>
			<li id="li_relative"><a href="WebPage/jsp/relationship.jsp">相关</a>
			</li>
			<li id="li_login"><a href="WebPage/jsp/login.jsp">登陆</a></li>
			<li id="li_register"><a href="WebPage/jsp/register.jsp">注册</a></li>
			<li id="li_person"><a href="WebPage/jsp/person.jsp">个人中心</a></li>
		</ul>
	</div>
	<div class="main">
		<div class="main_left">
			<div class="person_select">
				<ul class="person_select_ul">
					<li id="p_li01">软件工程简介</li>
					<li id="p_li02">课程简介</li>
					<li id="p_li03">重要通知</li>
				</ul>
			</div>
		</div>
		<div class="main_right">
			<div class="p_li_1">
				<div class="tips">

					<h1>
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp软件工程<small>(Software
							Engineering)</small>
					</h1>
					<h3>一.什么是软件工程</h3>
					<p>
						软件工程是一门研究用工程化方法构建和维护有效的、实用的和高质量的软件的学科。它涉及到程序设计语言，数据库，软件开发工具，系统平台，标准，设计模式等方面。
					</p>
					<p>
						在现代社会中，软件应用于多个方面。典型的软件比如有电子邮件，嵌入式系统，人机界面，办公套件，操作系统，编译器，数据库，游戏等。同时，各个行业几乎都有计算机软件的应用，比如工业，农业，银行，航空，政府部门等。这些应用促进了经济和社会的发展，使得人们的工作更加高效，同时提高了生活质量。
					</p>
					<p>
						软件工程师是对应用软件创造软件的人们的统称，软件工程师按照所处的领域不同可以分为系统分析员，软件设计师，系统架构师，程序员，测试员等等。人们也常常用程序员来泛指各种软件工程师。
					</p>
					<h3>二.软件工程的框架</h3>
					<p>软件工程的框架可概括为：目标、过程和原则。</p>
					<p>
						<b>1、软件工程目标</b>
					</p>
					<p>
						生产具有正确性、可用性以及开销合宜的产品。正确性指软件产品达到预期功能的程度。可用性指软件基本结构、实现及文档为用户可用的程度。开销合宜是指软件开发、运行的整个开销满足用户要求的程度。这些目标的实现不论在理论上还是在实践中均存在很多待解决的问题，它们形成了对过程、过程模型及工程方法选取的约束。
					</p>
					<p>
						软件工程活动是“生产一个最终满足需求且达到工程目标的软件产品所需要的步骤”。主要包括需求、设计、实现、确认以及支持等活动。需求活动包括问题分析和需求分析。问题分析获取需求定义，又称软件需求规约。需求分析生成功能规约。设计活动一般包括概要设计和详细设计。概要设计建立整个软件体系结构，包括子系统、模块以及相关层次的说明、每一模块接口定义。详细设计产生程序员可用的模块说明，包括每一模块中数据结构说明及加工描述。实现活动把设计结果转换为可执行的程序代码。确认活动贯穿于整个开发过程，实现完成后的确认，保证最终产品满足用户的要求。支持活动包括修改和完善。伴随以上活动，还有管理过程、支持过程、培训过程等。
					</p>
					<p>
						<b>2、软件工程过程</b>
					</p>
					<p>
						生产一个最终能满足需求且达到工程目标的软件产品所需要的步骤。软件工程过程主要包括开发过程、运作过程、维护过程。它们覆盖了需求、设计、实现、确认以及维护等活动。需求活动包括问题分析和需求分析。问题分析获取需求定义，又称软件需求规约。需求分析生成功能规约。设计活动一般包括概要设计和详细设计。概要设计建立整个软件系统结构，包括子系统、模块以及相关层次的说明、每一模块的接口定义。详细设计产生程序员可用的模块说明，包括每一模块中数据结构说明及加工描述。实现活动把设计结果转换为可执行的程序代码。确认活动贯穿于整个开发过程，实现完成后的确认，保证最终产品满足用户的要求。维护活动包括使用过程中的扩充、修改与完善。伴随以上过程，还有管理过程、支持过程、培训过程等。
					</p>
					<p>
						<b>3、软件工程的原则</b>
					</p>
					<p>软件工程的原则是指围绕工程设计、工程支持以及工程管理在软件开发过程中必须遵循的原则。软件工程的原则有以下四项基本原则：
					</p>
					<p>
						<b>1）选取适宜开发范型。</b>
						该原则与系统设计有关。在系统设计中，软件需求、硬件需求以及其他因素之间是相互制约、相互影响的，经常需要权衡。因此，必须认识需求定义的易变性，采用适宜的开发范型予以控制，以保证软件产品满足用户的要求。
					</p>
					<p>
						<b>2）采用合适的设计方法。</b>
						在软件设计中，通常要考虑软件的模块化、抽象与信息隐蔽、局部化、一致性以及适应性等特征。合适的设计方法有助于这些特征的实现，以达到软件工程的目标。
					</p>
					<p>
						<b>3）提供高质量的工程支持。</b>
						“工欲善其事，必先利其器”。在软件工程中，软件工具与环境对软件过程的支持颇为重要。软件工程项目的质量与开销直接取决于对软件工程所提供的支撑质量和效用。
					</p>
					<p>
						<b>4）重视开发过程的管理。</b>
						软件工程的管理，直接影响可用资源的有效利用，生产满足目标的软件产品，提高软件组织的生产能力等问题。因此，仅当软件过程得以有效管理时，才能实现有效的软件工程。
					</p>
					<p>
						这一软件工程框架告诉我们，软件工程的目标是可用性、正确性和合算性；实施一个软件工程要选取适宜的开发范型，要采用合适的设计方法，要提供高质量的工程支撑，要实行开发过程的有效管理；软件工程活动主要包括需求、设计、实现、确认和支持等活动，每一活动可根据特定的软件工程，采用合适的开发范型、设计方法、支持过程以及过程管理。根据软件工程这一框架，软件工程学科的研究内容主要包括：软件开发范型、软件开发方法、软件过程、软件工具、软件开发环境、计算机辅助软件工程(CASE)
						及软件经济学等。</p>
					<h2>软件工程的基本原理</h2>
					<p>
						自从1968年提出“软件工程”这一术语以来，研究软件工程的专家学者们陆续提出了100多条关于软件工程的准则或信条。美国著名的软件工程专家巴利·综合这些专家的意见，并总结了美国天合公司（TRW）多年的开发软件的经验，于1983年提出了软件工程的七条基本原理。
					</p>
					<p>
						玻姆认为，这七条原理是确保软件产品质量和开发效率的原理的最小集合。它们是相互独立的，是缺一不可的最小集合；同时，它们又是相当完备的。
					</p>
					<p>
						人们当然不能用数学方法严格证明它们是一个完备的集合，但是可以证明，在此之前已经提出的100多条软件工程准则都可以有这七条原理的任意组合蕴含或派生。下面简要介绍软件工程的七条原理：
					</p>
				</div>
			</div>


			<div class="p_li_2" style="display:none">
				<div class="tips">

					<div style="width:700px; overflow:hidden;">

						<h2>
							&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp软件工程专业简介
						</h2>

						<span id="Content"><P>
								<SPAN style="FONT-WEIGHT: bold">培养目标：</SPAN>软件工程专业培养适应社会主义现代化建设需要的德、智、体、美等方面全面协调发展，面向企事业单位的实用型、工程型高级软件技术人才和软件项目管理人才。通过大学期间的学习，学生具备扎实的计算机科学基础、软件工程基本理论和基本知识，能够熟练使用国际最新软件开发工具和技术，熟悉软件项目开发过程和软件项目管理方法以及应该遵循的软件工程规范和标准，受到软件工程的基本训练，具备很强的软件开发能力和良好的软件工程素质，能够从事软件项目开发、项目管理和软件系统维护等工作。<BR>
								<SPAN style="FONT-WEIGHT: bold">主要课程：</SPAN>高级语言程序设计、离散数学、数字逻辑、计算机组成原理、数据结构、算法设计与分析、数据库原理、计算机网络、操作系统、编译原理、计算机专业英语、软件工程、软件设计与体系结构、软件质量保证与测试、统一建模语言UML、面向对象程序设计、人机交互、软件项目管理、嵌入式系统开发、软件开发工具、软件过程与管理等。<BR>
								<SPAN style="FONT-WEIGHT: bold">就业方向：</SPAN>毕业生可在大型软件公司、科研院所、企事业单位、国防等重要部门从事软件开发、软件项目管理工作，也可在高等学校从事教学和科研工作。本专业毕业生可在计算机软件与理论、计算机应用技术领域继续深造。<BR>
								<SPAN style="FONT-WEIGHT: bold">修业年限：</SPAN>四年<br> <SPAN
									style="FONT-WEIGHT: bold">授予学位：</SPAN>工学学士
							</P> </span>
					</div>

				</div>
			</div>




		</div>
	</div>
	<div class="bottom"></div>
	
	-->
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
		<div class="softwareIntroduce_01">
			<div class="softwareIntroduce_img_01">
				<img src="WebPage/img/index1.png">
			</div>
			<div class="softwareIntroduce_txt">
				<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;软件工程简介</h1>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;软件工程是一门研究用工程化方法构建和维护有效的、实用的和高质量的软件的学科。它涉及到程序设计语言，数据库，软件开发工具，系统平台，标准，设计模式等方面,在现代社会中，软件应用于多个方面。典型的软件比如有电子邮件，嵌入式系统，人机界面，办公套件，操作系统，编译器，数据库，游戏等。同时，各个行业几乎都有计算机软件的应用，比如工业，农业，银行，航空，政府部门等。这些应用促进了经济和社会的发展，使得人们的工作更加高效，同时提高了生活质量。</p>
			</div>
			<div class="detail">
				<a href="WebPage/jsp/indexk1.jsp">详细介绍 </a>
			</div>
		</div>
		<div class="softwareIntroduce_02">
			<div class="softwareIntroduce_img_02">
				<img src="WebPage/img/teacherk1.jpg">
			</div>
			<div class="softwareIntroduce_txt">
				<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;课程简介</h1>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;软件工程专业培养适应社会主义现代化建设需要的德、智、体、美等方面全面协调发展，面向企事业单位的实用型、工程型高级软件技术人才和软件项目管理人才。通过大学期间的学习，学生具备扎实的计算机科学基础、软件工程基本理论和基本知识，能够熟练使用国际最新软件开发工具和技术，熟悉软件项目开发过程和软件项目管理方法以及应该遵循的软件工程规范和标准，受到软件工程的基本训练，具备很强的软件开发能力和良好的软件工程素质，能够从事软件项目开发、项目管理和软件系统维护等工作。</p>
			</div>
			<div class="detail_2">
				<a href="WebPage/jsp/indexk2.jsp">详细介绍 </a>
			</div>
		</div>
		<div class="softwareIntroduce_02">
			<div class="softwareIntroduce_img_03">
				<img src="WebPage/img/teacherk3.jpg">
			</div>
			<div class="softwareIntroduce_txt">
				<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;教师简介</h1>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;学院拥有一支综合素质好、学术水平高、实践经验丰富、具有开拓创新精神的教学科研队伍。</p>
			</div>
			<div class="detail_2">
				<a href="WebPage/jsp/indexk3.jsp">申玲老师介绍 </a>
			</div>
		</div>
	</div>


</body>
</html>
