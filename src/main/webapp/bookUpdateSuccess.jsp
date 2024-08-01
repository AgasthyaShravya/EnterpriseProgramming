<!DOCTYPE html>
<html>
<head>
    <title>Book Added</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
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
        }
        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
        .message {
            display: flex;
            justify-content: center;
            align-items: center;
            height: calc(100vh - 50px);
        }
        .message div {
            padding: 20px;
            background-color: #28a745;
            color: white;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="home.jsp">Home</a>
        <a href="addBook.jsp">Add Book</a>
        <a href="editBook.jsp">Edit Book</a>
        <a href="deleteBook.jsp">Delete Book</a>
        <a href="viewBooks.jsp">View Books</a>
        <a href="logout.jsp">Logout</a>
    </div>
    <div class="message">
        <div>
            Book Updated successfully!
        </div>
    </div>
</body>
</html>
