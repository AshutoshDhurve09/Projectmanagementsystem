<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<spring:url value="/Company/add" var="CompanyAddUrl" />
<form:form modelAttribute="company" action="${ projectAddUrl }">
<center>
<h1>PROJECT MANAGEMENT SYSTEM</h1>
</center>
<table border="1" align="center">
<tr>
<td>Login For General Admin:</td>
<td><a href="/Company/generalAdminLogin">click here...</a></td>
</tr>
</table><br><br>
<h3 align="center">Login For Company Admin</h3>
<table border="1" align="center">
			<tr>
				<td>Company Name:</td>
				<td><form:select id="" path="">
                    <form:options items="${a}" />
						</form:select></td>

			</tr>
			<tr>
				<td>Company_Admin_Name:</td>
				<td><input type="text"></td>

			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password"></td>

			</tr>
			<tr>
				<td><input type="submit" name="Login"></td>
				<td><input type="reset" name="Reset"></td>

			</tr>

		</table>

</form:form>



</body>
</html>