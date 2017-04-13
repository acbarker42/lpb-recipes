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
    <a href="${pageContext.request.contextPath}/logout"> Logout</a>
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
			<h1> Recipe Management</h1>
			<!--  add our html table here -->
			<br>
			<table>
				<tr>
					<th>Recipe Name</th>
					<th>Author</th>
					<th>Action</th>
					
				</tr>
				
				<!-- loop over and print our recipes -->
				<c:forEach var="tempRecipe" items="${recipes}">
				
					<!--  construct an "update" link with recipe id -->
					<c:url var="updateLink" value="/recipe/showUpdateForm">
						<c:param name="recipeId" value="${tempRecipe.recipeId}" />
						<c:param name="recipeId" value="${tempRecipe.author.authorId}" />
					</c:url>
					<!--  construct an "delete" link with Recipe id -->
					<c:url var="deleteLink" value="/recipe/delete">
						<c:param name="recipeId" value="${tempRecipe.recipeId}" />
					</c:url>
					
					<tr>
						<td><a href="${updateLink}"> ${tempRecipe.recipeName}</a></td>
						<td> ${tempRecipe.author.lastName} </td>
						<div id="${tempRecipe.recipeId}" class="hidden">
						    <p>	${tempRecipe.directions} <br>
						 		${tempRecipe.notes}</p>
						 </div>
						<td>
						 <a href="${deleteLink}" 
						 	 onclick="if(!(confirm('Are you sure you want to delete this recipe?'))) return false;"> Delete</a>
						 <td>					 
					</tr>			
				</c:forEach>					
			</table>
  		</div>

  </div>
</body>
</html>