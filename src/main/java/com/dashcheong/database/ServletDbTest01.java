package com.dashcheong.database;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dashcheong.common.MysqlService;

@WebServlet("/db/test01/")
public class ServletDbTest01 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
//		String insertQuery = "INSERT INTO `apt_info`\r\n"
//				+ "(`realtorId`,`address`,`area`,`type`,`price`,`rentPrice`,`createdAt`,`updatedAt`)\r\n"
//				+ "VALUES\r\n"
//				+ "(3,'헤라펠리스 101동 5305호', 350, '매매',1500000,NULL,now(),now());";
//		
//		int count = mysqlService.update(insertQuery);
//		out.println("삽입 결과 : " + count);
		
		String selectQuery = "SELECT `address`,`area`,`type` FROM `apt_info` ORDER bY `id` DESC LIMIT 10";
		
		ResultSet resultSet = mysqlService.select(selectQuery);
		
		try {
			while(resultSet.next()) {
				out.print("매물 주소 : " + resultSet.getString("address"));
				out.print(", 면적 : " + resultSet.getInt("area"));
				out.println(", 타입 : " + resultSet.getString("type"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mysqlService.disconnect();
//		
	}

}
