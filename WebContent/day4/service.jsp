<%@page import="kr.co.bit.day4.Student"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.bit.day4.FileDataService"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	FileDataService fds = new FileDataService();

 	String path = application.getRealPath("WEB-INF/file/Abc1115.txt");
	ArrayList<Student> list = fds.getFileData(path);
	session.setAttribute("list",list);
	response.sendRedirect("result.jsp");
	
%>
</body>
</html>