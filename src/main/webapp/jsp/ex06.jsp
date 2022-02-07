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
	out.println("<br>" + dateString);
	
	todayCalendar.add(Calendar.DATE,100);
	out.println("<br>" +  formatter.format(todayCalendar.getTime()));
	
	for(int i = 1; i <= 1000; i ++){

		i = i +99;
		out.println(i);
	}
	
%>
<h2>오늘부터 1일</h2>
<%for(int i = 1; i <= 1000; i ++){ 
	i = i +99;
%>
<h1><%=i %>일<br></h1>

<%} %>
</body>
</html>