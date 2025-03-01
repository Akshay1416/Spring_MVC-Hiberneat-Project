<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
         h1 {
            color: #333;
            font-size: 2em;
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

        label, input[type="text"], input[type="submit"] {
            display: block;
            width: 100%;
            margin-bottom: 15px;
        }

        label {
            font-weight: bold;
            color: #fff;
        }

        input[type="text"] {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<h1>Employee Registration Form</h1><br>
	<form action="reg">
        <label for="id">Employee Id:</label>
        <input type="text" id="id" name="id">
        
        <label for="name">Name:</label>
        <input type="text" id="name" name="name">
        
        <label for="phone">Phone:</label>
        <input type="text" id="phone" name="phone">
        
        <input type="submit" value="Register">
    </form>
</body>
</html>