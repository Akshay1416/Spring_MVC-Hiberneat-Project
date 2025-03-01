<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
            flex-direction: column;
            align-items: center;
            padding: 20px;
        }

        h1 {
            font-size: 2em;
            color: #333;
            margin-bottom: 20px;
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border-radius: 5px;
            width: 80%;
            text-align: center;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 80%;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
            text-align: center;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        a {
            text-decoration: none;
            color: #4CAF50;
            font-weight: bold;
        }

        a:hover {
            color: #45a049;
        }

        td:last-child, td:nth-last-child(2) {
            text-align: center;
        }

        tr:last-child td {
            border-bottom: none;
        }

        @media (max-width: 600px) {
            table {
                width: 100%;
            }

            th, td {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
	<table>
<h1>All employee Details</h1>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Phone</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach var="employee" items="${list}" >
			<tr>
				<td>${employee.id}</td>
				<td>${employee.name}</td>
				<td>${employee.phone}</td>
				<td><a href="edit?id=${employee.id}">edit</a></td>
				<td><a href="delete?id=${employee.id}">delete</a></td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>