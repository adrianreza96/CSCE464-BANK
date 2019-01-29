<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
	<script>
			function validateForm() {
				console.log("hello0");
			    var x = document.forms["userForm"]["userName"].value;
			    var y = document.forms["userForm"]["password"].value;
			    if (x == "") {
			        alert("Username must be filled out");
			        return false;
			    }
			    console.log("hello1");
			    if (y == "") {
			        alert("Password must be filled out");
			        return false;
			    }
			    console.log("hello2");
			}
	   </script>
</head>
<body>
	<h2> Login here</h2>
		
		<form name="userForm" action=Login onsubmit="return validateForm()" method="post">
		
			User Name: <input type=text name=userName><br>
			Password: <input type=password name=password><br>
			<input type=submit value=Login> <br>  		
		</form>
		
		<br>
		<br>
		<a href="Register.jsp"> Are you a New User? </a> <br>
</body>
</html>