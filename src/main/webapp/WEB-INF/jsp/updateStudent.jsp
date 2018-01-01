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

	<h3>Update Student</h3>

	<form:form action="http://localhost:8080/SpringWeb/edit/${student.id}" modelAttribute="student" method="POST">
	<table>
		<tr>
			<td>Name</td>
			<td><form:input type="text" name="name" path="name" /></td>
		</tr>
		<tr>
			<td>Age</td>
			<td><form:input type="text" name="age" path="age" /></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><form:input type="text" name="email" path="email"/></td>
		</tr>
		<tr>
			<td>Telephone No</td>
			<td><form:input type="text" name="tel" path="tel"/></td>
		</tr>
		<tr><td></td><td><input type="submit" value="Add" /></td></tr>						
	</table>
	</form:form>

</body>
</html>