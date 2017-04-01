<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>

<head>
	<title>List Recipes</title>
	
	<!-- reference style sheets and javascript -->
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/lpb.css" />
	<script src="<c:url value="/resources/js/modal.js" />"></script>

	
</head>

<body>

  <div id="wrapper">
    <div id="pagetop"><img id="cupcake" src="<c:url value="/resources/img/cupcake.png" />"/>
    <button id="roundButton"></button>
    <h1>Lazy Paleo Baker</h1>
    <div id="searchArea">
    	<!-- add "recipe management" button -->
		<input type="button" class="add-button" value="Recipe Management" 
			onclick="window.location.href='management'; return false;"/>		
		<!--  add a search box -->
            <form:form action="search" method="POST">
                Search recipes: <input type="text" name="theSearchName" />
                
                <input type="submit" value="Search" class="add-button" />
            </form:form>
	</div>
  </div>
	
	<!-- The Modal -->
	<div id="myModal" class="modal">
	
	  <!-- Modal content -->
	  <div class="modal-content">
	    <span class="close">&times;</span>
	    <p id="modalP">Initial Modal Text</p>
	  </div>
	 </div>
	<div id="container">	
		<div id="content">
		     <div id="results">
            
			<!--  add our html table here -->
			<br>
			<table>
				<tr>
					<th>Recipe Name</th>
					<th>Author</th>

					
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
						<td><a href="javascript:showRecipeInfo(${tempRecipe.recipeId})"> ${tempRecipe.recipeName}</a></td>
						<td> ${tempRecipe.author.lastName} </td>
						<div id="${tempRecipe.recipeId}" class="hidden">
						    <p>	${tempRecipe.directions} <br>
						 		${tempRecipe.notes}</p>
						 </div>
						 
					</tr>
				
				</c:forEach>
						
			</table>
		 </div>		
		</div>
	
	</div>
</div>
	

</body>

</html>









