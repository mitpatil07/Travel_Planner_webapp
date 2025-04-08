<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../home/Aside.css">
    <link rel="stylesheet" type="text/css" href="../home/Home.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Add Hotel</title>

    <style>
        .section {
            text-align: center;
            padding: 40px 20px;
            background: url("../home/bg.jpg") no-repeat center center/cover;
            color: white;
            border-radius: 10px;
            margin: 20px auto;
            width: 80%;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        }

        .form-container {
            background: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
            max-width: 500px;
            margin: auto;
        }

        .btn-primary {
            background: #007BFF;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            transition: 0.3s;
        }

        .btn-primary:hover {
            background: #0056b3;
        }

        .form-group label {
            font-weight: bold;
            color: #333;
        }

        .delete-hotel {
            display: block;
            margin-top: 10px;
            text-align: right;
            font-size: 14px;
            color: #d9534f;
            text-decoration: none;
        }

        .delete-hotel:hover {
            text-decoration: underline;
        }
    </style>

    <script type="text/javascript">
        $(document).ready(function(){
            $('#button').click(function(){
                var hotelName = $('#hotelName').val().trim();

                if (hotelName === "") {
                    $('#validation').html('<span style="color:red;">Hotel Name is required!</span>');
                    return;
                }

                $.ajax({
                    type:'POST',
                    data:{ hotelName:hotelName },
                    url:'../Hotel',
                    success: function(result){
                        $('#validation').html('<span style="color:green;">' + result + '</span>');
                        $('#hotelName').val("");  // Clear input field on success
                    }
                });    
            });
        });
    </script>
</head>
<body>

<%@ include file ="Header.jsp" %>
<%@ include file ="Aside.jsp" %>

<section class="section">
    <div class="container form-container">
        <h2>Add Hotel</h2>
        <form>
            <div class="form-group">
                <label>Hotel Name:</label>
                <input class="form-control" type="text" id="hotelName" name="hotelName" required>
            </div>

            <div class="form-group text-right">
                <button type="button" id="button" class="btn btn-primary">Add Hotel</button>
            </div>

            <a href="DeleteHotel.jsp" class="delete-hotel">Delete Hotel?</a>

            <div id="validation"></div>
        </form>
    </div>
</section>

<%@ include file="../home/Footer.jsp" %>

</body>
</html>
