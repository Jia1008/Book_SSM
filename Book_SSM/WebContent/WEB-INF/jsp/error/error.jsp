<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path=request.getContextPath();
	String basepath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<base href="<%=basepath %>" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>出错了</title>
</head>
<body>
	<h1>error:!${msg }</h1>
</body>
</html>