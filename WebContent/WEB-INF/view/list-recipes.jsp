<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>

<head>
	<title>List Recipes</title>
	
	<!-- reference style sheet -->

	<link type="text/css"  	
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />
	
</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>lazy paleo baker </h2>
			<h3>Recipe List</h3>
		</div>
	</div>
	
	<div id="container">	
		<div id="content">
		
		<!-- add "add" button -->
		<input type="button" class="add-button" value="Add Recipe" 
			onclick="window.location.href='showAddForm'; return false;"/>
		<!-- add "author" button -->
		<input type="button" class="add-button" value="View By Author" 
			onclick="window.location.href='../author/list'; return false;"/>
		
		<!--  add a search box -->
            <form:form action="search" method="POST">
                Search recipes: <input type="text" name="theSearchName" />
                
                <input type="submit" value="Search" class="add-button" />
            </form:form>
            
			<!--  add our html table here -->
			<br>
			<table>
				<tr>
					<th>Recipe Name</th>
					<th>Directions</th>
					<th>Notes</th>
					<th>Action</th>
					
				</tr>
				
				<!-- loop over and print our recipes -->
				<c:forEach var="tempRecipe" items="${recipes}">
				
					<!--  construct an "update" link with recipe id -->
					<c:url var="updateLink" value="/recipe/showUpdateForm">
						<c:param name="recipeId" value="${tempRecipe.id}" />
					</c:url>
					<!--  construct an "delete" link with Recipe id -->
					<c:url var="deleteLink" value="/recipe/delete">
						<c:param name="recipeId" value="${tempRecipe.id}" />
					</c:url>
					
					<tr>
						<td> ${tempRecipe.recipeName} </td>
						<td> ${tempRecipe.directions} </td>
						<td> ${tempRecipe.notes} </td>
						
						<td><a href="${updateLink}"> Update</a>
						|
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









