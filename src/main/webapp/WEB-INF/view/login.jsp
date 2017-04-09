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
</head>
<body>
  <div class="header">
  <nav class="top-nav">
    <a href="${pageContext.request.contextPath}/recipe/list"> Recipes</a>

  </nav>
    <div class="title-bar">

      <h1 class="title"> Lazy Paleo Baker </h1>
      <div class="motto">Because Less is More</div>			
    </div>
    <div class="results">

    </div>
</div>
</body>
</html>