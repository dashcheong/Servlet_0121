<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜 시간 링크</title>
</head>
<body>
	<%
	
	request.getParameter("type");
	
	Date now = new Date();
	
	String result =null;
	if(request.getParameter("type").equals("date")){
		SimpleDateFormat formatter = new SimpleDateFormat("오늘 날짜 yyyy년 MM월 dd일");
		result = formatter.format(now);
		
	}
	if(request.getParameter("type").equals("time")){
		SimpleDateFormat formatter = new SimpleDateFormat("현재 시간 hh시mm분ss초");
		result = formatter.format(now);
	}
	
	%>


	


	<h1> <%= result %></h1>

</body>
</html>