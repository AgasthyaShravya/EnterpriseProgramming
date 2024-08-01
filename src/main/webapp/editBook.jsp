<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Book</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url("images/book2.jpg") no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        h2 {
            color: #333;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            width: 300px;
        }

        label {
            margin-top: 10px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="url"] {
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 100%;
            box-sizing: border-box;
        }

        input[type="submit"] {
            margin-top: 20px;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }

        .navbar {
            background-color: #333;
            overflow: hidden;
            width: 100%;
        }

        .navbar a {
            float: left;
            display: block;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="home.jsp">Home</a>
        <a href="addBook.jsp">Add Book</a>
        <a href="editBook.jsp" class="active">Edit Book</a>
        <a href="deleteBook.jsp">Delete Book</a>
        <a href="viewBooks.jsp">View Books</a>
        <a href="logout.jsp">Logout</a>
    </div>
    <h2>Edit Book</h2>
    <form action="EditBookServlet" method="post">
        <label for="id">Book ID:</label>
        <input type="text" id="id" name="id" value="<%= request.getParameter("id") %>" required><br>
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" value="<%= request.getParameter("title") %>" required><br>
        <label for="author">Author:</label>
        <input type="text" id="author" name="author" value="<%= request.getParameter("author") %>" required><br>
        <label for="link">PDF Link:</label>
        <input type="text" id="link" name="link" value="<%= request.getParameter("link") %>" required><br>
        <input type="submit" value="Update Book">
    </form>
</body>
</html>
