
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Recipe</title>
</head>
<body>
<a href="register.jsp">Register</a>
<a href="index.jsp">Home</a>
    <h1>Add Recipe:</h1>
    <form action="addRecipe" method="post">
        <table cellpadding="3pt">
    	<tr>
			<td>Recipe Name: </td>
			<td><input type="text" name="recipeName" size="30" /></td>
		</tr>
		<tr>
			<td>Directions: </td>
			<td><input type="text" name="directions" size="50" /></td>
		</tr>
		<tr>
			<td>Notes: </td>
			<td><input type="text" name="notes" size="50" /></td>
		</tr>
	</table>
        <p />
        <input type="submit" value="Add Recipe" />
    </form>
</body>
</html>
