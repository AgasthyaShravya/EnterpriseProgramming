<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url("images/admin2.jpeg") no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        h1 {
            color: #000;
        }

        a {
            text-decoration: none;
            color: #000;
            font-weight: bold;
            margin: 10px 0;
            display: inline-block;
        }

        a:hover {
            color: #000;
        }
    </style>
</head>
<body>
    <h1>Admin Dashboard</h1>
    <a href="addBook.jsp">Add Book</a><br>
    <a href="editBook.jsp">Edit Book</a><br>
    <a href="deleteBook.jsp">Delete Book</a><br>
    <a href="viewBooks.jsp">View Books</a><br>
    <a href="logout.jsp">Logout</a>
</body>
</html>
