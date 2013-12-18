	<%@ page language="java" import="java.util.*" import="com.web.dbDAO.*" import="com.web.dbTable.*" import="com.web.page.PageInfo" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
			
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<base href="<%=basePath%>">  
    <title>发布作业</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
<link href="WebPage/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet"
	type="text/css" />
<link href="WebPage/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet"
	type="text/css" />
<style type="text/css">
</style>
<script src="WebPage/ligerUI/jquery/jquery-1.3.2.min.js"
	type="text/javascript"></script>
<script src="WebPage/ligerUI/js/core/base.js" type="text/javascript"></script>
<script src="WebPage/ligerUI/js/plugins/ligerLayout.js"
	type="text/javascript"></script>
<script src="WebPage/ligerUI/js/plugins/ligerTree.js" type="text/javascript"></script>
<script src="WebPage/ligerUI/js/plugins/ligerAccordion.js"
	type="text/javascript"></script>
<script src="WebPage/ligerUI/js/plugins/ligerTree.js" type="text/javascript"></script>
<script src="WebPage/ligerUI/js/plugins/ligerForm.js" type="text/javascript"></script>

<script type="text/javascript">
	$(function() {

		$("#layout1").ligerLayout({
			leftWidth : 200,
			heightDiff : -43
		});
	});

	$(function() {

		$("#accordion1").ligerAccordion({
			height : 880
		});
	});

	$(function() {

		$("#tree1").ligerTree({
			checkbox : false
		});
		$("#tree2").ligerTree({
			checkbox : false
		});
		$("#tree3").ligerTree({
			checkbox : false
		});
		$("#tree4").ligerTree({
			checkbox : false
		});

	});
</script>
<style type="text/css">
body {
	padding: 5px;
	margin: 0;
	padding-bottom: 15px;
}

#layout1 {
	width: 100%;
	margin: 0;
	padding: 0;
}

.l-page-bottom {
	height: 50px;
	background: #f8f8f8;
	margin-bottom: 3px;
}

.l-page-top {
	height: 130px;
	margin-bottom: 20px;
	background-color: rgb(17, 17, 17);
}

h4 {
	margin: 20px;
}
p{
margin-top:10px;
margin-left:100px;
}
.logo_guida {
	margin-left: 300px;
	float: left;
}

.title_top {
	margin-left: 200px;
	float: left;
}

input{
margin-left:100px;
margin-top:2px;
}

#accordion1 {
	width: 200px;
	overflow: hidden;
}
</style>
</head>
<body style="padding:10px">
	<!-- 
	<div class="l-page-top">
		<div class="logo">
			<div class="logo_guida">
				<img style="width:100px;height:100px;" src="../img/guida.png">
			</div>
			<div class="title_top">
				<img style="width:280px;height:130px;" src="../img/title.png">
			</div>
		</div>
	</div>
	 -->
	<div id="layout1">
		<div position="left">
			<div id="accordion1">
				<div title="学生管理">
					<div style="width:100%;float:left;overflow:auto;  ">
						<ul id="tree1">
							<li><span><a href="studentinfo.jsp">学生信息</a></span>
							</li>
							<li><span><a href="WebPage/TUI/notice.jsp">发布通知</a></span></li>
						</ul>
					</div>
				</div>
				<div title="案例库">
					<div style="width:200px;float:left;overflow:auto;  ">
						<ul id="tree2">
							<li><span><a href="WebPage/TUI/example.jsp">经典案例上传</a></span>
								</li>
							<li><span><a href="WebPage/TUI/lookexample.jsp">案例浏览</a></span>
							</li>							
						</ul>
					</div>
				</div>
				<div title="课程相关" style="padding:10px">
					<div style="width:200px;float:left;overflow:auto;  ">
						<ul id="tree3">
						<li><span><a href="WebPage/TUI/setCourse.jsp">发布相关课程</a></span>
						<li><span><a href="WebPage/TUI/setBook.jsp">发布作业</a></span>	
						</ul>
					</div>
				</div>
				<div title="课程作业">
					<div style="width:200px;float:left;overflow:auto;  ">
						<ul id="tree4">
							<li><span><a href="WebPage/TUI/setwork.jsp">发布作业</a></span>
							<li><span><a href="WebPage/TUI/lookwork.jsp">查看作业</a></span>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div position="center" title="经典案例上传">
		<p>文件命名：文件名_案例类型</p>
		<p>案例类型：</p>
		<p>雪求分析、软件、详细设计</p>
		      <form name="form1" method="post" action="tupdate" id="form1" enctype="multipart/form-data">	 	      
		      <input type="file" name="file" style="margin-top:20px;width:200px;height:30px;"/>	
		      <input type="submit" value="上传"/>	        		      		             
		      </form>
		
		</div>
	</div>
	<div class="l-page-bottom"></div>
</body>
</html>
