<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Dashboard - Travel Planner</title>

    <!-- Bootstrap 3 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery and Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- Custom Styles -->
    <style>
        /* General Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        /* Top Navigation */
        .top-nav {
            background: linear-gradient(to right, #343a40, #007bff);
            padding: 10px;
            text-align: right;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        }
        .top-nav ul {
            list-style: none;
            margin: 0;
            padding: 0;
        }
        .top-nav ul li {
            display: inline;
            margin: 0 15px;
            color: white;
            font-size: 16px;
            font-weight: bold;
        }
        .top-nav ul li a {
            color: white;
            text-decoration: none;
            transition: 0.3s;
        }
        .top-nav ul li a:hover {
            color: #f8d210;
            text-decoration: underline;
        }

        /* Header Section */
        #header {
            padding: 50px;
            text-align: center;
            color: white;
            font-size: 35px;
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

        /* Welcome Message */
        .welcome {
            text-align: center;
            font-size: 22px;
            font-weight: bold;
            margin-top: 20px;
            color: #343a40;
        }
    </style>
</head>
<body>

<!-- Top Navigation -->
<nav class="top-nav">
    <ul>
        <li><a href="../home/Login.jsp">Log Out</a></li>
        <li>Hello Admin</li>
    </ul>
</nav>

<!-- Header Section -->
<div id="header">
    Travel Planner - Admin Dashboard
</div>

<!-- Navigation Bar -->
<div id="navbar">
    <nav class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
            <ul class="nav navbar-nav">
                <li><a>Welcome to Travel Planner</a></li>
            </ul>
        </div>
    </nav>
</div>

<!-- Welcome Message -->
<div class="welcome">
    Manage Users, Plans, and Bookings Efficiently!
</div>

</body>
</html>
