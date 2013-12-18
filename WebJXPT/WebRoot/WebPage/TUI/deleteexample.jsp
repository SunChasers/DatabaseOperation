<%@ page language="java" import="java.util.*" import="com.web.dbDAO.*"
	import="com.web.dbTable.*" import="com.web.page.PageInfo"
	pageEncoding="utf-8"%>
<%  
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";		
	int currentPage = 1;//开始默认第一页
	String c = request.getParameter("currentPage");//获取当前页
	if (c != null && !c.equals("")) {
		currentPage = Integer.parseInt(c);
	}
	
	PageInfo infos = new PageInfo(currentPage);
	infos.setCurpage(currentPage);
	infos.setCount(10);//每一页显示的页数
	infos.setTotal();
	List<Example> elist = infos.geteList();
	
	String deleteDate = new String(request.getParameter("delete").getBytes("ISO-8859-1"), "utf-8");
    System.out.print(deleteDate);
	ExampleDAO dao=new ExampleDAO();
	boolean isdelete = false;
	if(deleteDate.equals("all")){
	dao.deleteall();
	isdelete = true;
	}else{
	dao.delete(deleteDate);
	isdelete = true;
	}
	if(isdelete ==true){
	response.sendRedirect("../TUI/lookexample.jsp");
	}
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
						display : '序号',
						name : 'CustomerID',
						align : 'left',
						width : 120
					}, {
						display : '标题',
						name : 'CompanyName',
						minWidth : 60
					}, {
						display : '开始时间',
						name : 'ContactName',
						width : 50,
						align : 'left'
					}, {
						display : '结束时间',
						name : 'ContactName',
						minWidth : 140
					}, {
						display : '内容',
						name : 'ContactName',
						minWidth : 140
					}, {
						display : '提交',
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
	

</body>
</html>
