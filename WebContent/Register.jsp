<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body>
	
		<h1> A Simple MVC Web Application</h1>
		<h2> Register here</h2>
		<script> 
			function validateForm(){
				var x = document.forms["form"]["userName"].value;
				var y = document.forms["form"]["userName"].value;
				if(x == ""){
					alert("Username must be filled out");
					return false;
				}
				if(y == ""){
					alert("Password must be filled out");
					return false;
				}
			}
		</script>
		<form name="form" onsubmit="return validateForm()" action=Register method="post">
		
			User Name: <input type=text name=userName><br>
			Password: <input type=password name=password><br>
			<input type=submit value=Register> <br> 
		
		</form>
		
		<br>
		<br>
		
		<!-- Navigation links --> 
		<a href="Login.jsp"> Home Page </a> <br>
		
	
	</body>
</html>