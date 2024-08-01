<!DOCTYPE html>
<html>
<head>
    <title>Add Librarian</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url("images/lib1.jpeg") no-repeat center center fixed;
            background-size: cover; /* Ensures the background image covers the entire viewport */
            background-position: center; /* Centers the background image */
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            width: 100vw;
        }

        h2 {
            color: #333;
            margin-bottom: 20px; /* Adds some space below the heading */
        }

        form {
            background-color: rgba(255, 255, 255, 0.9); /* Slight transparency for better readability */
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            width: 90%;
            max-width: 400px; /* Sets a maximum width for larger screens */
        }

        label {
            margin-top: 10px;
            font-weight: bold;
        }

        input[type="text"], input[type="password"], input[type="email"] {
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
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h2>Add Librarian</h2>
    <form action="AddLibrarianServlet" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br>
        <input type="submit" value="Add Librarian">
    </form>
</body>
</html>
