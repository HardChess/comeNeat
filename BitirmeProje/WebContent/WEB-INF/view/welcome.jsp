<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Page</title>
</head>
<body>
<h3 align="right"><a href="/SpringMVCFormValidation">Back</a></h3>
	<h2 align="center">${headerMessage}</h2>
	<h3 align="center">You have registered with following Info::::</h3>
	<table align="center" border="5px">
	
			<tr>
			<td>User email:</td>
			<td>${user.email}</td>
		</tr>
	
		<tr>
			<td>User Name:</td>
			<td>${user.name}</td>
		</tr>
		
		<tr>
			<td>User Phone:</td>
			<td>${user.phone}</td>
		</tr>

		<tr>
			<td>User Gender</td>
			<td>${user.gender}</td>
		</tr>

		<tr>
			<td>Selected Technology:</td>
			<td>${user.address}</td>
		</tr>

		<tr>
			<td>City</td>
			<td>${user.city}</td>
		</tr>

	</table>
</body>
</html>