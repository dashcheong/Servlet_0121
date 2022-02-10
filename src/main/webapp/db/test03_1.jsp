<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dashcheong.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
    
	<style>
		#wrap {width:800x; }
		header {height:80px; width:800x; background-color:#ff8c00;}
		nav {height:50px; width:800x; background-color:#ff8c00;}
		section { width:800x; justify-content: space-between; }
		.main{  border: 2px solid #f89b00; width:300px; height:300px; }
		.thumnail{width:280px;height:180px; overflow:hidden;}
	
	
		footer{height:50px; width:800x; }	
	</style>    
</head>
<body>
	
	<%
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "SELECT `sellerId`,`title`,`price`,`picture` FROM `used_goods`";
	
		ResultSet resultSet = mysqlService.select(query);
		
	%>
	
	<div class="container">
		<header class=""></header>
		<nav class=""></nav>
		   <section class="main-content d-flex flex-wrap mt-3 ">
		   <% while(resultSet.next()) { %>
                    <div class="main mt-3 ">
                        <div class="thumnail mt-3 ml-2 " >
                            <img class="image"src="<%= resultSet.getString("picture") %>" style=width:280px; >
                        </div>
                        <div class="title mt-2"><%= resultSet.getString("title") %></div>
                        <div class="author mt-1"><%= resultSet.getString("price")%>원</div>
                        <div class="info">하구루</div>
                    </div>
                <%} %>   
                 
                </section>
		<footer></footer>
		
	</div>	

	
</body>
</html>