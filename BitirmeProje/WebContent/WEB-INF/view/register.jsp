
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/register.css"/>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
</head>
<body>
	<h3 align="center">${headerMessage}</h3>
	<form:form action="/BitirmeProje/registerSuccess"
		method="post" modelAttribute="user">
		
		<caption align="top">User registration form</caption>
		<label>
				<p class="label-txt">ENTER YOUR EMAIL</p>
				<form:input type="text" class="input" path="email" />
				<form:errors path="email" cssClass="error"/>
				<div class="line-box">
      <div class="line"></div>
    </div>
		
			
			</label>
			<label>
				<p class="label-txt">ENTER YOUR PASSWORD</p>
				<form:input type="text" class="input" path="password" />
				<form:errors path="password" cssClass="error"/>
				<div class="line-box">
      <div class="line"></div>
    </div>
		
			
			</label>

			<label>
				<p class="label-txt">ENTER YOUR FULL NAME</p>
				<form:input type="text" class="input" path="name" />
				<form:errors path="name" cssClass="error"/>
				<div class="line-box">
      <div class="line"></div>
    </div>
		
			
			</label>
			
			<label>
				<p class="label-txt">ENTER YOUR USERNAME</p>
				<form:input type="text" class="input" path="username" />
				<form:errors path="username" cssClass="error"/>
				<div class="line-box">
      <div class="line"></div>
    </div>
		
			
			</label>

			<label>
				<p class="label-txt">ENTER YOUR PHONE</p>
				<form:input type="text" class="input" path="phone" />
				<form:errors path="phone" cssClass="error"/>
				<div class="line-box">
      <div class="line"></div>
    </div>
		
			
			</label>
<table>
			<tr>
				<td>Gender:</td>
				<td><form:radiobutton path="gender" value="Male" label="Male" />
					<form:radiobutton path="gender" value="Female" label="Female" /></td>
				<td><form:errors path="gender" cssClass="error" /></td>

			</tr>

			<tr>
				<td>Select Address:</td>
				<td><form:select path="address">
						<form:options items="${technologyList}" />
					</form:select></td>
				<td><form:errors path="address" cssClass="error" /></td>

			</tr>

			<tr>
				<td>Select city:</td>
				<td><form:select path="city">
						<form:options items="${citesList}" />
					</form:select></td>
				<td><form:errors path="city" cssClass="error" /></td>
			</tr>

			<tr>
				<td><input type="submit" value="Register"></td>
			</tr>
		
	
	</form:form>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/register.js"></script>
</body>
</html>