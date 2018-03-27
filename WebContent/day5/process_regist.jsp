<%@page import="com.sun.media.jfxmedia.track.Track.Encoding"%>
<%@page import="com.sun.media.jfxmedia.track.Track.Encoding"%>
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
		request.setCharacterEncoding("UTF-8");   //한글 받아올때 깨지면 필요한 문장
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name =request.getParameter("name");
		String zip1 =request.getParameter("zip1");
		String zip2 =request.getParameter("zip2");
		String addr1 =request.getParameter("addr1");
		String addr2 =request.getParameter("addr2");
		String email =request.getParameter("email");
		String[] lang =request.getParameterValues("lang");
		String tool =request.getParameter("tool");
		String project =request.getParameter("project");
		String[] temp = {"","","",""};
		
		for(int i=0; i<lang.length; i++){
			
			int n = Integer.parseInt(lang[i]);
			temp[n] = n+""; // 우변 +""; 은 string 형태로 만들어준것이다. 
			// lang은 복수 선택이 가능한 체크박스 타입이다. 복수 선택을 하게 되면 선택한 선택지의 value값이 lang 배열의 0번방부터 순서대로 쌓이게 된다.
			// 2개를 선택 시 lang[0]=1 ,lang[1]=3 같은 형태로 저장되는데 이 값을 다시 원래페이지로 리턴하면 내가 선택한 값이 되돌아오지 않게 된다.
			// 따라서 temp라는 공백을 가진 배열을 하나 만들어서 배열을 각자 숫자에 맞게 재배열 시켜준다. lang[1]=1, lang[3]=3  
			
			
		}
		// Member 데이터 클래스를 만들어서 인스턴스를 하나 생성
		Member member = new Member();
			member.setId(id); 
			member.setPw(pw); 
			member.setName(name); 
			member.setZip1(zip1); 
			member.setZip2(zip2); 
			member.setAddr1(addr1); 
			member.setAddr2(addr2); 
			member.setEmail(email); 
			member.setLang(temp);    // 재정렬된 temp 배열을 lang에다가 set 시켜준다.
			member.setTool(tool);
			member.setProject(project);
			
		
		
		
	
		
		
		out.print(member);
		session.setAttribute("member", member);
		response.sendRedirect("regist_member.jsp");

%>
	
</body>
</html>