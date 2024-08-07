<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>User Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
body {
	background-color: #f8f9fa;
	font-family: Arial, sans-serif;
}

.navbar {
	background-color: #343a40 !important;
}

.navbar-brand {
	font-size: 1.5rem;
	font-weight: bold;
}

.navbar-nav .nav-link {
	font-size: 1.1rem;
	color: #ffffff !important;
}

.navbar-nav .nav-link:hover {
	color: #c0c0c0 !important;
}

.container {
	margin-top: 20px;
}

.table {
	background-color: #ffffff;
	border-radius: 0.25rem;
	box-shadow: 0 2px 3px rgba(0, 0, 0, 0.1);
}

.table th, .table td {
	vertical-align: middle;
	text-align: center;
}

.table thead th {
	background-color: #007bff;
	color: #ffffff;
}

.btn-success {
	background-color: #28a745;
	border-color: #28a745;
}

.btn-success:hover {
	background-color: #218838;
	border-color: #1e7e34;
}

.alert {
	margin-top: 20px;
}

.card {
	border: 1px solid #dee2e6;
	border-radius: 0.25rem;
	box-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.075);
}

.card-header {
	background-color: #007bff;
	color: #ffffff;
	font-size: 1.25rem;
	font-weight: bold;
}
</style>
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark">
			<a href="index.jsp" class="navbar-brand">Student Management
				Application</a>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a
					href="<%=request.getContextPath()%>/list" class="nav-link">Users</a></li>
					<li class="nav-item"><a
					href="index.jsp" class="nav-link">Logout</a></li>
			</ul>
		</nav>
	</header>

	<div class="container">
		<div class="card">
			<div class="card-header text-center">
				<h3>List of Students</h3>
			</div>
			<div class="card-body">
				<div class="text-left mb-3">
					<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
						New Student</a>
				</div>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Email</th>
							<th>Password</th>
							<th>Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="student" items="${listStudent}">
							<tr>
								<td><c:out value="${student.id}" /></td>
								<td><c:out value="${student.name}" /></td>
								<td><c:out value="${student.email}" /></td>
								<td><c:out value="${student.password}" /></td>
								<td><a href="edit?id=<c:out value='${student.id}' />"
									class="btn btn-warning btn-sm">Edit</a> <a
									href="delete?id=<c:out value='${student.id}' />"
									class="btn btn-danger btn-sm">Delete</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
