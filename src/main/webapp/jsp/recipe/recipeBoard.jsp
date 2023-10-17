<%@ page import="java.io.OutputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/header" />

<link href="css/recipes.css" rel="stylesheet" />

<div align="center">
    <ul class="cate">
        <li><a href="recipeBoard?category=kor"><span>한식</span></a></li>
        <li><a href="recipeBoard?category=jap"><span>일식</span></a></li>
        <li><a href="recipeBoard?category=chi"><span>중식</span></a></li>
        <li><a href="recipeBoard?category=skeki"><span>양식</span></a></li>
    </ul>
</div>


<div id="width1200">

	<ul class="reicpeForm">
		<c:forEach var="recipe" items="${recipes}">
			<li class="recipeForm_li" onclick="location.href='recipeBoardContent?num=${recipe.re_no }'">
			<img src="${recipe.mainphoto}">
				<div class="content_2">
					<p class="reci_title">${recipe.title}</p>
					<p class="reci_cate">${recipe.category}</p>
					<p class="reci_user">${recipe.id}</p>
					<p class="reci_time">${recipe.written_time}</p>
				</div></li>
		</c:forEach>
	</ul>


	<ul>
		<li class="search_recipe">
		<form action="recipeBoard" method="post" class="search_form">
		<input type="text" name="search" placeholder="" class="search_text">
		<input type="submit" value="검색" class="search_btn" >
		</form>
		<a href="${context }recipeBoardWrite" class="write_cs"> 
		<span>글 작성하기</span>
		</a>
		
		</li>
	</ul>
	
	<div class="pages"> ${result } </div>
</div>

<c:import url="/footer" />