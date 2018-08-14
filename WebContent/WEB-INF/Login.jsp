<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<script> 
function validate(){ 
	
 	var username = document.form.username.value; 
	var password = document.form.password.value;
 
 if (username==null || username==""){ 
 	alert("Username cannot be blank"); 
 	return false; 
 }
 else if(password==null || password==""){ 
 	alert("Password cannot be blank"); 
 	return false; 
 } 
}
</script> 

</head>
<body>

<div style="text-align:center">
	<h1>Login application in Java using MVC and MySQL </h1> 
</div>
<br>
<form name="form" action="LoginServlet" method="post" onsubmit="return validate()">

<label for="username">Username</label>
	<input type="text" name="username" />
 
 <br>
 <label for="password">Password</label>
 	<input type="password" name="password" />
 
 <br>
 <span style="color:red">
 <%=(request.getAttribute("errMessage") == null) ? ""
 : request.getAttribute("errMessage")%>
 </span>
 
<br>
 	<input type="submit" value="Login"></input>
     <input type="reset" value="Reset"></input>
 

</form>

</body>
</html>