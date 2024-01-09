<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
body {
	display: flex;
	flex-wrap: wrap;
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

.card {
	border: 1px solid #ddd;
	border-radius: 8px;
	margin: 20px;
	overflow: hidden;
	transition: box-shadow 0.3s;
	width: 300px;
	background-color: #fff;
}

.card:hover {
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.card img {
	width: 100%;
	height: 200px;
	object-fit: cover;
}

.card-content {
	padding: 20px;
}

.card-title {
	font-size: 1.25rem;
	margin-bottom: 0.75rem;
}

.card-text {
	color: #666;
}
</style>
<title>Recipe List</title>
</head>
<body>

	<c:forEach items="${recipeList}" var="recipe">
		<div class="card">
			<img src="<c:out value="${recipe.imageUrl}"/>" />
			<div class="card-content">
				<h5 class="card-title">
					<c:out value="${recipe.recipeName}" />
				</h5>
				<p class="card-text">
					<c:out value="${recipe.recipeDescription}" />
				</p>
			</div>
		</div>
	</c:forEach>

</body>
</html>