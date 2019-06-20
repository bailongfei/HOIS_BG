<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>药品管理页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap-theme.min.css">
	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/easyui/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/easyui/themes/bootstrap/easyui.css">

	<script src="${pageContext.request.contextPath}/resource/jquery-1.11.3.min.js"></script>
	<script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resource/easyui/jquery.easyui.min.js"></script>

	

  </head>
  
  <body>
    	<div class="easyui-panel" style="padding:5px">
			<ul id="tt" class="easyui-tree"></ul>
		</div>
  </body>
  <script>
  
  $("#tt").tree({
	  url:"${pageContext.request.contextPath}/menu_init.action",
	  method:"get",
	  checkbox:true
  });
 	
  
  </script>
</html>
