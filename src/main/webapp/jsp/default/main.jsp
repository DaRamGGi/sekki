<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="main">
	<div class="main_div">
		<div>
			<h1 style="color:white;">
			<span>자취생</span>을 위한 혼밥 레시피<strong>!</strong><br>
			냉장고 재료로 요리하세요<strong>!</strong>
			</h1>
			<form action="main_recipe_search" method="post" class="search_form">
				<input type="text" name="mate_one" placeholder="재료" class="main_input" /><br>
				<input type="text" name="mate_tow" placeholder="재료" class="main_input" /><br>
				<input type="text" name="mate_three" placeholder="재료" class="main_input" /><br>
				<input type="submit" value="요리하러 가기" class="btn"/>
			</form><br>
			 ${sessionScope.id }<br>
		</div>
	</div>
</div>