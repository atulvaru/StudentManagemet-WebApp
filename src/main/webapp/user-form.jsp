<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Student Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
	integrity="sha512-dyBcdlri7qkdeipW74uJ/RMQ3hI80sBD0ATdPpmNXDY8qmxkqhfEMj2f6nFcEgflJp4ucbsUhq0HPIT9CFbYkA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
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

.form-group {
	position: relative;
}

.password-toggle {
	position: absolute;
	right: 10px;
	top: 50%;
	transform: translateY(-50%);
	cursor: pointer;
}
</style>
<script>
function togglePasswordVisibility() {
	const passwordInput = document.getElementById('password');
	const toggleIcon = document.getElementById('togglePasswordIcon');
	if (passwordInput.type === 'password') {
		passwordInput.type = 'text';
		toggleIcon.classList.remove('fa-eye');
		toggleIcon.classList.add('fa-eye-slash');
	} else {
		passwordInput.type = 'password';
		toggleIcon.classList.remove('fa-eye-slash');
		toggleIcon.classList.add('fa-eye');
	}
}
</script>
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark">
			<a href="index.jsp" class="navbar-brand">Student Management Application</a>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a href="<%=request.getContextPath()%>/list" class="nav-link">Users</a></li>
				<li class="nav-item"><a href="index.jsp" class="nav-link">Logout</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${student != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${student == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${student != null}">
            			Edit student
            		</c:if>
						<c:if test="${student == null}">
            			Add New student
            		</c:if>
					</h2>
				</caption>

				<c:if test="${student != null}">
					<input type="hidden" name="id" value="<c:out value='${student.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Student Name</label>
					<input type="text" value="<c:out value='${student.name}' />" class="form-control" name="name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Student Email</label>
					<input type="email" value="<c:out value='${student.email}' />" class="form-control" name="email" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Student Password</label>
					<input type="password" id="password" value="<c:out value='${student.password}' />" class="form-control" name="password" required="required">
					<i class="fas fa-eye password-toggle" id="togglePasswordIcon" onclick="togglePasswordVisibility()"></i>
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
