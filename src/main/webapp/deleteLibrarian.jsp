<!DOCTYPE html>
<html>
<head>
    <title>Delete Librarian</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url("images/lib1.jpeg") no-repeat center center fixed;
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

        input[type="text"] {
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
            background-color: #dc3545;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
    <h2>Delete Librarian</h2>
    <form action="DeleteLibrarianServlet" method="post">
        <label for="librarianId">Librarian ID:</label>
        <input type="text" id="librarianId" name="librarianId" required><br>
        <input type="submit" value="Delete Librarian">
    </form>
</body>
</html>