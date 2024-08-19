<%@ page language="java" 
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         import="library.*,java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Book Update</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('LibraryImages/wp2036897.png'); 
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
            background-color: rgba(0, 0, 0, 0.7); /* Dark semi-transparent background */
            padding: 30px;
            border-radius: 8px;
            max-width: 500px;
            width: 100%;
            box-sizing: border-box;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            text-align: center;
        }
        h2 {
            color: #FFD700; /* Gold color */
            margin-bottom: 20px;
            font-size: 2em;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        input[type="text"] {
            width: calc(100% - 20px);
            padding: 10px;
            border: 1px solid #fff;
            border-radius: 4px;
            margin-bottom: 15px;
            font-size: 16px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #482B29;
            border: none;
            color: #fff;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #482B29;
        }
        p {
            color: #FFD700; /* Gold color */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Update The Book Details</h2>
        <%
        AdminBean ab = (AdminBean) session.getAttribute("abean");
        ArrayList<BookBean> al = (ArrayList<BookBean>) session.getAttribute("alist");
        String pCode = request.getParameter("pcode");

        if (ab != null && al != null && pCode != null) {
            Iterator<BookBean> it = al.iterator();
            while (it.hasNext()) {
                BookBean pb = it.next();
                if (pCode.equals(pb.getCode())) {
        %>
            <form action="update" method="post">
                <input type="hidden" name="pcode" value="<%= pb.getCode() %>">
                <input type="text" name="name" value="<%= pb.getName() %>" placeholder="Book Name" required>
                <input type="text" name="author" value="<%= pb.getAuthor() %>" placeholder="Book Author" required>
                <input type="text" name="status" value="<%= pb.getStatus() %>" placeholder="Book Status" required>
                <input type="submit" value="Update Book">
            </form>
        <%
                    break;
                }
            }
        } else {
            out.print("<p>Invalid book or session. Please try again.</p>");
        }
        %>
    </div>
</body>
</html>
