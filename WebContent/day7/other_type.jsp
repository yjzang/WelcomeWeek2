<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage= "error.jsp" %> <!-- 에러가 난다면 errorPage로 보내겠다. -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 다른 타입의 JSP</title>
</head>
<body>
<!-- 액션 태그 -->
<%
	/* int a = 10/0;
	out.print(a); */
%>
<!-- 태크에서 객체를 인스턴스화할 수 잇는 jsp 문법  -->
<jsp:useBean id="member" class="kr.co.bit.day4.Member" scope="request"></jsp:useBean> <!-- scope에 전송방식을 적어주면 자동으로 setAttribute 해준다. -->
<!-- id는 변수를 의미 class에는 주소를 넣으면 해당 객체를 불러올 수 있다. -->
<!-- Member member = new Member() ; 와 같은 문장이다. -->
<% 
	member.setId("admin");
	System.out.println(member.getId());

%>

<jsp:getProperty property="id" name="member"></jsp:getProperty>
<!-- name은 인스턴스 네임, property는 선언된 변수 이름 , getProperty하면 해당변수를 out 시켜준다.  -->

<jsp:setProperty property="pw" name="member" value="1234"/>   <!-- 태그를 '/>'를 써줘서 닫으면 뒤에 </jsp:~~>태그를 따로 안만들어도 약식으로 사용가능 -->
<% 
	System.out.println(member.getPw());
	//request.setAttribute("member", member);  scope에 request 적어주면 setAttribute 기능을 한다.
	
%>

<jsp:forward page="process.jsp"> <!-- forward와 같은 기능.  페이지 이동 및 변수 전송-->
		<jsp:param value="data1" name="etc1"/>
		<jsp:param value="data2" name="etc2"/>
</jsp:forward>
</body>
</html>