package com.dashcheong.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/annotation01")
public class Annotation01 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		Date now = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		String formatString = formatter.format(now);		
//		out.println("오늘의 날짜는 " + formatString);
		
		out.println("<html><head><h2>[단독]고양이가 야옹해</h2><title>고양이</title></head><body>기사입력시간 : " +formatter.format(now)+ "<hr>끝</body></html>");
		
	}

}
