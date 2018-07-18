<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>

<head>
<title> Hey welcome to my home age!</title>
</head>

<body>
<h2>luv2code Company Home Page</h2>
<hr> 

	<p>
	Home Page!
	</p>
	
	<!-- Add a logout button -->
	<form:form action="${pageContext.request.contextPath}/logout"
	 method="POST">
	
	<input type="submit" value="Logout" />
	
	</form:form>
</body>

</html>