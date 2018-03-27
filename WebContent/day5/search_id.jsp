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
 	String id= request.getParameter("id");
	 	if(id.equals("admin")){
		
	 		response.sendRedirect("id_check.jsp?check=0&id="+id);
	 		
	 	} else if(id.equals("user")){
	 		response.sendRedirect("id_check.jsp?check=1&id="+id);
	 		
	 	} else{
	 		response.sendRedirect("id_check.jsp?check=1&id="+id);
	 	}
 %>
</body>
</html>