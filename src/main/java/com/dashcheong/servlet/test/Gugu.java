package com.dashcheong.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/gugu")
public class Gugu extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String numberString = request.getParameter("number");
		
		int num = Integer.parseInt(numberString);
		
		
		out.println("<html><head><title>援ш뎄�떒</title><head>");
		out.println("<body><ul>");
			for( int i = 1; i < 10;i++) {
				out.println("<li>" + num+" X "+i+" = "+ (num * i) + "</li>");
			
		};
		out.println("</ul></body></html>");
	}

}
