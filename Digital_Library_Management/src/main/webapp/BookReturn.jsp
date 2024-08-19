<%@ page language="java" 
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         import="library.UserBean"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book Issued</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('LibraryImages/library.png');
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
            color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .container {
            background-color: rgba(0, 0, 0, 0.7); 
            padding: 30px;
            border-radius: 8px;
            max-width: 600px;
            width: 100%;
            box-sizing: border-box;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            text-align: center;
        }
        .message {
            font-size: 1.6em;
            color: #FFD700;
            margin-bottom: 20px;
        }
        .nav-links {
            margin-top: 20px;
        }
         .nav-links a {
            display: inline-block;
            margin: 10px 0;
            padding: 10px 20px;
            background-color: #01153e;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.3);
        }
        .nav-links a:hover {
            background-color: #01153e;
        }
        </style>
</head>
<body>
    <div class="container">
        <div class="message">
            <% 
            String msg = (String) request.getAttribute("msg");
            out.println(msg);
            %>
        </div>
        <div class="nav-links">
            <a href="logout">Logout</a>
            <a href="viewBooks1">View All Books</a>
        </div>
    </div>
</body>
</html>
