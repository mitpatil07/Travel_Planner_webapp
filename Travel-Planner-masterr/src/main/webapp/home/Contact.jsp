<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="Home.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us</title>
</head>
<body>
<%@ include file ="Header.jsp" %>
 <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .container:hover {
            transform: scale(1.02);
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.2);
        }
        h3 {
            font-size: 28px;
            text-transform: uppercase;
            color: white;
            padding: 15px;
            background: linear-gradient(90deg, #007BFF, #00C6FF);
            border-radius: 10px;
            display: inline-block;
            box-shadow: 0 4px 10px rgba(0, 198, 255, 0.3);
        }
        .contact-info {
            margin-top: 20px;
        }
        .contact-info div {
            display: flex;
            align-items: center;
            margin: 15px 0;
            padding: 12px;
            border-radius: 8px;
            background: #f9f9f9;
            transition: background 0.3s ease;
        }
        .contact-info div:hover {
            background: #e8f0ff;
        }
        .contact-info i {
            color: #007BFF;
            font-size: 22px;
            margin-right: 15px;
        }
        .contact-info p {
            font-size: 16px;
            margin: 0;
            color: #333;
            font-weight: 500;
        }
        .contact-button {
            display: inline-block;
            margin-top: 20px;
            padding: 12px 25px;
            font-size: 16px;
            color: white;
            background: #007BFF;
            border: none;
            border-radius: 8px;
            text-decoration: none;
            box-shadow: 0 4px 10px rgba(0, 123, 255, 0.2);
            transition: background 0.3s ease, transform 0.2s ease;
        }
        .contact-button:hover {
            background: #0056b3;
            transform: scale(1.05);
        }
        @media (max-width: 768px) {
            .container {
                width: 90%;
                padding: 20px;
            }
            .contact-info div {
                flex-direction: column;
                align-items: flex-start;
            }
            .contact-info i {
                margin-bottom: 5px;
            }
        }
    </style>
<div class="container">
        <h3>Contact Us</h3>
        <div class="contact-info">
            <div>
                <i class="fas fa-building"></i>
                <p><strong>Travel Planner</strong></p>
            </div>
            <div>
                <i class="fas fa-map-marker-alt"></i>
                <p>124, Paud Rd, Kothrud, Pune, Maharashtra</p>
            </div>
            <div>
                <i class="fas fa-envelope"></i>
                <p>mitesh8767@gmail.com</p>
            </div>
        </div>
        <a href="mailto:mitesh8767@gmail.com" class="contact-button">Contact Us</a>
    </div>
<%@ include file="Footer.jsp" %>
</body>
</html>