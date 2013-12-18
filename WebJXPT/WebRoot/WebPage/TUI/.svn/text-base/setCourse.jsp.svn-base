<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">  
    <title>发布作业</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

<link href="WebPage/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet"
	type="text/css" />
<style type="text/css">
</style>
<script src="WebPage/ligerUI/js/ligerui.min.js" type="text/javascript"></script> 
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
<script src="WebPage/ligerUI/js/plugins/ligerTab.js" type="text/javascript"></script>
    <script src="WebPage/ligerUI/js/plugins/ligerDrag.js" type="text/javascript"></script>
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

.l-table-edit {}
        .l-table-edit-td{ padding:4px;}
        .l-button-submit,.l-button-test{width:80px; float:left; margin-left:10px; padding-bottom:2px;}
        .l-verify-tip{ left:230px; top:120px;}
        #errorLabelContainer{ padding:10px; width:300px; border:1px solid #FF4466; display:none; background:#FFEEEE; color:Red;}
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

.logo_guida {
	margin-left: 300px;
	float: left;
}

.title_top {
	margin-left: 200px;
	float: left;
}

#accordion1 {
	width: 200px;
	overflow: hidden;
}

input{
  margin-top:2px;
  margin-left:20px;
}

form p{
margin-top:20px;
margin-left:20px;
} 
 .l-button-submit{width:80px;margin-left:20px;margin-top:20px; padding-bottom:2px;}

</style>
	<div id="layout1">
		<div position="left">
			<div id="accordion1">
				<div title="学生管理">
					<div style="width:100%;float:left;overflow:auto;  ">
						<ul id="tree1">
							<li><span><a href="WebPage/TUI/studentinfo.jsp">学生信息</a></span>
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
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div position="center" title="发布相关课程">
		
		      <form name="form1" method="post" action="SetCourseServerlet" id="form1">	 
		      <p>课程名称：</p>
		      <input type="text" name="CourseName" style="width:400px;height:30px;"/>    
		      <p>课程介绍：</p>
		      <textarea name="CourseIntroduce" cols="70" rows="20" class="l-textarea" style="width:400px;margin-top:2px;margin-left:20px;"></textarea><br>
		      <input type="submit" value="提交" id="Button1" class="l-button l-button-submit" /> 		             
              </form>
		  
        <div style="display:none">
        
        </div>
		</div>
	</div>
	<div class="l-page-bottom">这个不是layout的一部分，作为单独的页面的底部</div>
</body>
</html>
