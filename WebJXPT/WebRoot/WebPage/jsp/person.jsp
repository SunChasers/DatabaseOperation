<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=gb2312"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<title>个人中心<%=application.getServerInfo()%></title>
<head>
<base href="<%=basePath%>">


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
	<div class="container">
		<div class="container_top"></div>
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
							</div>
						</li>
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
								<div class="infor_value">赵晨曦</div></li>
							<li><div class="infor_name">学&nbsp&nbsp号:</div>
								<div class="infor_value">1108060071</div></li>
							<li><div class="infor_name">班&nbsp&nbsp级:</div>
								<div class="infor_value">软件111</div></li>
							<li><div class="infor_name">电&nbsp&nbsp话:</div>
								<div class="infor_value">18285111205</div></li>
							<li><div class="infor_name">邮&nbsp&nbsp箱:</div>
								<div class="infor_value">704405121@qq.com</div></li>
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
				<div class="file_show"></div>
				<div class="file_commit">

					<div style="width: 100%">
						<img class="file_img" src="WebPage/img/folder.png" />
					</div>
					<form action="WebPage/jsp/person1.jsp" method="post"
						enctype="multipart/form-data">

						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="file"
							name="upfile" size="50"> <input type="submit" value="提交">
					</form>

				</div>

			</div>
		</div>
		<div class="p_li_5" style="display:none;">p_li_5</div>
	</div>
	</div>
</body>
</html>