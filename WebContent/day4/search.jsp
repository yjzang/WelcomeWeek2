<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.bit.day4.Member"%>
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
	String id = request.getParameter("id");
	ArrayList<Member> list =(ArrayList<Member>)session.getAttribute("list");
		
		
		for(int i=0; i<list.size(); i++){
			if(list.get(i).getId().equals(id)){
				
				request.setCharacterEncoding("UTF-8");
				id = list.get(i).getId();
				String pw = list.get(i).getPw();
				String name = list.get(i).getName();
				String zip1 = list.get(i).getZip1();
				String zip2 = list.get(i).getZip2();
				String addr1 =list.get(i).getAddr1();
				String addr2 =list.get(i).getAddr2();
				String email =list.get(i).getEmail();
				String[] lang =list.get(i).getLang();
				String tool =list.get(i).getTool();
				String project =list.get(i).getProject();
				
				Member member = new Member(id,pw,name,zip1,zip2,addr1,addr2,email,lang,tool,project);
					
				
				session.setAttribute("member", member);
				response.sendRedirect("regist_member.jsp");
			}
		}	
		
%>
	
	
</body>
</html>