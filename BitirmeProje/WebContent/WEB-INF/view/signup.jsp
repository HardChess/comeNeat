<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-9">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Insert title here</title>
</head>

<body>
  
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

<head>
	<title>Customer Registration Form</title>
	
	<style>
		.error {color:red}
	</style>
</head>
<body>

<i>Fill out the form. Asterisk (*) means required.</i>
<br><br>

	<form:form action="saveUser" modelAttribute="user" method="POST">
	
		First name: <form:input path="name" />
		
		<br><br>
		
		Last name (*): <form:input path="surname" />
		<form:errors path="surname" cssClass="error" />
		
		<br><br>
		
		Address: <form:input path="address" />
		
		<br><br>
		
		Username: <form:input path="username" />
		
		<br><br>
		
		Password: <form:input path="name" type="password"/>
		
		<br><br>
		
		City: <form:input path="city" />
		
		<br><br>

		<input type="button" value="save" class="save" />
		
				
	</form:form>

</body>

</html>













</body>
</html>