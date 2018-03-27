<%@page import="java.io.FileWriter"%>
<%@page import="kr.co.bit.day4.MemberList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.bit.day4.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>데이터 저장소</title>
</head>
<body>
<!-- 회원정보 저장
	 회원정보 검색이 가능해야 한다. -->

<%!	ArrayList<Member> list;
		
	public void jspInit(){
		
		list = new ArrayList<Member>();
	}
%>
		
	
<%		Member mb = (Member)session.getAttribute("member");
		list.add(mb);
		System.out.println(mb.getName() + "님이 등록되었습니다. \n 등록인원" + list.size());
		
		session.setAttribute("list",list);
%>		
		
		
		
<form action="search.jsp" method="get">
	아이디 조회 : <input type="text" name="id" >
	<br>
	<input type="submit" value="검색">
	 <br> <br>
	 <a href = "regist_member.jsp">회원 등록</a>
</form>
	
</body>
</html>