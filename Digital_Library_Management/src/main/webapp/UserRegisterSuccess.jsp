<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration Successful</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-image: url('LibraryImages/room-office-library-interior.png');
            background-size: cover;
            background-position: center;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            text-align: center;
            color: #fff;
            background-color: rgba(0, 0, 0, 0.7);
            background-blend-mode: overlay;
        }
        .message {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            margin-bottom: 20px;
            width: 100%;
            max-width: 500px;
            color: #333;
        }
        .message h1 {
            color: #482B29;
            margin-bottom: 15px;
            font-size: 28px;
        }
        .message p {
            color: #555;
            font-size: 18px;
            margin-bottom: 10px;
        }
        .message a {
            display: inline-block;
            margin-top: 20px;
            padding: 12px 24px;
            text-decoration: none;
            color: #fff;
            background-color: #482B29;
            border-radius: 5px;
            transition: background-color 0.3s ease-in-out, transform 0.3s ease-in-out;
            font-size: 16px;
        }
        .message a:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
        }
    </style>
</head>
<body>
    <div class="message">
        <h1>Registration Successful</h1>
        <%
            String msg = (String) request.getAttribute("msg");
            String fname = (String) request.getAttribute("fname");
            if (msg != null && fname != null) {
        %>
            <p>Welcome to the Library, <%= fname %>!</p>
            <p><%= msg %></p>
            <a href="UserLogin.html">Go to Login</a>
        <%
            }
        %>
    </div>
</body>
</html>
