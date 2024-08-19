<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         import="library.*,java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Book List</title>
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
            background-color: rgba(0, 0, 0, 0.8); /* Dark semi-transparent background */
            padding: 30px;
            border-radius: 10px;
            max-width: 800px;
            width: 100%;
            box-sizing: border-box;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
        }
        .header {
            text-align: center;
            margin-bottom: 20px;
        }
        .welcome-message {
            font-size: 1.2em;
            margin-bottom: 20px;
            color: #ffffff; /* Gold color */
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
        }
        h2 {
            font-size: 2em;
            text-align: center;
            color: #FFD700; /* Gold color */
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
            text-align: left;
            color: #fff;
        }
        th {
            background-color: #482B29;
            text-transform: uppercase;
        }
        td a {
            color: #FFD700; /* Gold color */
            text-decoration: none;
            transition: color 0.3s;
        }
        td a:hover {
            color: #fff;
        }
        .nav-links {
            text-align: center;
            margin-top: 20px;
        }
        .nav-links a {
            display: inline-block;
            margin: 10px;
            padding: 10px 20px;
            background-color: #482B29;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.3);
        }
        .nav-links a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <div class="welcome-message">
                <%
                AdminBean ab = (AdminBean) session.getAttribute("abean");
                out.print("Page belongs to Admin: " + ab.getfName());
                %>
            </div>
        </div>
        <div class="content">
            <h2>List Of Books</h2>
            <%
            ArrayList<BookBean> al = (ArrayList<BookBean>) session.getAttribute("alist");
            if (al == null || al.size() == 0) {
                out.print("<p>No Books available.</p>");
            } else {
            %>
            <table>
                <thead>
                    <tr>
                        <th>Code</th>
                        <th>Name</th>
                        <th>Author</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    for (BookBean pb : al) {
                    %>
                    <tr>
                        <td><%= pb.getCode() %></td>
                        <td><%= pb.getName() %></td>
                        <td><%= pb.getAuthor() %></td>
                        <td><%= pb.getStatus() %></td>
                        <td>
                            <a href="edit?pcode=<%= pb.getCode() %>">Edit</a>
                            &nbsp;|&nbsp;
                            <a href="delete?pcode=<%= pb.getCode() %>">Delete</a>
                        </td>
                    </tr>
                    <%
                    }
                    %>
                </tbody>
            </table>
            <%
            }
            %>
            <div class="nav-links">
                <a href="AddBook.html">Add Book</a>
                <a href="logout">Logout</a>
            </div>
        </div>
    </div>
</body>
</html>
