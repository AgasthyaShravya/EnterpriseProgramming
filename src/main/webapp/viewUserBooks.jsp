<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>View Books</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background: url("images/book2.jpg") no-repeat center center fixed;
            background-size: cover;
        }
        .navbar {
            background-color: #333;
            overflow: hidden;
            width: 100%;
            position: fixed;
            top: 0;
            z-index: 1000;
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
        .content {
            margin-top: 60px; /* Adjust based on the height of the navbar */
        }
        h2 {
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #fff;
        }
        table, th, td {
            border: 1px solid #ddd;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
            text-align: left;
        }
    </style>
</head>
<body>
   
    <div class="content">
        <h2>View Books</h2>
        <table>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Link</th>
            </tr>

                <tr>
                    <td>3</td>
                    <td>Java Complete Reference</td>
                    <td>Herbert Schildt</td>
                    <td><a href="https://drive.google.com/file/d/1go51X1ZuT1OYklUVWmIKakxomS-qhrrr/view?usp=sharing" target="_blank">View PDF</a></td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>The Exorcist</td>
                    <td>William Peter Blatty</td>
                    <td><a href="https://drive.google.com/file/d/1837XomMgF1gE21fuGAnHJHglmmqTkLUY/view?usp=sharing" target="_blank">View PDF</a></td>
                </tr>
                <tr>
                    <td>6</td>
                    <td>It Ends With Us</td>
                    <td>Coollen Hover</td>
                    <td><a href="https://drive.google.com/file/d/1lwxN6kixMzOp7vkIXp0Cby6COusHaJ8S/view?usp=sharing" target="_blank">View PDF</a></td>
                </tr>
                <tr>
                    <td>7</td>
                    <td>It Starts With Us</td>
                    <td>Coollen Hover</td>
                    <td><a href="https://drive.google.com/file/d/1UYI4F8rN0LEA1nmZhMnDpiWHg9yb5RFQ/view?usp=sharing" target="_blank">View PDF</a></td>
                </tr>
                
				<tr>
                     <td>12</td> 
                     <td>Data Structures And Algorithms Made Easy</td> 
                     <td>Narasimha Karumanchi</td> 
                     <td><a href="https://drive.google.com/file/d/1Gb3CfcGdMB85UKI34YAxRJ263_UiBWeF/view?usp=sharing" target="_blank">View PDF</a></td> 
                 </tr>
                
        </table>
    </div>
</body>
</html>
