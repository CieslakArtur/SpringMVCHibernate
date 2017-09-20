<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Emplyees</title>
	<style>
		table {
    		font-family: arial, sans-serif;
   			border-collapse: collapse;
    		width: 100%;
			}
		td, th {
   			border: 1px solid #dddddd;
    		text-align: left;
    		padding: 8px;
			}
		tr:nth-child(even) {
    		background-color: #dddddd;
			}
	</style>
</head>
	<h2>List of Employees</h2>
	<table>
		<tr>
			<td>NAME</td><td>Joining Date</td><td>Salary</td><td>SSN</td><td></td>
		</tr>
		<c:forEach items="${employees}" var="employee">
			<tr>
				<td>${employee.name}</td>
				<td>${employee.joiningDate}</td>
				<td>${employee.salary}</td>
				<td><a href="<c:url value='/edit-${employee.ssn}-employee' />">${employee.ssn}</a></td>
				<td><a href="<c:url value='/delete-${employee.ssn}-employee' />">delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br/>
	<a href="<c:url value='/new' />">New Employee</a>
<body>
</body>
</html>