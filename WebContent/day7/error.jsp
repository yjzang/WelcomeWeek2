<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%> <!-- isErrorPage '이 페이지는 에러 처리 페이지이다.'라는뜻. 반드시 적어줘야 에러페이지로서 역할을 수행함 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 에러의 내용 </h1>
<% 
	out.print(exception.getMessage()+"<br>");  // 핵심적인 내용만 보고싶을땐 getmessage()
	out.print(exception);	// 어떤 exception인지 까지 다 보고 싶으면 exception을 출력

%>


</body>
</html>