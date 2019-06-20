<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'easyuiDate.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resouces/easyui/easyuiDate/easyui.css">

<script src="${pageContext.request.contextPath}/resouces/jquery-1.11.3.min.js"></script>
<!--使用10.0以下低版本jQuery可以不调用jquery-migrate-1.2.1.min.js版本迁移辅助插件-->
<script src="http://www.jq22.com/jquery/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resouces/easyui/easyuiDate/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resouces/easyui/easyuiDate/jquery.fullcalendar.js?v=0.7"></script>
  </head>
  
  <body class="easyui-layout">

	<div region="center">
		<div class="easyui-fullCalendar" fit="true"></div>
	</div>
 </body>

</html>
