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
		// id 값을 가져오기
		var userid = document.getElementById("id").value; // "id" 태그에 담겨있는 value 값을 가져온단 뜻이다.
		opener.document.getElementById("userid").value = userid;
		opener.document.getElementById("isIdCheck").value = true; 
		self.close();
	}
	


</script>
<body>
<%
	String id = request.getParameter("id");
	String check = request.getParameter("check");

%>
<br>
아이디 중복 확인
<br>
<form action = "search_id.jsp" method = "get">
		아이디 : <input type = "text" name= "id" id="id" value="<%=id%>">  <!--  태그에 있는 value값은 창에 기본적으로 띄워놓는값 --> 
				
		<br><br>
<%	
		if(check==null){
			 check="";
		}else if(check.equals("0")){
			out.print("사용할 수 없는 아이디 입니다.");
		}else if(check.equals("1")){
			out.print("사용할 수 있는 아이디입니다.");
		}
			
%>				
				
				
		<input type = "submit" value = "아이디 확인">
		
		<!--  
			search_id.jsp로 연결하여
			user만 사용가능하고 admin은 사용불가능하도록 결정한 후
			사용여부를 id_check.jsp에 전달하여 참고하도록한다.
			-->
		<button onclick="work_close()">아이디 사용하기</button>
				
	
</form>
</body>
</html>