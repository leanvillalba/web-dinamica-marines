<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<div>
	<h3>Login</h3>
	<form action="LoginServlet" method="post">
		<input type="text" name="usuario" placeholder="Usuario">
		<input type="password" name="pass" placeholder="Password">
		<input type="submit" value="Login">
	
	</form>
	</div>

</div>
</body>
</html>