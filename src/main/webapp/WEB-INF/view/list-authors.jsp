<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>

<head>
	<title>List Authors</title>
	
	<!-- reference style sheet -->

	<link type="text/css"  	
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />
	
</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>lazy paleo baker </h2>
			<h3>Author List</h3>
		</div>
	</div>
	
	<div id="container">	
		<div id="content">
		
		<!-- add "add" button -->
		<input type="button" class="add-button" value="Add Author" 
			onclick="window.location.href='showAddForm'; return false;"/>
		<!-- add "author" button -->
		<input type="button" class="add-button" value="View By Recipe" 
			onclick="window.location.href='../recipe/list'; return false;"/>
		<!--  add a search box -->
            <form:form action="search" method="POST">
                Search authors: <input type="text" name="theSearchName" />
                
                <input type="submit" value="Search" class="add-button" />
            </form:form>
            
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









