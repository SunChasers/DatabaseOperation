<%@ page language="java" import="java.util.*" import="com.web.dbDAO.*"  import="com.web.dbTable.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	StudentDAO studentdao = new StudentDAO();	
	List<Student> slist = new ArrayList<Student>();
	slist = studentdao.query();
	
    String deleteDate = new String(request.getParameter("delete").getBytes("ISO-8859-1"), "utf-8");
    System.out.print(deleteDate);
	StudentDAO sdao=new StudentDAO();
	boolean isdelete = false;
	if(deleteDate.equals("all")){
	sdao.deleteall();
	isdelete = true;
	}else{
	sdao.delete(deleteDate);
	isdelete = true;
	}
	if(isdelete ==true){
	response.sendRedirect("../TUI/studentinfo.jsp");
	}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">  
    <title>学生信息</title>
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
<script src="WebPage/ligerUI/js/plugins/ligerForm.js" type="text/javascript"></script>
<script src="WebPage/ligerUI/js/plugins/ligerTab.js" type="text/javascript"></script>
<script src="WebPage/ligerUI/js/plugins/ligerDrag.js" type="text/javascript"></script>
<script src="WebPage/ligerUI/js/plugins/ligerGrid.js" type="text/javascript"></script>

<script type="text/javascript">
	$(function() {

		$("#layout1").ligerLayout({
			leftWidth : 200,
			heightDiff : -43
		});
		
		$("#btn").ligerButton();
		
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
	
	var grid = null;
			$(function() {
				grid = $("#maingrid4").ligerGrid({
					columns : [ {
						display : '学号',
						name : 'CustomerID',
						align : 'left',
						width : 120
					}, {
						display : '姓名',
						name : 'CompanyName',
						minWidth : 60
					}, {
						display : '班级',
						name : 'ContactName',
						width : 50,
						align : 'left'
					}, {
						display : '电话',
						name : 'ContactName',
						minWidth : 140
					}, {
						display : '邮箱',
						name : 'ContactName',
						minWidth : 140
					}],
					pageSize : 30,
					where : f_getWhere(),
					data : $.extend(true, {}, CustomersData),
					width : '100%',
					height : '100%'
				});

				$("#pageloading").hide();
			});
			function f_search() {
				grid.options.data = $.extend(true, {}, CustomersData);
				grid.loadData(f_getWhere());
			}
			function f_getWhere() {
				if (!grid)
					return null;
				var clause = function(rowdata, rowindex) {
					var key = $("#txtKey").val();
					return rowdata.CustomerID.indexOf(key) > -1;
				};
				return clause;
			}
</script>

<style type="text/css">
.l-table-edit {
	
}

.l-table-edit-td {
	padding: 4px;
}

.l-button-submit,.l-button-test {
	width: 80px;
	float: left;
	margin-left: 10px;
	padding-bottom: 2px;
}

.l-verify-tip {
	left: 230px;
	top: 120px;
}

#errorLabelContainer {
	padding: 10px;
	width: 300px;
	border: 1px solid #FF4466;
	display: none;
	background: #FFEEEE;
	color: Red;
}

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

input {
	margin-left: 20px;
	margin-top: 2px;
}

#accordion1 {
	width: 200px;
	overflow: hidden;
}

form p {
	margin-top: 20px;
	margin-left: 20px;
}

