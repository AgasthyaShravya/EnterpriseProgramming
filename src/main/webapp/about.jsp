<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>About Us</title>
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
        <a href="index.jsp">Home</a>
        <a href="about.jsp" class="active">About Us</a>
        <a href="contact.jsp">Contact Us</a>
        <a href="login.jsp">Login</a>
        <a href="signup.jsp">Signup</a>
        <a href="feedback.jsp">feedback</a>
    </div>

    <div class="header">
        <h1>About Us</h1>
    </div>

    <div class="content">
        <div class="section">
            <h2>Our Academic Project</h2>
            <p>This website was developed as part of our academic project in the Enterprise Programming course. It showcases our skills in HTML, CSS, and Java development.</p>
        </div>
        <div class="section">
            <h2>Project Goals</h2>
            <p>The main goal of this project is to create a user-friendly platform that demonstrates our ability to design and implement a full-fledged web application.</p>
        </div>
        <div class="section">
            <h2>Team Members</h2>
            <p>Our team consists of dedicated students who collaborated to bring this project to life. We Agasthya Shravya,Mallampati Vishnu Priya and Chennamsetti Pujitha contributed our unique skills to ensure the success of this project.</p>
        </div>
    </div>

    <div class="footer">
        <p>&copy; 2024 BookWorms. All rights reserved.</p>
    </div>
</body>
</html>
