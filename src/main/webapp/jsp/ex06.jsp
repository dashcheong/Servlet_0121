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
	Calendar calendar = Calendar.getInstance();
	calendar.add(Calendar.DATE,-1);
	
		
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일");
	
	

%>
<h2>오늘부터 1일</h2>
<%for(int i = 1; i <= 10; i++){ 
	calendar.add(Calendar.DATE,100);
	String dateString = formatter.format(calendar.getTime());
%>

<h1> <%=i*100 %> 일 : <%=dateString %><br></h1>

<%} %>
</body>
</html>