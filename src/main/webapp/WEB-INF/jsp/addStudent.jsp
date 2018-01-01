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

	<form:form id="myForm" action="http://localhost:8080/SpringWeb/add" modelAttribute="newStudent" method="POST">
	<table>
		<tr>
			<td>Name</td>
			<td><form:input type="text" id="name" path="name" /></td>
		</tr>
		<tr>
			<td>Age</td>
			<td><form:input type="text" id="age" path="age" /></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><form:input type="text" id="email" path="email"/></td>
		</tr>
		<tr>
			<td>Telephone No</td>
			<td><form:input type="text" id="tel" path="tel"/></td>
		</tr>
		<tr><td></td><td><input onclick="validation()" type="button" value="Add" /></td></tr>						
	</table>
	</form:form>

	<h3>Student List</h3>

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
	

<script type="text/javascript">

function validation(){
	
	var valid = true;
	
    var email = document.getElementById("email").value;
    var tel = document.getElementById("tel").value;
    
    var atpos = email.indexOf("@");
    var dotpos = email.lastIndexOf(".");
    
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>= email.length) {
        alert("Not a valid e-mail address");
        valid = false;
    }
    var phoneno = /^([0-9]{10})$/;  
    if(!(tel.match(phoneno))){
        alert("Not a valid tel");
        valid = false;    	
    }
    
    if(valid){
    	document.getElementById("myForm").submit();
    }
    else{
    	alert("asas");
    }
}

</script>	

</body>
</html>