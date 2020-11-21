
<!-- Adding support for spring form tags -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!-- Adding support for spring security taglibs -->
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
	<head>
		<title>revoltcode Company Home Page</title>
	</head>
	
	<body>
		<h2>@revoltcode company home page ::))</h2>
		<hr>
		<p>Welcome to revoltcode company home page :) My friend got a job:)</p>
		
		
		<hr>
			<!-- display username and role -->
			<p>
				User: <security:authentication property="principal.username" />
				<br><br>
				Role(s): <security:authentication property="principal.authorities"/>
			</p>
		<hr>
		
		<form:form action="${pageContext.request.contextPath}/logout" method="POST">
		
			<input type="submit" value="logout"/>
		</form:form>
	</body>
</html>