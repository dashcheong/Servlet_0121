package com.dashcheong.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/json")
public class GetMethodJson extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		response.setContentType("application/json");
		PrintWriter out = response.getWriter();
		
		String numberString1 = request.getParameter("number1");
		String numberString2 = request.getParameter("number2");
		
		int num1 = Integer.parseInt(numberString1);
		int num2 = Integer.parseInt(numberString2);
		int add = num1 + num2;
		int subtraction = num1 - num2;
		int multiplication = num1 * num2;
		int division = num1 / num2;
		
		
//	{"addition":add, "subtraction":subtraction, "multiplication":multiplication, "division":division}
		out.println("{\"addition\":" + add + ", \"subtraction\":"+subtraction+", \"multiplication\""
				+ ":"+multiplication+", \"division\":"+division+"}");
	
	}

}
