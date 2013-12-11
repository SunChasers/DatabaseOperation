<%@ page language="java" import="java.util.*" import="com.web.dbDAO.*"
	import="com.web.dbTable.*" pageEncoding="utf-8"%>
<%
    request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	StudentDAO studentdao = new StudentDAO();

	List<Student> list = studentdao.queryInfor((String) session
			.getAttribute("user"));
        String sno = null;
		String uname = null;
		String classes = null;
		String phone = null;
		String email =null;
	for (Student s : list){
		sno = s.getSno();
		uname = s.getName();
		classes = s.getClasses();
		phone = s.getPhone();
		email = s.getMailbox();
	  }
	  
	 
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
	<div class="container">
		<div class="container_top"></div>
		<%
			if (session.getAttribute("islogin").equals("110")) {
		%>
		<div class="person_left">
			<div class="person_select">
				<ul class="person_select_ul">
					<li id="p_li01">通知信息</li>
					<li id="p_li02">个人信息</li>
					<li id="p_li03">课程作业</li>
					<li id="p_li04">我的文档</li>
					<li id="p_li05">待定</li>
				</ul>
			</div>
		</div>

		<div class="person_right">
			<div class="p_li_1">
				<div class="tips">
					<ul class="tips_ul">
						<li><div class="tip_person">
								<img src="WebPage/img/teacher.png">
								<div>
									<em>系统通知</em>
								</div>
							</div>
							<div class="tips_content">
								<em class="tip_li_em">需求分析报告的提交截止日期快到了，赶快提交哦</em>
							</div>
							<div class="tips_date">
								<em>发送日期：2013-10-5</em>
							</div>
						</li>


						<li><div class="tip_person">
								<img src="WebPage/img/teacher.png">
								<div>
									<em>系统通知</em>
								</div>
							</div>
							<div class="tips_content">
								<em class="tip_li_em">需求分析报告的提交截止日期快到了，赶快提交哦，需求分析报告的提交截止日期快到了</em>
							</div>
							<div class="tips_date">
								<em>发送日期：2013-10-5</em>
							</div></li>
						<li><div class="tip_person">
								<img src="WebPage/img/teacher.png">
								<div>
									<em>系统通知</em>
								</div>
							</div>
							<div class="tips_content">
								<em class="tip_li_em">需求分析报告的提交截止日期快到了，赶快提交哦，需求分析报告的提交截止日期快到了</em>
							</div>
							<div class="tips_date">
								<em>发送日期：2013-10-5</em>
							</div></li>
					</ul>
				</div>
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
								<div class="infor_value"><%=uname%></div>
							</li>
							<li><div class="infor_name">学&nbsp&nbsp号:</div>
								<div class="infor_value"><%=sno%></div>
							</li>
							<li><div class="infor_name">班&nbsp&nbsp级:</div>
								<div class="infor_value"><%=classes%></div>
							</li>
							<li><div class="infor_name">电&nbsp&nbsp话:</div>
								<div class="infor_value"><%=phone%></div>
							</li>
							<li><div class="infor_name">邮&nbsp&nbsp箱:</div>
								<div class="infor_value"><%=email%></div>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="p_li_3" style="display:none;">
				<div class="homework">

					<table class="homework_table" cellspacing="0" cellpadding="0">
						<tr>
							<th style="width:200px">作业标题</th>
							<th>起始时间</th>
							<th>截止时间</th>
							<th>查看</th>
							<th>提交</th>

						</tr>
						<tr>
							<td>需求分析</td>
							<td>2012-1-1</td>
							<td>2012-1-5</td>
							<td>查看</td>
							<td class="file_submit">提交</td>
						</tr>
						<tr>
							<td>需求分析</td>
							<td>2012-1-1</td>
							<td>2012-1-5</td>
							<td>查看</td>
							<td class="file_submit">提交</td>
						</tr>
						<tr>
							<td>需求分析</td>
							<td>2012-1-1</td>
							<td>2012-1-5</td>
							<td>查看</td>
							<td class="file_submit">提交</td>
						</tr>
						<tr>
							<td>需求分析</td>
							<td>2012-1-1</td>
							<td>2012-1-5</td>
							<td>查看</td>
							<td class="file_submit">提交</td>
						</tr>
						<tr>
							<td>需求分析</td>
							<td>2012-1-1</td>
							<td>2012-1-5</td>
							<td>查看</td>
							<td class="file_submit">提交</td>
						</tr>
					</table>



				</div>
			</div>
			<div class="p_li_4" style="display:none;">
				<div class="file_show">
					<ul>
						<li><img style="float: left;"
							src="WebPage/img/arrow_right_alt1.png"> <em class="em_01">亲，你还没上传过文档</em>
							<em class="em_02">2012-10-1</em>
						</li>
						<li><img style="float: left;"
							src="WebPage/img/arrow_right_alt1.png"> <em class="em_01">亲，你还没上传过文档</em>
							<em class="em_02">2012-10-1</em>
						</li>
						<li><img style="float: left;"
							src="WebPage/img/arrow_right_alt1.png"> <em class="em_01">亲，你还没上传过文档</em>
							<em class="em_02">2012-10-1</em>
						</li>
						<li><img style="float: left;"
							src="WebPage/img/arrow_right_alt1.png"> <em class="em_01">亲，你还没上传过文档</em>
							<em class="em_02">2012-10-1</em>
						</li>
					</ul>
				</div>
				<div class="/file_commit">
					<form action="WebPage/jsp/person1.jsp" method="post" enctype="multipart/form-data">
						<div style="width: 100%">
							<img class="file_img" src="WebPage/img/folder.png" />
							 <input name="upfile" size="50" class="btn_file" type="file" >
						</div>
						<div style="float: left;margin-left: 50px;">
							<textarea class="file_textarea"
								style="margin-top: 10px;overflow: hidden" class="file_shuoming"
								cols="83" rows="5"></textarea>
							<input name="filetype" type="radio" value="student">实例 <input
								type="radio" name="filetype" value="teacher">作业<br>
							<input type="submit">
						</div>

					</form>
				</div>
			</div>
			<div class="p_li_5" style="display:none;">p_li_5</div>
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