.l-button-submit {
	width: 80px;
	margin-left: 20px;
	margin-top: 20px;
	padding-bottom: 2px;
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
							<li><span>学生文档</span></li>
							<li><span><a href="WebPage/TUI/notice.jsp">发布通知</a> </span></li>
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
							<li><span>节点1</span>
								<ul>
									<li><span>节点1.1</span>
										<ul>
											<li><span>节点1.1.2</span>
											</li>
											<li><span>节点1.1.2</span>
											</li>
										</ul></li>
									<li><span>节点1.2</span>
									</li>
								</ul></li>
							<li><span>节点2</span>
							</li>
							<li><span>节点3</span>
								<ul>
									<li><span>节点3.1</span>
									</li>
									<li><span>节点3.2</span>
									</li>
								</ul></li>
						</ul>
					</div>
				</div>
				<div title="课程作业">
					<div style="width:200px;float:left;overflow:auto;  ">
						<ul id="tree4">
							<li><span><a href="WebPage/TUI/setwork.jsp">发布作业</a> </span>
							<li><span><a href="WebPage/TUI/lookwork.jsp">查看作业</a> </span>
							</li>
							<li isexpand="false"><span>节点3</span>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div position="center" title="发布通知"
			style="padding:6px; overflow:hidden;">
			<div ligeruiid="maingrid4" class="l-panel" id="maingrid4"
				style="margin: 0px; padding: 0px; width: 100%;">
				<div style="display: none;" class="l-panel-header">
					<span class="l-panel-header-text"></span>
				</div>
				<div class="l-grid-loading">加载中...</div>
				<div class="l-panel-bwarp">
					<div class="l-panel-body">
						<div style="height: 460px;" id="maingrid4grid" class="l-grid">
							<div class="l-grid-dragging-line"></div>
							<div style="display: none; left: 311px; top: 24px;"
								class="l-grid-popup">
								<table cellpadding="0" cellspacing="0">
									<tbody>
										<tr class="">
											<td class="l-column-left"><input checked="checked"
												class="l-checkbox" columnindex="0" type="checkbox">
											</td>
											<td class="l-column-right">学号</td>
										</tr>
										<tr class="">
											<td class="l-column-left"><input checked="checked"
												class="l-checkbox" columnindex="1" type="checkbox">
											</td>
											<td class="l-column-right">姓名</td>
										</tr>
										<tr class="">
											<td class="l-column-left"><input class="l-checkbox"
												columnindex="2" type="checkbox">
											</td>
											<td class="l-column-right">班级</td>
										</tr>
										<tr class="">
											<td class="l-column-left"><input class="l-checkbox"
												columnindex="3" type="checkbox">
											</td>
											<td class="l-column-right">电话</td>
										</tr>
										<tr class="">
											<td class="l-column-left"><input class="l-checkbox"
												columnindex="4" type="checkbox">
											</td>
											<td class="l-column-right">邮箱</td>
										</tr>
										<tr class="">
											<td class="l-column-left"><input class="l-checkbox"
												columnindex="5" type="checkbox">
											</td>
											<td class="l-column-right">删除</td>
										</tr>
								
									</tbody>
								</table>
							</div>
							<div class="l-grid1">
								<div style="height: 23px;" class="l-grid-header l-grid-header1">
									<div class="l-grid-header-inner">
										<table class="l-grid-header-table" cellpadding="0"
											cellspacing="0">
											<tbody>
												<tr class="l-grid-hd-row"></tr>
											</tbody>
										</table>
									</div>
								</div>
								<div style="height: 511px;" class="l-grid-body l-grid-body1"></div>
							</div>
							<div class="l-grid2">
								<div style="height: 23px;" class="l-grid-header l-grid-header2">
									<div style="width: 668px;" class="l-grid-header-inner">
										<table class="l-grid-header-table" cellpadding="0"
											cellspacing="0">
											<tbody>
												<tr class="l-grid-hd-row">
													<td columnname="CustomerID" columnindex="0"
														style="height: 23px; width: 160px;"
														id="maingrid4|hcell|c101" class="l-grid-hd-cell"><div
															class="l-grid-hd-cell-inner">
															<span class="l-grid-hd-cell-text">学号</span>
														</div>
													</td>
													<td columnname="CompanyName" columnindex="1"
														style="height: 23px; width: 250px;"
														id="maingrid4|hcell|c102" class="l-grid-hd-cell"><div
															class="l-grid-hd-cell-inner">
															<span class="l-grid-hd-cell-text">姓名</span>
														</div>
													</td>
													<td columnname="CompanyName" columnindex="1"
														style="height: 23px; width: 200px;"
														id="maingrid4|hcell|c102" class="l-grid-hd-cell"><div
															class="l-grid-hd-cell-inner">
															<span class="l-grid-hd-cell-text">班级</span>
														</div>
													</td>			
													<td columnname="ContactName" columnindex="3"
														style="height: 23px; width: 200px;"
														id="maingrid4|hcell|c107" class="l-grid-hd-cell"><div
															class="l-grid-hd-cell-inner">
															<span class="l-grid-hd-cell-text">电话</span>
														</div>
													</td>
													<td columnname="ContactName" columnindex="4"
														style="height: 23px; width: 400px;"
														id="maingrid4|hcell|c107" class="l-grid-hd-cell"><div
															class="l-grid-hd-cell-inner">
															<span class="l-grid-hd-cell-text">邮箱</span>
														</div>
													</td>
													
                                                    <td columnname="ContactName" columnindex="5"
														style="height: 23px; width: 168px;"
														id="maingrid4|hcell|c107" class="l-grid-hd-cell"><div
															class="l-grid-hd-cell-inner">
															<span class="l-grid-hd-cell-text">删除</span>
														</div>
													</td>
											</tbody>
										</table>
									</div>
								</div>
								<div style="height: 529px;"
									class="l-grid-body l-grid-body2 l-scroll">
									<div style="width: 628px;" class="l-grid-body-inner">
										<table class="l-grid-body-table" cellpadding="0"
											cellspacing="0">
											<tbody>
											  <% for(Student student:slist){%>
												<tr id="maingrid4|2|r1001" class="l-grid-row">
												<td id="maingrid4|2|r1001|c101" class="l-grid-row-cell "
														style="width:120px;  "><div
															class="l-grid-row-cell-inner"
															style="width:73px;height:22px;min-height:22px; text-align:left;"><%=student.getSno()%></div>
													</td>
													<td id="maingrid4|2|r1001|c101" class="l-grid-row-cell "
														style="width:120px;  "><div
															class="l-grid-row-cell-inner"
															style="width:113px;height:22px;min-height:22px; text-align:left;"><%=student.getName()%></div>
													</td>
													<td id="maingrid4|2|r1001|c101" class="l-grid-row-cell "
														style="width:120px;  "><div
															class="l-grid-row-cell-inner"
															style="width:91px;height:22px;min-height:22px; text-align:left;"><%=student.getClasses()%></div>
													</td>
													<td id="maingrid4|2|r1001|c102" class="l-grid-row-cell "
														style="width:168px;  "><div
															class="l-grid-row-cell-inner"
															style="width:91px;height:22px;min-height:22px; "><%=student.getPhone()%></div>
													</td>
													<td id="maingrid4|2|r1001|c107" class="l-grid-row-cell "
														style="width:168px;  "><div
															class="l-grid-row-cell-inner"
															style="width:182px;height:22px;min-height:22px; "><%=student.getMailbox()%></div>
													</td>
													<td id="maingrid4|2|r1001|c108"
														class="l-grid-row-cell l-grid-row-cell-last "
														style="width:168px;  "><div
															class="l-grid-row-cell-inner"
															style="width:76px;height:22px;min-height:22px; "><a href="WebPage/TUI/studentinfo.jsp?delete=<%=student.getSno()%>">删除</a></div>
													</td>
												</tr>
												<% }%>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="l-panel-bar">
					<div class="l-panel-bbar-inner">
						<div class="l-bar-group  l-bar-message">
							<span class="l-bar-text">显示从1到30，总 30 条 。每页显示：30</span>
						</div>
						<div class="l-bar-group l-bar-selectpagesize">
							
						</div>
						<div class="l-bar-separator"></div>
						<div class="l-bar-group">
							<div class="l-bar-button l-bar-btnfirst">
								<span class="l-disabled"></span>
							</div>
							<div class="l-bar-button l-bar-btnprev">
								<span class="l-disabled"></span>
							</div>
						</div>
						<div class="l-bar-separator"></div>
						<div class="l-bar-group">
							<span class="pcontrol"> <input size="4" value="1"
								style="width:20px" maxlength="3" type="text"> / <span>1</span>
							</span>
						</div>
						<div class="l-bar-separator"></div>
						<div class="l-bar-group">
							<div class="l-bar-button l-bar-btnnext">
								<span class="l-disabled"></span>
							</div>
							<div class="l-bar-button l-bar-btnlast">
								<span class="l-disabled"></span>
							</div>
						</div>
						<div class="l-bar-separator"></div>
						<div class="l-bar-group">
							<div class="l-bar-button l-bar-btnload">
								<span class=""></span>
							</div>
						</div>
						<div class="l-bar-separator"></div>
						<div class="l-clear"></div>
					</div>
				</div>
			</div>

			<div style="display:none"></div>
		</div>
	</div>
	<div class="l-page-bottom">这个不是layout的一部分，作为单独的页面的底部</div>
</body>
</html>



