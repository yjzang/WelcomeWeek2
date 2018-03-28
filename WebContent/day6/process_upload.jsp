<%@page import="java.util.Iterator"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>업로드</title>
</head>
<body>
<%
	long maxSize = 50*1024*1024;
	long holdSize = maxSize/10;  // 메모리에서 핸들링할 사이즈 -  메모리에서 적정한 크기만큼 갖고있다가 가득차면 파일을 보낸다. 
								// 버퍼랑 비슷한 개념 - 버퍼를 설정해주고 버퍼가 다 차면 보내주듯이 홀드사이즈 만큼 다 차면 업로드 해준다
	String path = "d:\\dev\\upload\\";

	DiskFileItemFactory factory = new DiskFileItemFactory();    // DiskFileItemFactory- 저장할 장소를 설정해주기 위해 인스턴스 하나 생성 / 업로드 할 내용에 대한 준비 작업
	factory.setDefaultCharset("UTF-8");						// 처리할 문자셋팅
	factory.setRepository(new File(path));					// factory.setRepository(new File(path)) - path 경로로 생성한 파일 인스턴스를 repository로 셋팅  // temp가 생기는 이유? 임시파일 생성 후  repository에 넣어줘야 제대로 된 파일이 생성됨    
	factory.setSizeThreshold((int)holdSize);		
	
	ServletFileUpload upload = new ServletFileUpload(factory);
	upload.setSizeMax(maxSize);
	upload.setHeaderEncoding("UTF-8");   // 업로드 될때 한글을 처리할 방식 셋팅 
	List<FileItem> items = upload.parseRequest(new ServletRequestContext(request));  // request-  각각의 태그를 핸들링해야된다. ( 파일이면 복사 , 변수면 키값 받기 ) // 정보가 있어야 복사를 할 수 있다.// 리퀘스트에서 날아오는 태그들을 분석한다.//분석해서 list에 넣어준다.  
	Iterator<FileItem> i = items.iterator();    // 이터레이터를 받으면 순서를 고려 안해도 된다. 그래서 리스트를 이터레이터로 변환해준다. 
	//이누머레이터 -열거자, 반복자 --> 
	
	
	
	while(i.hasNext()){  // 다음것이 있냐? 있으면 트루 
		FileItem item = (FileItem)i.next();   //  파일아이템 형태로 캐스팅 해서 받는다. 파일아이템이 하나씩 들어오는 과정   
		if(item.isFormField()){ // isFormField() -- file이냐 file 아니냐 거르는 메소드 - 주의))) 폼필드이면 파일이 아니다. 
			String name = item.getFieldName(); // 
			String value = item.getString();
			System.out.println(name+"/"+value);
		} else{		// 폼필드가 아니면 파일이다.  
			String fileName = item.getName(); // 겟네임은 파일경로 
			System.out.println(fileName);  
			int index = fileName.lastIndexOf("\\"); // 
			System.out.println(index);  
			fileName = index!=-1?fileName.substring(index+1):fileName;
			System.out.println(fileName);
			File file = new File(path+fileName); // 새로운 파일의 주소 
			item.write(file); //업로드 
		}
		
	}
	out.print("success");
	
%>
</body>
</html>