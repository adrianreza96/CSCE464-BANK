<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
	
	<body>
		<link rel="stylesheet" type="text/css" href="NavigationBarTheme.css">
		
		<div class="topnav">
		  <a href="Login.jsp" style="float:right">Log In</a>
		</div>
		<h1 style="text-align:center"> Registration </h1>
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
		<form style="text-align:center" name="form" onsubmit="return validateForm()" action=Register method="post">
		
			User Name: <input type=text name=userName><br>
			<br>
			Password: <input type=password name=password><br>
			<br>
			<input type=submit value=Register> <br> 
		
		</form>
		
		<br>
		
		<form style="text-align:center" action="Login.jsp">
			<input type=submit value="Return to Login">
		</form>
		
	
	</body>
</html>