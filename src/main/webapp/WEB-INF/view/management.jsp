<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Recipe Management</title>
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
     	<!-- add  buttonz -->
		<input type="button" class="add-button" value="Add Recipe" 
			onclick="window.location.href='showAddForm'; return false;"/>
		<input type="button" class="add-button" value="Add Author" 
			onclick="window.location.href='../author/showAddForm'; return false;"/>
		
		<input type="button" class="add-button" value="View By Author" 
			onclick="window.location.href='../author/list'; return false;"/>
		<input type="button" class="add-button" value="Back to Recipes" 
			onclick="window.location.href='list'; return false;"/>
		<input type="button" class="add-button" value="Logout" 
			onclick="window.location.href='list'; return false;"/>
		<!--  add a search box -->
            <form:form action="search" method="POST">
                Search recipes: <input type="text" name="theSearchName" />
                
                <input type="submit" value="Search" class="add-button" />
            </form:form>
	</div>
	</div>
	<div id="container">	
		<div id="content">
		
		     <div id="results">
		      <h2>Recipe Management</h2>
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
	</div>
  </div>
</body>
</html>