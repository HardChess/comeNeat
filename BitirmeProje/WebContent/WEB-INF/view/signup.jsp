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
  
    <div class="jumbotron">    
      <h1>Add New User</h1>    
    </div>
    
      <form:form class="form-horizantal" modelAttribute="user" action="saveUser" method="POST">
      
      
        
        <div class="form-group">
          <label for="adi" class="col-sm-10 control-label">First Name</label>
          <div>
            <form:input type="text" class="form-control" id="name" placeholder="Enter your first name" path="firstName"></form:input>
          </div>
        </div>
        
        <div class="form-group">
          <label for="soyadi" class="col-sm-10 control-label">Last Name</label>
          <div>
            <form:input type="text" class="form-control" id="lastName" placeholder="Enter your last name" path="lastName"></form:input>
          </div>
        </div>
        
        <div class="form-group">
          <label for="soyadi" class="col-sm-10 control-label">Last Name</label>
        	<div>
            	<form:input type="text" class="form-control" id="username" placeholder="Enter your username" path="username"></form:input>
        	</div>
        </div>
          
        <div class="form-group">
          <label for="soyadi" class="col-sm-10 control-label">Last Name</label>
          <div>
            <form:input type="text" class="form-control" id="password" placeholder="Enter your password" path="password"></form:input>
          </div>
        </div>
        
        <div class="form-group">
          <div>
            <button type="submit" class="btn btn-primary">Kaydet</button>
          </div>
        </div>
      
      </form:form>


</body>
</html>