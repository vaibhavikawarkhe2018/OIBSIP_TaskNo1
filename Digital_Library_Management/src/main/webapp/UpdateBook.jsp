<%@ page language="java" 
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         import="library.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Book Updated</title>
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
            AdminBean ab = (AdminBean) session.getAttribute("abean");
            String msg = (String) request.getAttribute("msg");
            if (msg != null) 
            {
                out.print(msg);
            } 
            else
            {
                out.print("No message available.");
            }
            %>
        </div>
        <div class="nav-links">
            <a href="product.html">Add Book</a><br>
            <a href="viewBooks">View All Books</a><br>
            <a href="logout">Logout</a>
        </div>
    </div>
</body>
</html>
