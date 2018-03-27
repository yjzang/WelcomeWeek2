<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
		function work_close(){
			var zip1 = document.getElementById("zip1").value;
			var zip2 = document.getElementById("zip1").value;
			opener.document.getElementById("zip1").value =zip1;
			opener.document.getElementById("zip2").value =zip2;
			opener.document.getElementById("isZipCheck").value =true;
			
			self.close();	
		}
		
</script>
<body>
<%
		String zip1= request.getParameter("zip1");
		String zip2= request.getParameter("zip2");
		String check= request.getParameter("check");
		
	
%>		<br>
<form action="search_zip.jsp" method="get">
		우편번호 : <input type="text" name="zip1" id="zip1" size="3" value=<%=zip1%>>
				- <input type="text" name="zip2" id="zip2" size="3" value=<%=zip2%>>
				<br><br>
				<%
					if(check==null){
						check="";
					}
					else if(check.equals("0")){
						
						out.print("우편번호를 입력하세요");
						
					} else if(check.equals("1")){
						
						out.print("사용할 수 있는 우편번호 입니다.");
					}
				
				%>
</form>						
		<input type = "submit" value = "우편번호 확인"> <button onclick="work_close()"> 사용하기</button>
</body>
</html>