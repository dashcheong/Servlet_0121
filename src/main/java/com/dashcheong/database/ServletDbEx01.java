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

@WebServlet("/db/ex01")
public class ServletDbEx01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
//		try {
//			
//			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//			
//			String url = "jdbc:mysql://localhost:3306/test_db0107";
//			String userId = "root";
//			String password = "root";
//			
//			Connection connection = DriverManager.getConnection(url, userId, password);
//			Statement statement = connection.createStatement();
//			
//			// �߰�ǰ ����Ʈ �������� 
//			String selectQuery = "SELECT * FROM `used_goods`";
//			ResultSet resultSet = statement.executeQuery(selectQuery);
//			
//			while(resultSet.next()) {
//				String title = resultSet.getString("title");
//				int price = resultSet.getInt("price");
//				
//				out.println("��ǰ�� : " + title);
//				out.println("���� : " + price);
//			}
//			
//			String insertQuery = "INSERT INTO `used_goods`\r\n"
//					+ "(`sellerId`, `title`, `price`, `description`, `picture`, `createdAt`, `updatedAt`)\r\n"
//					+ "VALUES\r\n"
//					+ "(3, '����� ���� �˴ϴ�', 2000, '���� ����̰� ��ٷο��� �ȸԳ׿�', NULL, now(), now());";
//			
//			// insert, update, delete ���� 
//			// ���� ����� ����� ���� ���� 
//			int count = statement.executeUpdate(insertQuery);
//			
//			out.println("���� : " + count);
//			
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String selectQuery = "SELECT * FROM `used_goods`";
		ResultSet resultSet = mysqlService.select(selectQuery);
		
		try {
			while(resultSet.next()) {
				String title = resultSet.getString("title");
				int price = resultSet.getInt("price");
				
				out.println("��ǰ�� : " + title);
				out.println("���� : " + price);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}