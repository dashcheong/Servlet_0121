<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멜롱</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


	<style>
		#wrap {}
		header {height:80px;width:1400px; margin:auto;}
		nav {height:50px;width:1400px; margin:auto;}
		section { width:1400px; margin:auto;}
		.top-article{height:250px ;  border: 1px solid #81c147;}
		.bottom-article{}	
		footer{height:50px; width:1400px; margin:auto;}	
	</style>
	
</head>


<body>
<%@ include file="data.jsp" %>


	<%

	String musicIdString = request.getParameter("id");
	
	
	String title = request.getParameter("title");
	
	Map<String, Object> targetMusic = null;
	
	if(musicIdString !=null){
		int musicId = Integer.parseInt(musicIdString);
		for(Map<String,Object> music : musicList){
			if(musicId == (Integer)music.get("id")){
				//보여줄 대상
				targetMusic = music;				
			}			
		}			
	}else if(title != null){
		for(Map<String,Object> music : musicList){
			if(title.equals(music.get("title"))){
				targetMusic = music;	
			}			
		}		
	}
	

	
	
%>
	
	

	
	<div id="warp">
		<jsp:include page="header.jsp" />
		<jsp:include page="nav.jsp"/>
	<section>
		<%if(targetMusic !=null){
			int time = (Integer)targetMusic.get("time");
		%>
		  <article class="top-article">
		  	<div class="d-flex">
		  		<div class="mt-4 ml-4">
		  			<img width="200" src="<%=targetMusic.get("thumbnail")%>">
		  		</div>
		  		
		  		<div class="mt-4 ml-4">
					<div class=" font-weight-bold"><h2><%=targetMusic.get("title")%></h2></div>
					<div class="text-success mt-3 "><h6 class="font-weight-bold"><%=artistInfo.get("name") %></h6></div>
					<div class=" mt-4 text-secondary d-flex">
						<div class="">
							<div>앨범</div>
							<div>재생시간</div>
							<div>작곡가</div>
							<div>작사가</div>
						</div>
						<div>
							<div class="ml-3 "><%= targetMusic.get("album") %> </div>
							<div class="ml-3 "><%= time/60 + " : " + time % 60 %> </div>
							<div class="ml-3 "><%= targetMusic.get("composer") %> </div>
							<div class="ml-3 "><%= targetMusic.get("lyricist") %> </div>
						</div>
					</div>
				
				</div>		
		  	</div>
		  	
		  </article>
          <article class="bottom-article">
          	<h4>가사</h4>
          	<hr>
          	<div>가사정보 없음</div	>
        
          </article>
          <%}else {%>
		  		<article>
		  			<div class="display-4">검색결과없음</div>
		  		</article>
		  	
		  	
		  	<%} %>
	</section>
	<jsp:include page="footer.jsp"/>

		
	</div>

</body>
</html>