<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>

<head>
	<title>List Authors</title>
	
	<!-- reference style sheets and javascript -->
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/lpb.css" />
	
</head>

<body>

  <div id="wrapper">
    <div id="pagetop"><img id="cupcake" src="<c:url value="/resources/img/cupcake.png" />"/>
    <button id="roundButton"></button>
    <h1>Lazy Paleo Baker</h1>
    <div id="searchArea">
		<!-- add "add" button -->
		<input type="button" class="add-button" value="Add Author" 
			onclick="window.location.href='showAddForm'; return false;"/>
		<!-- add "author" button -->
		<input type="button" class="add-button" value="Recipe Management" 
			onclick="window.location.href='../recipe/management'; return false;"/>
		<!--  add a search box -->
            <form:form action="search" method="POST">
                Search authors: <input type="text" name="theSearchName" />
                
                <input type="submit" value="Search" class="add-button" />
            </form:form>
	</div>
   </div>
	
	<div id="container">	
		<div id="content">
		<div id="results">
            
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

	</div>
</div>	

</body>

</html>









