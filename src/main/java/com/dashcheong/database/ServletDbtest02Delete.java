package com.dashcheong.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dashcheong.common.MysqlService;

@WebServlet("/db/test02_delete")
public class ServletDbtest02Delete extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		
		String query = "DELETE FROM `site` WHERE `id` ="+ id;
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		mysqlService.update(query);
		
		response.sendRedirect("/db/test02_1.jsp");
		
	
	}
}