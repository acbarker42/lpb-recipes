<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
	<title>Save Author</title>
	<!--  Add css later -->
	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css">

	
</head>

<body>
	
	<div id="wrapper">
		<div id="header">
			<h2>Author Management</h2>
		</div>
	</div>

	<div id="container">
		<h3>Save Author</h3>
	
		<form:form action="saveAuthor" modelAttribute="author" method="POST">
		
			<!-- need to associate this data with customer id -->
			<form:hidden path="authorId" />
			<table>
				<tbody>
					<tr>
						<td><label>First  Name:</label></td>
						<td><form:input path="firstName" /></td>
					</tr>
					<tr>
						<td><label>Last  Name:</label></td>
						<td><form:input path="lastName" /></td>
					</tr>
				
					<tr>
						<td><label>Website:</label></td>
						<td><form:input path="website" /></td>
					</tr>

					<tr>
						<td><label>Description:</label></td>
						<td><form:input path="description" /></td>
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
			<a href="${pageContext.request.contextPath}/author/list">Back to List</a>
		</p>
	
	</div>

</body>

</html>










