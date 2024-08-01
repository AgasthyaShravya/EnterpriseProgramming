<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact Us</title>
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
        .form-container {
            max-width: 600px;
            margin: auto;
            background: white;
            padding: 60px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .form-container h2 {
            margin-bottom: 20px;
        }
        .form-container input[type="text"], .form-container input[type="email"], .form-container textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .form-container input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .form-container input[type="submit"]:hover {
            background-color: #45a049;
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
        <a href="index.jsp">Home</a>
        <a href="about.jsp">About Us</a>
        <a href="contact.jsp" class="active">Contact Us</a>
        <a href="login.jsp">Login</a>
        <a href="signup.jsp">Signup</a>
        <a href="feedback.jsp">Feedback</a>
    </div>

    <div class="header">
        <h1>Contact Us</h1>
    </div>

    <div class="content">
        <div class="form-container">
            <h2>Get in Touch</h2>
            <form action="contact-submit.jsp" method="post">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
                
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
                
                <label for="message">Message:</label>
                <textarea id="message" name="message" rows="5" required></textarea>
                
                <input type="submit" value="Submit">
            </form>
        </div>
    </div>

    <div class="footer">
        <p>&copy; 2024 BookWorms. All rights reserved.</p>
    </div>
</body>
</html>
