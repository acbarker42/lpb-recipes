<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
	<title>Save Recipe</title>
	<!--  Add css later -->
	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css">

	
</head>

<body>
	
	<div id="wrapper">
		<div id="header">
			<h2>Recipe Management</h2>
		</div>
	</div>

	<div id="container">
		<h3>Save Recipe</h3>
	
		<form:form action="saveRecipe" modelAttribute="recipe" method="POST">
		
			<!-- need to associate this data with recipe id -->
			<form:hidden path="recipeId" />
			<table>
				<tbody>
					<tr>
						<td><label>Recipe  Name:</label></td>
						<td><form:input path="recipeName" /></td>
					</tr>	
					<tr>
						<td><label>Author Name:</label></td>
						<td><form:input path="author" /></td>
					</tr>						
									
					<tr>
						<td><label>Directions:</label></td>
						<td><form:input path="directions" /></td>
					</tr>

					<tr>
						<td><label>Notes:</label></td>
						<td><form:input path="notes" /></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>

				
				</tbody>
			</table>
		
		
		</form:form>
	
		<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/recipe/list">Back to List</a>
		</p>
	
	</div>

</body>

</html>










