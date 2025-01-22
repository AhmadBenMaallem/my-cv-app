<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Welcome to My App</title>
    <!-- Internal CSS for basic styling -->
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f7f6;
            color: #333;
        }
        header {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            text-align: center;
        }
        .container {
            width: 80%;
            margin: auto;
            padding: 20px;
        }
        .welcome-message {
            font-size: 24px;
            margin-bottom: 20px;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
        .btn {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
            display: inline-block;
        }
        .btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <!-- Header Section -->
    <header>
        <h1>Welcome to My Web Application</h1>
    </header>

    <!-- Main Content Section -->
    <div class="container">
        <div class="welcome-message">
            <h2>Hello, <%= request.getParameter("username") != null ? request.getParameter("username") : "Guest" %>!</h2>
            <p>We are glad to have you here.</p>
        </div>

        <a href="./page1.jsp" class="btn">Go to Another Page</a>
    </div>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2025 My Web Application. All rights reserved.</p>
    </footer>

</body>
</html>

