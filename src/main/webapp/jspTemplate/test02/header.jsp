<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<header class=" d-flex ">
		<div class=" d-flex align-items-center  ">
			<h2 class="text-success">Melong</h2>
		</div>
		
		 <div class="ml-5 search  d-flex align-items-center ">
		 <form method="get" action="http://localhost:8090/jspTemplate/test02/main2.jsp">
			<div class="searchbar ">
	             <div class="input-group" style="width:400px;">
	                 <input type="text" class="form-control" name="title"	>
	                 <div class="input-group-append">
	                   <button class="btn btn-success" type="submit">검색</button>
	        </div>
		 </div>
		</form>
	</header>