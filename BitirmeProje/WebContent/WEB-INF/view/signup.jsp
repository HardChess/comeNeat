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
		<form:errors path="name" cssClass="error"/>
		<br><br>
		
		Last name (*): <form:input path="surname" />
		<form:errors path="surname" cssClass="error" />
		
		<br><br>
		
		Address: <form:input path="address" />
		<form:errors path="address" cssClass="error"/>
		<br><br>
		
		Username: <form:input path="username" />
		<form:errors path="username" cssClass="error"/>
		<br><br>
		
		Password: <form:input path="password" type="password"/>
		<form:errors path="password" cssClass="error"/>
		<br><br>
		
		City: <form:input path="city" />
		<form:errors path="city" cssClass="error"/>
		<br><br>

		<input type="submit" value="save" class="save" />
		
				
	</form:form>
	
	

</body>

</html>













</body>
</html>