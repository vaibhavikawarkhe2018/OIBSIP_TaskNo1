<%@ page language="java" 
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         import="library.AdminBean"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book Added</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('LibraryImages/library.png');
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #fff;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            text-align: center;
            max-width: 400px;
            width: 100%;
            box-sizing: border-box;
        }
        h1 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #482B29;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
        }
        h2 {
            font-size: 20px;
            margin-bottom: 10px;
            color: #000000;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
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
        <%
        AdminBean ab = (AdminBean) session.getAttribute("abean");
        String msg = (String) request.getAttribute("msg");
        if (ab != null) {
            out.print("<h2>Page belongs to Admin: " + ab.getfName() + "</h2>");
        }
        if (msg != null) {
            out.print("<h1>" + msg + "</h1>");
        }
        %>
        <div class="nav-links">
            <a href="AddBook.html">Add Another Book</a><br>
            <a href="viewBooks">View All Books</a><br>
            <a href="logout">Logout</a>
        </div>
    </div>
</body>
</html>
