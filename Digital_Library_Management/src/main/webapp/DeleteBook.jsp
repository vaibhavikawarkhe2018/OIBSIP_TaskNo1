<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         import="library.*,java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Book Deleted</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('LibraryImages/library.png'); /* Replace with your image URL */
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
            background-color: rgba(0, 0, 0, 0.8); /* Dark semi-transparent background */
            padding: 30px;
            border-radius: 10px;
            max-width: 600px;
            width: 100%;
            box-sizing: border-box;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            text-align: center;
        }
        .message {
            margin-bottom: 20px;
        }
        .message h2 {
            color: #FFD700; /* Gold color */
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
        }
        .nav-links a {
            display: inline-block;
            margin: 10px;
            padding: 10px 20px;
            background-color:  #482B29;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.3);
        }
        .nav-links a:hover {
            background-color:  #482B29;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="message">
            <%
            AdminBean ab = (AdminBean) session.getAttribute("abean");
            String msg = (String) request.getAttribute("msg");

            if (msg != null) {
                out.println("<h3>Page belongs to Admin: " + ab.getfName() + "</h3>");
                out.print("<h2>" + msg + "</h2>");
            } else {
                out.print("<p>No message available.</p>");
            }
            %>
        </div>
        <div class="nav-links">
            <a href="AddBook.html">Add Book</a><br>
            <a href="viewBooks">View All Books</a><br>
            <a href="logout">Logout</a>
        </div>
    </div>
</body>
</html>
