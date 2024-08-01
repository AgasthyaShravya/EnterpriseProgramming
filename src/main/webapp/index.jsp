<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BookWorms</title>
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
    </style>
</head>
<body>
    <div class="navbar">
        <a href="index.jsp" class="active">Home</a>
        <a href="about.jsp">About Us</a>
        <a href="contact.jsp">Contact Us</a>
        <a href="login.jsp">Login</a>
        <a href="signup.jsp">Signup</a>
        <a href="feedback.jsp">Feedback</a>
    </div>

    <div class="header">
        <h1>Welcome to the Official Page of BookWorms</h1>
        <p>Your gateway to a world of knowledge and information</p>
    </div>

    <div class="content">
        <div class="section">
            <h2>About Our Library</h2>
            <p>Our library offers a vast collection of books, journals, and digital resources to cater to all your informational needs.</p>
        </div>
        <div class="section">
            <h2>Contact Us</h2>
            <p>For any inquiries, please feel free to reach out to us through our contact page.</p>
        </div>
    </div>

    <div class="footer">
        <p>&copy; 2024 BookWorms. All rights reserved.</p>
    </div>
</body>
</html>
