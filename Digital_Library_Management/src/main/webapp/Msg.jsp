<%@ page language="java" 
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Digital Library Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('LibraryImages/bigstock-A-pile-of-books.png'); 
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
            color:  #fff;
        }
        .container {
            background-color: rgba(0, 0, 0, 0.9); 
            padding: 30px;
            border-radius: 8px;
            max-width: 800px;
            margin: 20px auto;
            text-align: center;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
        }
        .message {
            font-size: 1.5em;
            margin-bottom: 20px;
            color: #482B29;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="message">
            <%
            String msg = (String) request.getAttribute("msg");
            if (msg != null) 
            {
                out.print(msg);
            }
            else
            {
                out.print("Welcome to the Library! Browse our wide selection of Books.");
            }
            %>
        </div>
        <div>
            <jsp:include page="home.html" />
        </div>
    </div>
</body>
</html>
