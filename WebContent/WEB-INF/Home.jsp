<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
</head>
<body>

<h1 align="center">Home Page</h1>
Welcome <% request.getAttribute("username"); %>

<div style="text-align: right"><a href="LogoutServlet">Logout</a></div>

</body>
</html>