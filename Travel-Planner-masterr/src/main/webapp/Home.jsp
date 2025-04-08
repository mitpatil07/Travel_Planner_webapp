<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="home/Login.css">
    <link rel="stylesheet" type="text/css" href="home/Home.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>User Login</title>
    <style>
        body {
            background: linear-gradient(to right, #ff7e5f, #feb47b);
            font-family: 'Arial', sans-serif;
            color: #fff;
        }
        .container-box {
            padding: 80px;
            text-align: center;
            background: rgba(255, 255, 255, 0.5);
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.5);
            max-width: 600px;
            margin: auto;
        }
        h3 {
            font-size: 28px;
            font-weight: bold;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }
        h4 {
            font-size: 20px;
            font-style: italic;
        }
        .highlight-text {
            color: #ffeb3b;
        }
    </style>
</head>
<body>
    <%@ include file ="Header.jsp" %>
    <div class="container" style="padding-top:100px;">
        <div class="container-box">
            <h3>Welcome to <span class="highlight-text">Travel Planner</span></h3>
            <h4>"It's better to <b>See</b> something once than to <b>Hear</b> about it a hundred times."</h4>
        </div>
    </div>
    <%@ include file="Footer.jsp" %>
</body>
</html>
