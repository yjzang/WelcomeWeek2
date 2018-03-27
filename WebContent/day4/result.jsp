<%@page import="kr.co.bit.day4.Student"%>
<%@page import="java.util.ArrayList"%>
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
<%	/* Date date=(Date)session.getAttribute("date");
	String now = String.format("%s시 %s분 %s초",date.getHours(),date.getMinutes(), date.getSeconds());	
	String now2 = date.getHours()+"시"+date.getMinutes()+"분"+ date.getSeconds() +"초"; // +로 엮으면 스트링꼴됨	

	out.print(now); */
%>	
<%	
	ArrayList<Student> list = (ArrayList<Student>)session.getAttribute("list");
	out.print(list.size());
%>
</body>
</html>