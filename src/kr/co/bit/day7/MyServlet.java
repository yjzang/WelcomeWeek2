package kr.co.bit.day7;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext;

public class MyServlet extends HttpServlet{

		
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("get");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException { 
		// TODO Auto-generated method stub
		System.out.println("post");
		resp.setContentType("text/html");
		String id = req.getParameter("id");
		System.out.println(id);
		PrintWriter out = resp.getWriter(); // HttpServletResponse 객체가 input으로 들어오고 있다. 가져다 쓸수있다. getWriter 인스턴스에 프린트 해주면 출력됨. 
		out.print("<html><body><h1>Hello Servlet</h1></body></html>");  //이짓을 언제함 - 차차 다른 용도로 쓰이게됨
		ServletConfig config = getServletConfig(); // 서블릿의 환경 정보를 불러오는 메소드 .xml에 저장한 데이터 값을 가져오기 위해 필요하다.
		String data = config.getInitParameter("data");
		ServletContext ctx = getServletContext();
		String dbInfo = ctx.getInitParameter("dbInfo");
		System.out.println(data);
		System.out.println(dbInfo);
	}
	
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("init");
	}
	
	@Override
	public void destroy() {
		System.out.println("destroy");
	}
	

}
