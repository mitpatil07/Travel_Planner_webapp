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
<title>Services</title>
</head>
<body>
<%@ include file ="Header.jsp" %>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 1100px;
            margin: 50px auto;
            text-align: center;
            padding: 20px;
        }
		h3 {
		    color: white;
		    font-size: 32px;
		    margin-bottom: 20px;
		    text-transform: uppercase;
		    text-align: center;
		    padding: 15px 25px;
		    border-radius: 10px;
		    box-shadow: 0 5px 15px rgba(0, 198, 255, 0.3);
		    display: inline-block;
		    background: linear-gradient(90deg, #007BFF, #00C6FF);
		    animation: glowing 2s infinite alternate;
		}
		
		/* Animation for glowing effect */
		@keyframes glowing {
		    0% {
		        box-shadow: 0 0 10px rgba(0, 198, 255, 0.5);
		    }
		    100% {
		        box-shadow: 0 0 20px rgba(0, 198, 255, 0.9);
		    }
		}


        .services {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }
        .service-card {
            background: white;
            padding: 25px;
            width: 250px;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            text-align: center;
        }
        .service-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
        }
        .service-card i {
            font-size: 40px;
            color: #007BFF;
            margin-bottom: 15px;
        }
        .service-card h4 {
            font-size: 20px;
            margin-bottom: 10px;
            color: #333;
        }
        .service-card p {
            color: #555;
            font-size: 14px;
            line-height: 1.6;
        }
        @media (max-width: 768px) {
            .services {
                flex-direction: column;
                align-items: center;
            }
            .service-card {
                width: 90%;
            }
        }
    </style>
    <div class="container">
        <h3>Our Services</h3>
        <div class="services">
            <div class="service-card">
                <i class="fas fa-globe"></i>
                <h4>Custom Packages</h4>
                <p>Create your own travel package with destinations of your choice.</p>
            </div>
            <div class="service-card">
                <i class="fas fa-hotel"></i>
                <h4>Hotels & Rooms</h4>
                <p>Choose from AC & Non-AC rooms in single or double sizes.</p>
            </div>
            <div class="service-card">
                <i class="fas fa-utensils"></i>
                <h4>Food & Dining</h4>
                <p>Enjoy delicious Veg & Non-Veg meals during your trip.</p>
            </div>
            <div class="service-card">
                <i class="fas fa-bus"></i>
                <h4>Transport</h4>
                <p>Pick from a range of transport options, including cars and buses.</p>
            </div>
        </div>
    </div>
<%@ include file="Footer.jsp" %>
</body>
</html>