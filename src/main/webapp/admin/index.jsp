<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    

	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resouces/easyui/themes/bootstrap/easyui.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resouces/easyui/themes/icon.css">
	<script src="${pageContext.request.contextPath}/resouces/easyui/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resouces/easyui/jquery.easyui.min.js"></script>


  </head>
  
  <body class="easyui-layout">
   <div data-options="region:'north',border:false" style="height:60px;background:#B3DFDA;padding:10px">
   	<h3>管理系统</h3>
   </div>
	<div data-options="region:'west',split:true,title:'菜单'" style="width:150px;padding:10px;">
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="addTab('新增','admin/addCheck.jsp')">新QQ增...</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="addTab('编辑排班','admin/')">编QQ辑...</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="addTab('查看排班','admin/room_select.jsp')">查看QQ...</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="addTab('新增','admin/JQueryDate/JQueryDate.jsp')">日期格式</a>
	</div>
	<div data-options="region:'south',border:false" style="height:50px;background:#A9FACD;padding:10px;">south region:admin</div>
	<div data-options="region:'center',title:'Center'">
		<div id="tt" class="easyui-tabs" style="height:100%;width:100%">
			<div title="Home"><h3>欢迎!</h3></div>
		</div>
	</div>
  </body>
</html>
<script>
function addTab(title, url){
	if ($('#tt').tabs('exists', title)){
		$('#tt').tabs('select', title);
	} else {
		var content = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:102%;height:125%;"></iframe>';
		$('#tt').tabs('add',{
			title:title,
			content:content,
			closable:true
		});
	}
}
</script>
