<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Librarian</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url("images/lib1.jpeg") no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        form {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
        }
        input[type="text"], input[type="password"], input[type="email"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            border: none;
            border-radius: 4px;
            color: white;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h2>Edit Librarian</h2>
    <form action="EditLibrarianServlet" method="post">
        <label for="librarianId">Librarian ID:</label>
        <input type="text" id="librarianId" name="librarianId" required><br>
        <label for="username">New Username:</label>
        <input type="text" id="username" name="username"><br>
        <label for="password">New Password:</label>
        <input type="password" id="password" name="password"><br>
        <label for="email">New Email:</label>
        <input type="email" id="email" name="email"><br>
        <input type="submit" value="Edit Librarian">
    </form>
</body>
</html>
