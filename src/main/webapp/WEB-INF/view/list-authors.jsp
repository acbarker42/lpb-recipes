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
			<h1> Authors</h1>  
			<!--  add our html table here -->
			<br>
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Website</th>
					<th>Description</th>
					<th>Notes </th>
					<th>Action</th>
					
				</tr>
				
				<!-- loop over and print our authors -->
				<c:forEach var="tempAuthor" items="${authors}">
				
					<!--  construct an "update" link with author id -->
					<c:url var="updateLink" value="/author/showUpdateForm">
						<c:param name="authorId" value="${tempAuthor.authorId}" />
					</c:url>
					<!--  construct an "delete" link with author id -->
					<c:url var="deleteLink" value="/author/delete">
						<c:param name="authorId" value="${tempAuthor.authorId}" />
					</c:url>
					
					<tr>
						<td> ${tempAuthor.firstName} </td>
						<td> ${tempAuthor.lastName} </td>
						<td> ${tempAuthor.website} </td>
						<td> ${tempAuthor.description}</td>
						<td> ${tempAuthor.notes} </td>
						
						<td><a href="${updateLink}"> Update</a>
						|
						 <a href="${deleteLink}" 
						 	 onclick="if(!(confirm('Are you sure you want to delete this author?'))) return false;"> Delete</a>
						 <td>						 
					</tr>				
				</c:forEach>						
			</table>

		</div>
</div>	

</body>

</html>









