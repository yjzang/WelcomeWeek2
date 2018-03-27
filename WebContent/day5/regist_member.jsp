<%@page import="kr.co.bit.day4.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>

<script type="text/javascript">


	function idCheck() {
		
		// alert("사용 가능한 아이디 입니다.");
		var checkid = document.getElementById("userid").value;
		window.open("id_check.jsp?id=" + checkid ,"","width=400px height=300px");
		return false;
	}
	
	function check_empty(){
		
		var val = document.getElementById("pw").value;
		if(val==""){
			alert("비밀번호를 입력하세요");
		}
		return false;
	}
	function checkbox_check(){
		
		var eles = document.getElementsByClassName("langs");  // 이번엔 value값 필요없고 태그만 가져온다 태그는 배열 혀태로 가져온다.
		var count=0;
		for(var i=0; i<eles.length;i++){
			
			if(eles[i].checked){
				alert((i+1)+" checked");
				count++;
			}
		}
		alert(count + "개를 선택하셨습니다.")
		return false;
		
	}
	
	function zip_check(){
		
		var zip1 = document.getElementById("zip1").value; // 이번엔 value값 필요없고 태그만 가져온다 태그는 배열 혀태로 가져온다.
		var zip2 = document.getElementById("zip2").value;
		window.open("zip_check.jsp?zip1=" + zip1 +"&zip2="+ zip2 ,"","width=300px height=200px");

		return false;
		
	}
	
	function select_check(){
		
		var pro = document.getElementById("zero").value; // 이번엔 value값 필요없고 태그만 가져온다 태그는 배열 혀태로 가져온다.
		if(pro=="0"){
			alert("프로젝트 경험을 선택하십시오.");
		}
		return false;
		
	}
	
	function final_check(){
		
		var val1 = document.getElementById("isIdCheck").value;
		var val2 = document.getElementById("isZipCheck").value;
		
		alert("아이디체크"+val1);
		alert("우편번호체크"+val2);
		return false;
		
		
	}
	
</script>
	
</head>


<body>

<form action="process_regist.jsp" method="post">
<table>

<%	 Member member = (Member)session.getAttribute("member"); 
	if(member==null){
		
		member = new Member();
		member.setId("");
		member.setPw("");
		member.setName("");
		member.setZip1("");
		member.setZip2("");
		member.setAddr1("");
		member.setAddr2("");
		member.setEmail("");
		member.setLang(new String[]{"0","","",""});
		member.setTool("0");
		member.setProject("1");
		
		
	}
%>		
	<tr><td>아이디</td><td><input onclick="return idCheck()" type="text" name="id" id="userid" value= "<%=member.getId()%>" readonly="readonly"> </td>
	<td><button onclick="return idCheck()">아이디 체크</button></td> <!-- false값을 리턴하면 button이 form action으로 전송하는 기능이 없어진다. -->
	<td><input type="hidden" name="isIdCheck" value="false" id="isIdCheck"></td></tr>  
	<tr><td>패스워드</td><td><input onblur="return check_empty()" type="password" name="pw" id="pw" value= "<%=member.getPw()%>"></td>
	<td><button onclick="return check_empty()">빈칸 체크</button></td><td></td></tr>
	<tr><td>이름</td><td><input type="text" name="name" value= "<%=member.getName()%>"></td><td></td><td></td></tr>
	<tr><td>우편번호</td>
		<td><input type="text" name="zip1" id= "zip1" size="3" value= "<%=member.getZip1()%>">-
		<input type="text" name="zip2" id="zip2" size="3" value= "<%=member.getZip2()%>"></td>
		<td><button onclick="return zip_check()">우편번호 체크</button></td>
		<td><input type="hidden" name="isZipCheck" id="isZipCheck" ></td></tr>
	<tr><td>주소1</td><td><input type="text" name="addr1" size="30" value= "<%=member.getAddr1()%>"></td><td></td><td></td></tr>
	<tr><td>주소2</td><td><input type="text" name="addr2" size="30" value= "<%=member.getAddr2()%>"></td><td></td><td></td></tr>
	
	<tr><td>이메일</td><td><input type="text" name="email" value= "<%=member.getEmail()%>"></td><td></td><td></td></tr>
	<tr><td>사용언어</td><td>
		<input type="checkbox" name="lang" class="langs" value="0" <%=member.getLang()[0].equals("0")?"checked" : "" %>>자바
		<input type="checkbox" name="lang" class="langs" value="1" <%=member.getLang()[1].equals("1")?"checked" : "" %>>파이썬
		<input type="checkbox" name="lang" class="langs" value="2" <%=member.getLang()[2].equals("2")?"checked" : "" %>>C++
		<input type="checkbox" name="lang" class="langs" value="3" <%=member.getLang()[3].equals("3")?"checked" : "" %>>C
		</td><td><button onclick="return checkbox_check()">체크박스 확인</button></td><td></td></tr>
	<tr><td>사용툴</td><td>
		<input type="radio" name="tool" value="0" <%=member.getTool().equals("0")?"checked" : "" %>>이클립스
		<input type="radio" name="tool" value="1" <%=member.getTool().equals("1")?"checked" : "" %>>Visual Studio
		<input type="radio" name="tool" value="2" <%=member.getTool().equals("2")?"checked" : "" %>>Xcode
		<input type="radio" name="tool" value="3" <%=member.getTool().equals("3")?"checked" : "" %>>notepad
		</td><td></td><td></td></tr>
	<tr><td>프로젝트경험</td>
		<td>
		<select name="project" id="zero"> <!-- id 태그를 달아줄때는 select 태그에 달아야 밑에서 선택한 value값을 받는다  -->
			<option value="0"  <%=member.getProject().equals("0")?"selected":""%>>프로젝트 경험 <!-- option 태그를 하나 선택해서  id 태그를 달아 사용하면 value값이 계속 그 선택된 옵션값으로만 보내진다.--> 
			<option value="1" <%=member.getProject().equals("1")?"selected":""%>>1~2회
			<option value="2" <%=member.getProject().equals("2")?"selected":""%>>3~4회
			<option value="3" <%=member.getProject().equals("3")?"selected":""%>>5~6회
			<option value="4" <%=member.getProject().equals("4")?"selected":""%>>7회이상
		</select>
		</td><td><button onclick="return select_check()">select 체크</button></td><td></td></tr>
	<tr>
		<td colspan="4"><input type="submit" value="가입" onclick="return final_check()"></td>
		
	</tr>
</table>	
</form>

</body>
</html>