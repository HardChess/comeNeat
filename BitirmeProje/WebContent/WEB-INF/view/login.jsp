<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/register.css"/>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Giriş Sayfas</title>
</head>
<body style="background-image:url(${pageContext.request.contextPath}/resources/img/login.jpg); background-size:cover">
<h3 align="center">comeNeat'e Hoşgeldin!</h3>
	<form:form action="/BitirmeProje/loginSuccess" method="post" modelAttribute="userCredential">

		<table>
			<tr>
				<td>E-MAİL:</td>
				<td><form:input path="email" /></td>
				<td><form:errors path="email" cssClass="error"/></td>
			</tr>
			<tr>
				<td>ŞİFRE:</td>
				<td><form:password path="password"/></td>
				<td><form:errors path="password" cssClass="error"/></td>
			</tr>

			<tr>
				<td><input type="submit" value="Giriş"></td>
			</tr>
		</table>
	</form:form>
</body>
</html>