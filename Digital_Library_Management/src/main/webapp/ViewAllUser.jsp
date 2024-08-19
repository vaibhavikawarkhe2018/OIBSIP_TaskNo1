<%@ page language="java" 
    contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="library.*,java.util.*"
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-image: url('LibraryImages/bigstock-A-pile-of-books.png');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            margin: 0;
            padding: 0;
            color: #333;
        }
        .container {
            max-width: 1200px;
            margin: 50px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            
        }
        h1 {
            font-size: 36px;
            color: #482B29;
            text-align: center;
        }
        h2 {
            font-size: 28px;
            color: #333;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #007BFF;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .no-users {
            font-size: 20px;
            color: #FF0000;
            text-align: center;
        }
        .nav-links {
            text-align: center;
            margin-top: 20px;
        }
        .nav-links a {
            color:#482B29;
            text-decoration: underlined;
            font-size: 20px;
            margin: 0 15px;
            transition: color 0.3s;
        }
        .nav-links a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <%
            AdminBean ab = (AdminBean)session.getAttribute("abean");
            ArrayList<UserBean> al = (ArrayList<UserBean>)session.getAttribute("usersList");

            out.println("<h1>Hi, " + ab.getfName() + "</h1>");

            if (al == null || al.size() == 0) {
                out.println("<p class='no-users'>No Users Available..</p>");
            } else {
                out.println("<h3>Here are the User Details...</h3>");
                out.println("<table>");
                out.println("<tr>"
                        + "<th>Username</th>"
                        + "<th>First Name</th>"
                        + "<th>Last Name</th>"
                        + "<th>Address</th>"
                        + "<th>Email</th>"
                        + "<th>Phone Number</th>"
                        + "</tr>");

                for (UserBean user : al) {
                    out.println("<tr>"
                            + "<td>" + user.getUserName() + "</td>"
                            + "<td>" + user.getFirstName() + "</td>"
                            + "<td>" + user.getLastName() + "</td>"
                            + "<td>" + user.getAddress() + "</td>"
                            + "<td>" + user.getMailId() + "</td>"
                            + "<td>" + user.getPhoneNumber() + "</td>"
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
