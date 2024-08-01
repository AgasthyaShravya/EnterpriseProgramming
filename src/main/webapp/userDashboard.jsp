<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }
        .navbar {
            background-color: #333;
            overflow: hidden;
        }
        .navbar a {
            float: left;
            display: block;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            transition: background-color 0.3s;
        }
        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
        .navbar a.active {
            background-color: #4CAF50;
            color: white;
        }
        .content {
            padding: 20px;
        }
        .header {
            padding: 60px;
            text-align: center;
            background: #1abc9c;
            color: white;
        }
        .header h1 {
            font-size: 50px;
        }
        .section {
            padding: 20px;
            text-align: center;
        }
        .footer {
            padding: 20px;
            text-align: center;
            background: #333;
            color: white;
        }
        .search-box {
            margin: 20px auto;
            text-align: center;
        }
        .search-box input[type="text"] {
            width: 300px;
            padding: 10px;
            font-size: 16px;
        }
        .search-box input[type="submit"] {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
        .search-box input[type="submit"]:hover {
            background-color: #45a049;
        }
        .books-list {
            margin: 20px auto;
            max-width: 800px;
        }
        .books-list table {
            width: 100%;
            border-collapse: collapse;
        }
        .books-list th, .books-list td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        .books-list th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="dashboard.jsp" class="active">Dashboard</a>
        <a href="viewUserBooks.jsp">View Books</a>
        <a href="requestBook.jsp">Request Books</a>
        <a href="logout.jsp">Logout</a>
    </div>

    <div class="header">
        <h1>User Dashboard</h1>
    </div>

    <div class="content">
        <div class="search-box">
            <h2>Search Books</h2>
            <form action="searchBooks.jsp" method="get">
                <input type="text" name="query" placeholder="Enter book title or author">
                <input type="submit" value="Search">
            </form>
        </div>

        <div class="books-list">
            <a href="viewBooks.jsp" class="active">Available Books</a>
            
        </div>
    </div>

    <div class="footer">
        <p>&copy; 2024 Library Management System. All rights reserved.</p>
    </div>
</body>
</html>
