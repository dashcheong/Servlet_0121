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
	<div id="warp">
		<jsp:include page="header.jsp" />
		<jsp:include page="nav.jsp"/>
	<section>
		  <article class="top-article">
		  	<div class="d-flex">
		  		<div class="mt-4 ml-4">
		  			<img width="200" src="<%=artistInfo.get("photo")%>">
		  		</div>
		  		
		  		<div class="mt-4 ml-4">
					<div class=" font-weight-bold"><h2><%=artistInfo.get("name") %></h2></div>
					<div class="text-secondary"><h5><%=artistInfo.get("agency") %></h5></div>
					<div class="text-secondary"><h5><%=artistInfo.get("debute") %> 데뷔</h5></div>
				</div>		
		  	</div>
		  </article>
          <article class="bottom-article">
          <h2 class="mt-2">곡 목록</h2>
	          	<table class="table text-center ">
					<thead>
						<tr>
							<th class="col-2">no</th>
							<th class="col-4">제목</th>
							<th class="col-6">앨범</th>
						</tr>			
					</thead>
					<tbody>
					<%	int index = 0;
						for(Map<String,Object> music : musicList){ %>
				
							<tr>
								<th><%=music.get("id")%></th>
								<th><a href="http://localhost:8090/jspTemplate/test02/main2.jsp?id=<%=music.get("id")%>" class="nav-link  font-weight-bold"><%=music.get("title")%></a></th>
								<th><%=music.get("album")%></th>
							</tr>
					<%} %>	
					
					
					</tbody>	
			</table>
          </article>
	</section>
	<jsp:include page="footer.jsp"/>

		
	</div>

</body>
</html>