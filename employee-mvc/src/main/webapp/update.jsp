<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	font-family: Arial, sans-serif;
	background: url(https://i.pinimg.com/736x/cc/e8/7e/cce87e2788907b09145c7bc1270b71bc.jpg);
	background-repeat: no-repeat;
	background-size: cover;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

h4 {
	color: #333;
	font-size: 1.5em;
	text-align: center;
	margin-bottom: 20px;
	padding: 10px;
	background-color: #4CAF50;
	color: white;
	border-radius: 5px;
	width: 100%;
	max-width: 400px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	margin-right: 100px;
}

form {
	
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 15px rgba(0, 0, 0, 5);
	width: 300px;
}

label, input, button {
	display: block;
	width: 100%;
	margin-bottom: 15px;
}

label {
	font-weight: bold;
	margin-bottom: 5px;
	color: #fff;
}

input {
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-sizing: border-box;
}

button {
	padding: 10px;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

button:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<h4>Update Your Employee Information</h4>
	<form:form action="update" modelAttribute="emp" method="get">
		<label for="id">Employee ID:</label>
		<form:input path="id" id="id" />

		<label for="name">Name:</label>
		<form:input path="name" id="name" />

		<label for="phone">Phone:</label>
		<form:input path="phone" id="phone" />

		<form:button>Update</form:button>
	</form:form>
</body>
</html>