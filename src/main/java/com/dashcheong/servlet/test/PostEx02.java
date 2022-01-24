package com.dashcheong.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/post02")
public class PostEx02 extends HttpServlet {
	
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "dashcheong");
	        put("password", "asdf");
	        put("name", "정승훈");
	    }
	};	
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		//아이디 패스워드 전달 받아서 출력
		String id = request.getParameter("id");
		String password= request.getParameter("password");
	
		
		out.println("<html><head><title>로그인</title></head>");
		out.println("<body>");
		//id가 일치하지 않는 경우
		if(!id.equals(userMap.get("id"))) {
			out.println("<h3>아이디가 일치하지 않습니다</h3>");
			out.println("</body></html>");
			return;
		}
		
		
		
		//password가 일치하지 않는 경우
		if(!password.equals(userMap.get("password"))) {
			out.println("<h3>비밀번호가 일치하지 않습니다</h3>");
			out.println("</body></html>");
			return;
		}
		
		
		out.println("<h3>" +userMap.get("name") + "님 환영합니다.</h3>");
		
		
		out.println("</body></html>");
		
		}
	
	

}
