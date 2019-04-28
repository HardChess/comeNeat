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
<title>Kayıt Sayfası</title>
</head>
<body style="background-image:url(${pageContext.request.contextPath}/resources/img/register.jpeg); background-size:cover">
	<h3 align="center">comeNeat'e Hoşgeldin!</h3>
	<form:form action="/BitirmeProje/registerSuccess"
		method="post" modelAttribute="user">
		
		<caption align="top">Kayıt Formu</caption>
		<label>
				<p class="label-txt">MAİL ADRESİNİZ</p>
				<form:input type="text" class="input" path="email" />
				<form:errors path="email" cssClass="error"/>
				<div class="line-box">
      <div class="line"></div>
    </div>
		
			
			</label>
			<label>
				<p class="label-txt">ŞİFRENİZ</p>
				<form:input type="text" class="input" path="password" />
				<form:errors path="password" cssClass="error"/>
				<div class="line-box">
      <div class="line"></div>
    </div>
		
			
			</label>

			<label>
				<p class="label-txt">TAM ADINIZ</p>
				<form:input type="text" class="input" path="name" />
				<td><form:errors path="name" cssClass="error"/></td>
				<div class="line-box">
      <div class="line"></div>
    </div>
		
			
			</label>
			
			<label>
				<p class="label-txt">TELEFON NUMARANIZ</p>
				<form:input type="text" class="input" path="phone" />
				<form:errors path="phone" cssClass="error"/>
				<div class="line-box">
      <div class="line"></div>
    </div>
		
			
			</label>
			
			<label>
				<p class="label-txt">ADRESİNİZ</p>
				<form:input type="text" class="input" path="address" />
				<form:errors path="address" cssClass="error"/>
				<div class="line-box">
      <div class="line"></div>
    </div>
		
			
			</label>
<table>

			<tr>
				<td>ŞEHRİNİZ:</td>
				<td><form:select path="city">
						<form:options items="${citesList}" />
					</form:select></td>
				<td><form:errors path="city" cssClass="error" /></td>
			</tr>

			<tr>
				<td><input type="submit" value="Kayıt Ol"></td>
			</tr>
			<tr>
			</tr>
			
		</table>
	
	</form:form>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/register.js"></script>
</body>
</html>