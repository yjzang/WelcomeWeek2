<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
	function welcome(){
		document.write("Hello, javascript!");  // document.write 사용 잘 안한다. jsp로 그냥 다 표현하나봄
		alert("환영합니다!");
		
	}  //body 에서 호출 불가 -- event 등록 해주어야함
	
	var example1= function(){
		var name = "admin";
		var kor = 30;
		var average = 30.2;
		//데이터 타입이 하나다.
	}
	
	function example2(){
			for(var i=0; i<10; i++){
				document.write(i+1);
			}
			var total = sum2(10,20);
			alert(total+"from return function");
	
	}
	function sum(a,b){
		return a+b;
	}
	function sum2(a,b){
			return a+b;
	}		
	
	
	
	function other_form(){
		var add = function(a,b){
			return a+b;
		}
	
		var multi = function(a,b){
			
			 return a*b;
		}
		var r1 = add(10,20);
		var r2 = multi(10,20);
		alert(r1);
		alert(r2);
	}
	
	var add = function(a,b){
		
		var r1=a+b;
		alert(r1);
	}	
	
	//Ajax
	function connectServer(){
		var xhp = new XMLHttpRequest();
		xhp.onreadystatechange = function(){
			//callback 이벤트 - 네트워크 상태 변화가 나타날때마다 function (익명)함수를 실행해라 . function 이름이 없으면 그게 익명함수
			if(this.readyState==4&&this.status==200){  //status 404-페이지 찾을 수 없다. 500-application문제 . 200- 성공 , 값을 받아올 수 있다.  
				var text = this.responseText;
				alert(text);
				
			}
		}
		
		xhp.open("GET", "server.jsp" , true); // server.jsp에 get방식으로 보낸다. true는 비동기식을 의미. 
		xhp.send();
		
	}
		
</script>
</head>
<body>
<button onclick="connectServer()">서버접속</button>
<button onclick="welcome()"> 자바 스크립트 실행 </button>
<button onclick="example2()"> ex02 </button>
<button onclick="other_form()"> other_form </button>
<button onclick="add(10,20)">add</button>
	
</body>
</html>