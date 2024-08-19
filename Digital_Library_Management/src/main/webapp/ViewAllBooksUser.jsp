<%@ page import="java.util.Iterator, library.*, java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book List</title>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background: url('LibraryImages/home-library-zoom-background.png') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: #333;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 80%;
            max-width: 900px;
        }
        h2 {
            color: #482B29;;
            font-size: 28px;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #007BFF;
            color: #fff;
        }
        td {
            background-color: #f9f9f9;
        }
        .no-data {
            color: #888;
            font-size: 18px;
        }
        .nav-links {
            margin-top: 20px;
        }
        .nav-links a {
            display: inline-block;
            margin: 10px;
            padding: 12px 24px;
            text-decoration: none;
            color: #fff;
            background-color: #482B29;;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }
        .nav-links a:hover {
            background-color: #0056b3;
        }
        button {
            background-color: #482B29;;
            color: #fff;
            padding: 8px 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            font-size: 14px;
        }
        button:hover {
            background-color: #482B29;;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Available Books in the Library</h2>
        <%
        UserBean ub = (UserBean) session.getAttribute("ubean");
        ArrayList<BookBeanUser> al = (ArrayList<BookBeanUser>) session.getAttribute("alist_u");

        if (al == null || al.size() == 0)
        {
            out.println("<p class='no-data'>No Books available.</p>");
        } 
        else
        {
            out.println("<table>");
            out.println("<tr><th>Code</th><th>Name</th><th>Author</th><th>Status</th><th>Action</th></tr>");

            for (BookBeanUser pb : al) 
            {
                String actionButton;
                if ("available".equals(pb.getStatus())) 
                {
                    actionButton = "<td><form action='issueBook' method='post'>" +
                                   "<input type='hidden' name='bookCode' value='" + pb.getCode() + "' />" +
                                   "<button type='submit'>Issue</button></form></td>";
                }
                else
                {
                    actionButton = "<td><form action='returnBook' method='post'>" +
                                   "<input type='hidden' name='bookCode' value='" + pb.getCode() + "' />" +
                                   "<button type='submit'>Return</button></form></td>";
                }

                out.println("<tr>"
                        + "<td>" + pb.getCode() + "</td>"
                        + "<td>" + pb.getName() + "</td>"
                        + "<td>" + pb.getAuthor() + "</td>"
                        + "<td>" + pb.getStatus() + "</td>"
                        + actionButton
                        + "</tr>");
            }
            out.println("</table>");
        }
        %>
        <div class="nav-links">
            <a href="logout">Logout</a>
        </div>
    </div>
</body>
</html>
