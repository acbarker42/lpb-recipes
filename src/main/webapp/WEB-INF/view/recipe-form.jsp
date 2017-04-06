<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Lazy Paleo Baker</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/lpb.css" />
	<script src="<c:url value="/resources/js/modal.js" />"></script>
    <link rel="icon" type="image/png" href="resources/img/favicon.ico">
</head>
<body>
  <div class="header">
  <nav class="top-nav">
    <a href="${pageContext.request.contextPath}/recipe/list"> Recipes</a>
    <a href="${pageContext.request.contextPath}/recipe/management"> Recipe Management</a>
    <a href="${pageContext.request.contextPath}/recipe/showAddForm"> Add Recipe</a>
    <a href="${pageContext.request.contextPath}/author/showAddForm"> Add Author</a>
    <a href="${pageContext.request.contextPath}/author/list"> View Authors</a>
    <a href="${pageContext.request.contextPath}/recipe/list"> Logout</a>
  </nav>
    <div class="title-bar">

      <h1 class="title"> Lazy Paleo Baker </h1>
      <div class="motto">Because Less is More</div>
      <form:form action="search" class="input-form" method="POST">
        <input type="search" class="input-field" placeholder="Search..." value="" name="theSearchName">
		<input type="submit" class="input-button" value="Search">        
      </form:form>
			
    </div>
    <div class="results">
			<h1> Add/Update Recipe</h1>
	
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
</body>
</html>










