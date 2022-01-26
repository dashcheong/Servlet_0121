<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<%
String getNumber1 = request.getParameter("number1");
String getType = request.getParameter("type");
String getNumber2 = request.getParameter("number2");

int number1 = Integer.parseInt(getNumber1);
int number2 = Integer.parseInt(getNumber2);

double result = 0;
if(request.getParameter("type").equals("+")){
	result= number1 + number2;
	
}else if(request.getParameter("type").equals("-")){
	result= number1 - number2;
	
}else if(request.getParameter("type").equals("X")){
	result= number1 * number2;
	
}else if(request.getParameter("type").equals("/")){
	result= number1 / number2;
	
}
%>
<h1>계산결과</h1>	
<div class="display-4">
<span class="font-weight-bold"><%=number1 + getType +number2 + "=" %></span></span><span class="text-primary"><%=result %></span>

</div>


</body>
</html>