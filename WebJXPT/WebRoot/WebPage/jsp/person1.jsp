<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="org.apache.commons.*"%>

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
			<div class="p_li_1" style="display:none;">
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
			<div class="p_li_4">
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







					<div>
						<%
							//定义上载文件的最大字节
							int MAX_SIZE = 102400 * 102400;
							// 创建根路径的保存变量
							String rootPath;
							//声明文件读入类
							DataInputStream in = null;
							FileOutputStream fileOut = null;
							//取得客户端的网络地址
							String remoteAddr = request.getRemoteAddr();

							//获得服务器的名字
							String serverName = request.getServerName();

							//取得互联网程序的绝对地址
							String realPath = request.getRealPath(serverName);

							realPath = realPath.substring(0, realPath.lastIndexOf("\\"));

							//创建文件的保存目录
							rootPath ="D:/";  //realPath + "\\upload\\";

							//取得客户端上传的数据类型
							String contentType = request.getContentType();
							try {
								if (contentType.indexOf("multipart/form-data") >= 0) {
									//读入上传的数据
									in = new DataInputStream(request.getInputStream());
									int formDataLength = request.getContentLength();
									if (formDataLength > MAX_SIZE) {
										out.println("<P>上传的文件字节数不可以超过" + MAX_SIZE + "</p>");
										return;
									}
									//保存上传文件的数据
									byte dataBytes[] = new byte[formDataLength];
									int byteRead = 0;
									int totalBytesRead = 0;
									//上传的数据保存在byte数组
									while (totalBytesRead < formDataLength) {
										byteRead = in.read(dataBytes, totalBytesRead,
												formDataLength);
										totalBytesRead += byteRead;
									}
									//根据byte数组创建字符串
									String file = new String(dataBytes);
									//out.println(file);
									//取得上传的数据的文件名
									String saveFile = file.substring(file
											.indexOf("filename=\"") + 10);
									saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
									saveFile = saveFile.substring(
											saveFile.lastIndexOf("\\") + 1,
											saveFile.indexOf("\""));
									int lastIndex = contentType.lastIndexOf("=");
									//取得数据的分隔字符串
									String boundary = contentType.substring(lastIndex + 1,
											contentType.length());
									//创建保存路径的文件名
									String fileName = rootPath + saveFile;
									//out.print(fileName);
									int pos;
									pos = file.indexOf("filename=\"");
									pos = file.indexOf("\n", pos) + 1;
									pos = file.indexOf("\n", pos) + 1;
									pos = file.indexOf("\n", pos) + 1;
									int boundaryLocation = file.indexOf(boundary, pos) - 4;
									//out.println(boundaryLocation);
									//取得文件数据的开始的位置
									int startPos = ((file.substring(0, pos)).getBytes()).length;
									//out.println(startPos);
									//取得文件数据的结束的位置
									int endPos = ((file.substring(0, boundaryLocation))
											.getBytes()).length;
									//out.println(endPos);
									//检查上载文件是否存在
									File checkFile = new File(fileName);
									if (checkFile.exists()) {
										out.println("<p>" + saveFile + "文件已经存在.</p>");
									}
									//检查上载文件的目录是否存在
									File fileDir = new File(rootPath);
									if (!fileDir.exists()) {
										fileDir.mkdirs();
									}
									//创建文件的写出类
									fileOut = new FileOutputStream(fileName);
									//保存文件的数据
									fileOut.write(dataBytes, startPos, (endPos - startPos));
									fileOut.close();
									out.println(saveFile + "文件成功上载.</p>");
								} else {
									String content = request.getContentType();
									out.println("<p>上传的数据类型不是multipart/form-data</p>");
								}
							} catch (Exception ex) {
								throw new ServletException(ex.getMessage());
							}
						%>
					</div>











				</div>
			</div>
			<div class="p_li_5" style="display:none;">p_li_5</div>
		</div>
	</div>
</body>
</html>