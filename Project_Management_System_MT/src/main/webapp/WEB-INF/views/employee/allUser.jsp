<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<a href="/user/home">HOME</a></center>
<spring:url value="/user/search" var="searchUrl"/>
	<form:form action="${ searchUrl }" method="POST">
	<center>
	<input type="text" id="searchproject" name="searchName"	placeholder="Search" required="required"> 
	<input type="submit" value="FirstName">
	<label>Sort:</label>
	<a href="/user/sortonfirstname"><input type="button" value="FirstName"></a>
	<a href="/user/sortbylastname"><input type="button" value="LastName"></a>
	<a href="/user/sortbyid"><input type="button" value="ID"></a>
	</center>
</form:form>
<form action="/user/showEditUser" method="post" modelAttribute="use">
		<br> <br>
		<table border="1" align="center">
			<thead>
				<tr>
					<th>Details</th>
					<th>Action</th>
					
					
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${users}" var="u">
					<tr>
						
						<td><label><b>FirstName:</b></label>
						<c:out value="${ u.firstName }"></c:out>
						<br>
						<label><b>LastName:</b></label>
						<c:out value="${ u.lastName }"></c:out>
						<br>
						<label><b>EmployeeId</b></label>
						<c:out value="${ u.employeeId }"></c:out>
						</td>
						 

						<td>
						<input type="hidden" name="uId" value="${ u.userId }">
						<input type="submit"  name="action" value="Edit"><br>
	                    <input type="submit"  name="action" value="delete"></td></a>


					</tr>
				</c:forEach>
			</tbody>
		</table>
	</form>


</body>
</html>