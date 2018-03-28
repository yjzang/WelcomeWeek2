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

	String zip1 = request.getParameter("zip1");
	String zip2 = request.getParameter("zip2");
	
	if(zip1==null||zip2==null||zip1.equals("")||zip2.equals("")){
		
		response.sendRedirect("zip_check.jsp?check=0");
		
	}	else {
		
		response.sendRedirect("zip_check.jsp?check=1");
	}
		
		
%>
</body>
</html>