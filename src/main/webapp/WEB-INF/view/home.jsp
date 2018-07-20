<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<html>

<head>
<title> Hey welcome to my home age!</title>
</head>

<body>
<h2>luv2code Company Home Page</h2>

<hr> 
User: <security:authentication property="principal.username"/>
<p>
Role(s): <security:authentication property="principal.authorities"/>
	<p>
	Home Page!
	</p>
	
	<hr>
	
	<!-- Add link to point to /leaders, this is for the managers-->
	<p>
		<a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a>
		(Only for Managers)
	<p>
	
	<!-- Add link to point to /system, this is for the admins -->
	<p>
		<a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
		(Only for Admin people)
	<p>
	<hr>
	
	<!-- Add a logout button -->
	<form:form action="${pageContext.request.contextPath}/logout"
	 method="POST">
	
	<input type="submit" value="Logout" />
	
	</form:form>
</body>

</html>