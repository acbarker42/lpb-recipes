<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
	<title>Save Recipe</title>
	
	<!-- reference style sheets and javascript -->
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/lpb.css" />
</head>

<body>
	<div id="wrapper">
    <div id="pagetop"><img id="cupcake" src="${pageContext.request.contextPath}/resources/img/cupcake.png" />
    <button id="roundButton"></button>
    <h1>Lazy Paleo Baker</h1>
    <div id="searchArea">
    </div>
  </div>

    <div id="theMenu">
      <h2><a href="#">Home</a></h2>
      <h2><a href="#">About</a></h2>
      <h2><a href="#">Recipes</a></h2>
      <h2><a href="#">Resources</a></h2>
      <h2><a href="#">Contact</a></h2>
    </div>
	<div id="container">
		<div id="content">
		    <div id="results">
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
						<td><label>Author ID:</label></td>
						<td><form:input path="author.authorId" /></td>
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
			<a href="${pageContext.request.contextPath}/recipe/management">Back to List</a>
		</p>
	</div>
	</div>
	</div>
</div>
</body>

</html>










