package com.dashcheong.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/post01")
public class PostEx01 extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String introduce = request.getParameter("introduce");
		
		out.println("<html><head><title>로그인</title></head>");
		out.println("<body>");
		out.println("<h2>" + name + "님의 지원이 완료되었습니다.</h2>");
		out.println("<hr>지원내용<br>" + introduce);
		
		
		out.println("</body></html>");
		
		
			
		}
	

}
