<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
	<style>
		input[type=submit] {
		    width: 20em;  height: 2em;
		    background-color: cornsilk;
		}
		* {
		 	font-family: Arial;
		} 
		body {
		 	background-color: lightblue;
		}
	</style>
	<body>
		<h1 style="text-align:center"> Register here</h1>
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
			Password: <input type=password name=password><br>
			<input type=submit value=Register> <br> 
		
		</form>
		
		<br>
		<br>
		
		<form style="text-align:center" action="Login.jsp">
			<input type=submit value="Return to Login">
		</form>
		
	
	</body>
</html>