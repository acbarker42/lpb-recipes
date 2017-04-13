<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Recipe Management Login</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/lpb.css" />
	<script src="<c:url value="/resources/js/modal.js" />"></script>
    <link rel="icon" type="image/png" href="resources/img/favicon.ico">
	<style>
		.results{
			margin-top: 100px;
		}
	</style>
</head>
<body onload='document.f.username.focus();'>
  <div class="header">
  <nav class="top-nav">
    <a href="${pageContext.request.contextPath}/recipe/list"> Recipes</a>
    <a href="${pageContext.request.contextPath}/recipe/management"> Recipe Management</a>

  </nav>
    <div class="title-bar">

      <h1 class="title"> Lazy Paleo Baker </h1>
      <div class="motto">Because Less is More</div>			
    </div>
    <div class="results">
		<h1>Login</h1>
		<span class="error">
		<%
		String errorStr = (String)request.getAttribute("error");
		if(errorStr != null && errorStr.trim().equals("true")){
			out.println("Username or Password Incorrect.  Please try again.");
		}
		%>
		</span>
		<form class="input-form" name='f' action='/lpb-recipes/login' method='POST'>
	<table>
		<tr><td>User:</td><td><input type='text' name='username' value=''></td></tr>
		<tr><td>Password:</td><td><input type='password' name='password'/></td></tr>
		<tr><td colspan='2'><input class="input-button" name="submit" type="submit" value="Login"/></td></tr>
	</table>
	</form>
    </div>
</div>
</body>
</html>