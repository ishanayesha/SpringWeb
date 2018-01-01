<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student</title>
</head>
<body>

	<h3>Add a Student</h3>

	<table border="1px">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Email</th>
			<th>Tel</th>
			<th>Age</th>
		</tr>
		<c:if test="${not empty students}">
		<c:forEach var="student" items="${students}">
			<tr>
				<td>${student.id}</td>
				<td>${student.name}</td>
				<td>${student.email}</td>
				<td>${student.tel}</td>
				<td>${student.age}</td>
				<td><a href="http://localhost:8080/SpringWeb/student/${student.id}">Edit</a></td>
				<td><a href="http://localhost:8080/SpringWeb/delete/${student.id}">Delete</a></td>			
			</tr>
		</c:forEach>
		</c:if>	
	</table>
	
	
		

</body>
</html>