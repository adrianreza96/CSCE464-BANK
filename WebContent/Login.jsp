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
		<h2 style="text-align:center"> Login here</h2>
			
		<form style="text-align:center" name="userForm" action=Login onsubmit="return validateForm()" method="post">
		
			User Name: <input type=text name=userName><br>
			Password:  <input type=password name=password><br>
			<input type=submit value=Login> <br>  		
		</form>
		
		<br>
		<br>
		
		<form style="text-align:center" action="Register.jsp">
			<input type=submit value="Are you a New User">
		</form>
	
	</body>
</html>