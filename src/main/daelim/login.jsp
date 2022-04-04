<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dashcheong.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대림대학교</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
    
	<style>
	
	</style>    
</head>

<body>

        <div class="container-fluid">
            <header>
                <div class="logo"><span class="display-4 text-primary">머림머학교</span></div>
            </header>
            <hr>
            <section class="d-flex justify-content-center">
                <div class="join-box mt-5">
                    <h1> 로그인 </h1>

                    <div class="sub-description my-4">대림, 입학은 취업의 시작!</div>
					<form method="post" action="/daelim/check">
	                    <label></label><input type="text" id="idInput" class="input-text form-control"
	                     placeholder="학번/교번" name="id">
	                    
	
	                    <label class="mt-3"></label><input type="password" id="passwordInput" class="input-text form-control " 
	                    placeholder="비밀번호" name="password">
	
	          
	            
	
	                    <button id="joinButton" class="btn btn-block btn-primary mt-4 join-button"> 로그인</button>
                    </form>
                </div>

            </section>

            
            <footer class="text-center">
                <hr>
                <address class="copyright"> Copyright 2021. DAELIM All Rights Reserved.</address>
            </footer>
            
        </div>

</body>
	<script>
	 alert("비밀번호를 입력하세요");
     return ;
	</script>

</html>