package com.dashcheong.database;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dashcheong.common.MysqlService;

@WebServlet("/db/ex01")
public class ServletDbEx01 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
//		try {
//			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//			
//			String url = "jdbc:mysql://localhost:3306/practice";
//			String userId = "root";
//			String password = "root";
//			
//			Connection connection = DriverManager.getConnection(url, userId,password);
//			Statement statement = connection.createStatement();
//			String selectQuery = "Select * From `used_goods`";
//			ResultSet resultSet = statement.executeQuery(selectQuery);
//			
//	
//			
//			while(resultSet.next()) {
//				String title = resultSet.getString("title");
//				int price = resultSet.getInt("price");
//				
//				out.println("제품명 : " + title);
//				out.println("가격 : " + price);
//			}
//			
//			String insertQuery = "Insert Into `used_goods`\r\n"
//					+ "(`sellerId`,`title`,`price`,`description`,`picture`,`createdAt`,`updatedAt`)\r\n"
//					+ "VALUES\r\n"
//					+ "(3,'고양이 간식 팝니다',2000,'저희고양이가 까다로워서 안먹네요',NULL,now(),now());";
//			//insert, update, delete 쿼리
//			//리턴 결과는 실행된 행의 갯수
//			int count = statement.executeUpdate(insertQuery);
//			
//			out.println("삽입 : " + count);
//			
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String selectQuery = "Select * From `used_goods`";
		ResultSet resultSet = mysqlService.select(selectQuery);
		
		try {
			while(resultSet.next()) {
			String title = resultSet.getString("title");
			int price = resultSet.getInt("price");
			
			out.println("제품명 : " + title);
			out.println("가격 : " + price);
		}
			
			String insertQuery = "Insert Into `used_goods`\r\n"
			+ "(`sellerId`,`title`,`price`,`description`,`picture`,`createdAt`,`updatedAt`)\r\n"
			+ "VALUES\r\n"
			+ "(3,'고양이 간식 팝니다',2000,'저희고양이가 까다로워서 안먹네요',NULL,now(),now());";
			
//			int count = statement.executeUpdate(insertQuery);
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		mysqlService.update(selectQuery);
		
	}

}
