<%@ page language="java" import="java.util.*" import="com.web.dbDAO.*"
	import="com.web.dbTable.*" import="com.web.page.PageInfo"
	pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	
	StudentDAO studentdao = new StudentDAO();

	List<Student> list = studentdao.queryInfor((String) session
			.getAttribute("sno"));
System.out.print((String) session
			.getAttribute("sno"));
			
	String sno = null;
	String uname = null;
	String classes = null;
	String phone = null;
	String email = null;
	for (Student s : list) {
	    uname = s.getName();
		sno = s.getSno();
		uname = s.getName();
		classes = s.getClasses();
		phone = s.getPhone();
		email = s.getMailbox();
	}
	
	String arg0=request.getParameter("stage");
	System.out.println("!"+arg0);
   /*
	//从数据库中取得课程作业信息	  
	WorkDAO workdao = new WorkDAO();
	List<Work> wlist = workdao.query();
	int workId = 0;
	String workTitle = null;
	String workContent = null;
	String startDate = null;
	String endDate = null;
	*/
	/*
	for(Work work:wlist){
	     workId = work.getID();
	     workTitle = work.getWork_title(); 
	     workContent = work.getWork_content();
	     startDate = work.getStart_date();
	     endDate = work.getEnd_date();
	 } 
	 */
	/*分页*/
	int currentPage = 1;//开始默认第一页
	String c = request.getParameter("currentPage");//获取当前页
	if (c != null && !c.equals("")) {
		currentPage = Integer.parseInt(c);
	}
	PageInfo infos = new PageInfo(currentPage);
	infos.setCurpage(currentPage);
	infos.setCount(10);//每一页显示的页数
	infos.setTotal();
	List<Work> wlist = infos.getList();	 
	//通知分页
	PageInfo ninfos = new PageInfo(currentPage);
	ninfos.setCurpage(currentPage);
	ninfos.setCount(5);//每一页显示的页数
	ninfos.setTotal();
	List<Notice> nlist = ninfos.getNlist();
	
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>个人中心<%=application.getServerInfo()%></title>
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
	<div class="personcontainer">
		<div class="container_top"></div>
		<%
			if (session.getAttribute("islogin").equals("110")) {
		%>
		<div class="person_left">
			<div class="person_select">
				<ul class="person_select_ul">
					<li id="p_li01"><a href="WebPage/jsp/person3.jsp">通知信息</a></li>
					<li id="p_li02">个人信息</li>
					<li id="p_li03">课程作业</li>
					<li id="p_li04">我的文档</li>
				</ul>
			</div>
		</div>

		<div class="person_right">
			<div class="p_li_1" style="display:none;">
				<div class="tips">
					<ul class="tips_ul">
						<% for(Notice notice:nlist){ %>
						<li><div class="tip_person">
								<img src="WebPage/img/teacher.png">
								<div>
									<em>系统通知</em>
								</div>
							</div>
							
							<div class="tips_content">
								<em class="tip_li_em"><%=notice.getNotice_content() %></em>
							</div>
							<div class="tips_date">
								<em>发送日期：2013-10-5</em>
							</div>
							
						</li>
						<% }%>
						
					</ul>
				</div>
				<table class="homework_table_tip" cellspacing="0" cellpadding="0">
				<tr>
							<td colspan="5" align="center"><a
								href="WebPage/jsp/person.jsp?currentPage=1">首页</a> 
								<%
 	                             int ncounts = ninfos.getTotal();
 		                          for (int i = 0; i < ncounts; i++) {
                                %> 
                                 <a href="WebPage/jsp/person.jsp?currentPage=<%=i + 1%>"><%=i + 1%></a>
								<%}%> 
								<%
 	                              int ncountes = ninfos.getTotal();
                                 %> 
                              <a href="WebPage/jsp/person.jsp?currentPage=<%=ncountes%>">尾页</a></td>
						</tr>
				</table>
			</div>
			<div class="p_li_2" style="display:none;">
				<div class="p_information">

					<div style="float:left;width:150px;height:150px;">
						<img style="width:100%;height:100%;"
							src="WebPage/img/user_image.png">
					</div>
					<div style="float: right;margin-right:240px;">
						<ul class="p_information_ul">
							<li><div class="infor_name">用户名:</div>
								<div class="infor_value"><%=uname%></div></li>
							<li><div class="infor_name">学&nbsp&nbsp号:</div>
								<div class="infor_value"><%=sno%></div></li>
							<li><div class="infor_name">班&nbsp&nbsp级:</div>
								<div class="infor_value"><%=classes%></div></li>
							<li><div class="infor_name">电&nbsp&nbsp话:</div>
								<div class="infor_value"><%=phone%></div></li>
							<li><div class="infor_name">邮&nbsp&nbsp箱:</div>
								<div class="infor_value"><%=email%></div></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="p_li_3">
				<div class="homework">

					<table class="homework_table" cellspacing="0" cellpadding="0">
						<tr>
							<th style="width:200px">作业标题</th>
							<th>起始时间</th>
							<th>截止时间</th>
							<th>查看</th>
							<th>提交</th>

						</tr>
						<%
							for (Work work : wlist) {
						%>
						<tr>
							<td><%=work.getWork_title()%></td>
							<td><%=work.getStart_date()%></td>
							<td><%=work.getEnd_date()%></td>
							<td><a
								href="WebPage/jsp/person2.jsp?content=<%=work.getWork_content()%>">查看</a>
							</td>
							<td class="file_submit">提交</td>
						</tr>
						<%
							}
						%>
						<tr>
							<td colspan="5" align="center"><a
								href="WebPage/jsp/person.jsp?currentPage=1">首页</a> 
								<%
 	                             int counts = infos.getTotal();
 		                          for (int i = 0; i < counts; i++) {
                                %> 
                                 <a href="WebPage/jsp/person.jsp?currentPage=<%=i + 1%>"><%=i + 1%></a>
								<%}%> 
								<%
 	                              int countes = infos.getTotal();
                                 %> 
                              <a href="WebPage/jsp/person.jsp?currentPage=<%=countes%>">尾页</a></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="p_li_4" style="display:none;">
				<div class="file_show"></div>
				<div class="file_commit">

					<div style="width: 100%">
						<img class="file_img" src="WebPage/img/folder.png" />
					</div>
					<!-- <form action="WebPage/jsp/person1.jsp" method="post"
						enctype="multipart/form-data">

						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="file"
							name="upfile" size="50"> <input type="submit" value="提交">
					</form>  -->


<form action="Upload" method="post" enctype="multipart/form-data" name="forml">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请选择要上传的文件:(不要超过50M)<br>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input name="file" type="file" size="35"><br>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请将上传文件命名为：文件名-类型（类型包括面向对象，面向过程，需求分析等关键字）<br>


    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" name="Subnit" value="上传文件">
     &nbsp;&nbsp; &nbsp;<input name="Reset" type="reset" id="Reset" value="重置">
    </form>

				</div>
			
		</div>
		<%
			} else {
		%>
		<div class="loginSucessful">
			<a href="WebPage/jsp/login.jsp">请登录</a>
		</div>
		<%
			}
		%>
	</div>
</body>
</html>