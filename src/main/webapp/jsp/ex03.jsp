<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method ="post" action="/jsp/ex03_2.jsp">
		1. 별명 입력 : <input type ="text" name="nickname"><br>
		2. 강아지 or 고양이<br>
		<label>강아지</label><input type ="radio" name="animal" value="강아지"><label>
		<label>고양이</label><input type ="radio" name="animal" value="고양이"><label>
		<br>
		<button type="submit">전달</button><br>
		3. 다음 중 선호하는 것을 모두 고르세요. <br>
		<label>민트초코<input type = "checkbox" name="food" value="민트초코"></label>
		<label>하와이안피자<input type = "checkbox" name="food" value="하와이안피자"></label>
		<label>번데기</label><input type = "checkbox" name="food" value="번데기"></label>
		<button type="submit">전달</button>
	
	
	</form>

</body>
</html>