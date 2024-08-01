<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: url("images/login1.jpeg") no-repeat center center fixed;
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
        }
        form {
            background: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
            width: 350px;
            max-width: 100%;
            text-align: center;
        }
        label {
            display: block;
            margin-bottom: 10px;
            color: #333;
            font-size: 18px;
            font-weight: bold;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            border: none;
            border-radius: 6px;
            color: white;
            font-size: 18px;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s ease;
        }
        input[type="submit"]:hover {
            background: linear-gradient(135deg, #2575fc, #6a11cb);
        }
        .error {
            color: red;
            margin-bottom: 15px;
        }
        a {
            display: block;
            text-align: center;
            margin-top: 15px;
            color: #2575fc;
            text-decoration: none;
            font-size: 16px;
            transition: color 0.3s ease;
        }
        a:hover {
            color: #6a11cb;
            text-decoration: underline;
        }
        .requirements {
            text-align: left;
            margin-bottom: 20px;
            color: #666;
            font-size: 14px;
        }
        .requirements span {
            color: red;
            font-weight: bold;
        }
    </style>
    <script>
        function validatePassword() {
            const password = document.getElementById("password").value;
            const requirements = document.getElementById("requirements");
            const error = document.getElementById("error-message");
            const regexUpper = /[A-Z]/;
            const regexNumber = /\d/;
            const regexSpecial = /[!@#$%^&*(),.?":{}|<>]/;

            let isValid = true;
            error.textContent = "";

            if (!regexUpper.test(password)) {
                requirements.innerHTML += "<br><span>Must contain at least one uppercase letter.</span>";
                isValid = false;
            }
            if (!regexNumber.test(password)) {
                requirements.innerHTML += "<br><span>Must contain at least one number.</span>";
                isValid = false;
            }
            if (!regexSpecial.test(password)) {
                requirements.innerHTML += "<br><span>Must contain at least one special character.</span>";
                isValid = false;
            }

            return isValid;
        }

        function handleSubmit(event) {
            if (!validatePassword()) {
                event.preventDefault();
                document.getElementById("error-message").textContent = "Please meet all password requirements.";
            }
        }
    </script>
</head>
<body>
    <div class="container">
        <form action="LoginServlet" method="post" onsubmit="handleSubmit(event)">
            <% 
                String error = (String) request.getAttribute("error");
                if (error != null) {
            %>
                <div class="error"><%= error %></div>
            <% } %>

            <div id="error-message" class="error"></div>
            <div id="requirements" class="requirements">
                <p>Password must:</p>
                <ul>
                    <li><span>Contain at least one uppercase letter.</span></li>
                    <li><span>Contain at least one number.</span></li>
                    <li><span>Contain at least one special character.</span></li>
                </ul>
            </div>
            
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            
            <input type="submit" value="Login">
            
            <a href="forgotPassword.jsp">Forgot Password</a>
            <a href="signup.jsp">Signup</a>
        </form>
    </div>
</body>
</html>