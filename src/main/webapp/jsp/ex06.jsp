<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.*" %>
  <%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘부터</title>
</head>
<body>

<%
	//자바 문법
	Calendar todayCalendar = Calendar.getInstance();
	
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일");
	String dateString = formatter.format(todayCalendar.getTime());
	todayCalendar.add(Calendar.DATE,100);
	out.print(formatter.format(todayCalendar.getTime()));
%>
<h2>오늘부터 1일</h2>
<%for(int i = 100; i <= 1000; i+=100){ 
	
%>

<h1><%=i %>일 : <%todayCalendar.add(Calendar.DATE,100);todayCalendar.add(Calendar.DATE,-1);%><%= formatter.format(todayCalendar.getTime()) %><br></h1>

<%} %>
</body>
</html>