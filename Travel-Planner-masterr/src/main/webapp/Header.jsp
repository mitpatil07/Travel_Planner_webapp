<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Travel Planner</title>

    <!-- Bootstrap 3 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery and Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- Custom CSS -->
    <style>
        /* Global Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        /* Top Navigation */
        .top-nav {
            background: #343a40;
            padding: 10px;
            text-align: right;
        }
        .top-nav ul {
            list-style: none;
            margin: 0;
            padding: 0;
        }
        .top-nav ul li {
            display: inline;
            margin: 0 10px;
        }
        .top-nav ul li a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            transition: 0.3s;
        }
        .top-nav ul li a:hover {
            color: #f8d210;
        }

        /* Header Section */
        #header {
            padding: 20px;
            color: white;
            font-size: 30px;
            font-weight: bold;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.7);
        }

        /* Navbar */
        .navbar {
            background-color: #007bff;
            border-radius: 0;
            margin: 0;
        }
        .navbar .nav > li > a {
            color: white;
            font-weight: bold;
            transition: 0.3s;
        }
        .navbar .nav > li > a:hover {
            color: #f8d210;
            background-color: transparent;
        }

        /* Footer */
        .footer {
            background: #343a40;
            color: white;
            text-align: center;
            padding: 15px;
            margin-top: 30px;
        }
    </style>
</head>
<body>

<!-- Top Navigation -->
<nav class="top-nav">
    <ul>
        <li><a href="home/Login.jsp">Log In</a></li>
        <li><a href="home/AdminLogin.jsp">Admin</a></li>
    </ul>
</nav>

<!-- Header Section -->
<div id="header">
    Travel Planner
</div>

<!-- Navigation Bar -->
<div id="navbar">
    <nav class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
            <ul class="nav navbar-nav">
                <li><a href="Home.jsp">Home</a></li>
                <li><a href="home/About.jsp">About</a></li>
                <li><a href="home/Services.jsp">Services</a></li>
                <li><a href="home/Contact.jsp">Contact</a></li>
            </ul>
        </div>
    </nav>
</div>


</body>
</html>
