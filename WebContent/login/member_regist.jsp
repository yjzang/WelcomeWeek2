<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>

.center{ height: 40px; margin: 0 auto; padding-top: 10px; text-align: center;}
.gender{
	display : inline-block;
	width : 120px;
	height: 30px;
 }
 .gender label{
 	display: block;
 	line-height: 30px;
 	width: 100%;
 	border: 2px solid #e1e1e1;
 	border-radius: 5px;
 }
 .gender label.on{
 
 	border-color : green ;
 	color:green;
 }
 .gender input{
 	display: none;
 }
 

</style>
<body>

<table>
	<tr>
	<td><input type="text" name="id" placeholder="아이디">
		<span>@naver.com</span>
	</td>
	</tr>
	<tr>
	<td><input type="text" name="pw" placeholder="비밀번호">
	</td>
	</tr>
	<tr>
	<td><input type="text" name="pw2" placeholder="비밀번호 재확인">
	</td>
	</tr>
	<tr></tr>
	<tr>
	<td><input type="text" name="name" placeholder="이름">
	</td>
	</tr>
	<tr>
	<td>
	<div class="center">
	  <span class="gender">
	   <label for="male" class="on">
	   	 남자
		 <input type="radio" name="gender" id="male" >
	   </label>
	  </span>
	  <span class="gender">
      <label for="female" >
      	여자
		<input type="radio" name="gender" id="female">
	   </label>
	 </span>
    </div>
    </td>
	</tr>
	<tr>
	<td><input type="text" value="생일" size="2" disabled="disabled">
	<input type="text" name="name" placeholder="년(4자)">
	<select name="month">
	<option value="0">월
	<option value="1">1월
	<option value="2">2월
	<option value="3">3월
	<option value="4">4월
	<option value="5">5월
	<option value="6">6월
	<option value="7">7월
	<option value="8">8월
	<option value="9">9월
	<option value="10">10월
	<option value="11">11월
	<option value="12">12월
	</select>
	<input type="text" name="day" placeholder="일">
	</td>
	
	
	</tr>

</table>	
  
</body>
</html>