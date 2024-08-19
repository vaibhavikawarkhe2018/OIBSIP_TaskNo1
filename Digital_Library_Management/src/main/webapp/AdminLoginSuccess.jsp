<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         import="library.AdminBean"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('LibraryImages/library.png'); /* Replace with your image URL */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            margin: 0;
            padding: 0;
            color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.7);
            padding: 30px;
            border-radius: 10px;
            border: 1px solid #000000;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            text-align: center;
        }
        h1 {
            font-size: 2.5em;
            color: #482B29;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }
        .nav-links {
            margin-top: 20px;
        }
        .nav-links a {
            display: inline-block;
            color: #fff;
            text-decoration: none;
            font-size: 18px;
            margin: 10px 20px;
            padding: 15px 30px;
            background-color: #01153e;
            border-radius: 5px;
            transition: background-color 0.3s, transform 0.3s;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .nav-links a:hover {
            background-color:  #01153e;
            transform: translateY(-2px);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>
            <% 
            AdminBean ab = (AdminBean) session.getAttribute("abean");
           
            out.print("Welcome To The Library, " + ab.getfName());
           
            %>
        </h1>
        <div class="nav-links">
            <a href="AddBook.html">Add Book</a>
            <a href="viewBooks">View All Books</a>
            <a href="viewUsers">View All Users</a>
            <a href="logout">Logout</a>
        </div>
    </div>
</body>
</html>
