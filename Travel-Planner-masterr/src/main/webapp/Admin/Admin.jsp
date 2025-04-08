<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome to Admin</title>

    <!-- Bootstrap 3 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="../home/Aside.css">
    <link rel="stylesheet" type="text/css" href="../home/Home.css">

    <!-- jQuery and Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style>
        /* Section Styling */
.section {
    text-align: center;
    padding: 40px 20px;
    background: url("b.jpg"); /* Missing semicolon fixed */
    color: black;
    border-radius: 10px;
    margin: 20px auto;
    width: 80%;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
    background-size: cover; /* Ensures image covers the section */
    background-position: center; /* Centers the image */
    background-repeat: no-repeat; /* Prevents tiling */
}


        .section h3 {
            font-size: 28px;
            font-weight: bold;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.2);
        }

        /* Responsive Adjustments */
        @media (max-width: 768px) {
            .section {
                width: 95%;
                font-size: 18px;
            }
        }
    </style>
</head>
<body>

<!-- Include Header & Sidebar -->
<%@ include file="Header.jsp" %>
<%@ include file="Aside.jsp" %>  

<!-- Admin Welcome Section -->
<section class="section">
    <div class="sectiondev">
        <h3>Welcome to Admin Dashboard</h3>
    </div>
</section>

<!-- Include Footer -->
<%@ include file="../home/Footer.jsp" %>

</body>
</html>
