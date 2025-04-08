<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="Login.css">
    <link rel="stylesheet" type="text/css" href="Home.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <title>Admin Login</title>
    <style>
        body {
            background: linear-gradient(to right, #4A90E2, #50C9C3);
            font-family: 'Poppins', sans-serif;
            color: #fff;
        }
        .panel-login {
            background: rgba(255, 255, 255, 0.2);
            border-radius: 15px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.3);
            padding: 30px;
        }
        .panel-heading a {
            font-size: 24px;
            font-weight: bold;
            color: white;
            text-decoration: none;
        }
        .form-control {
            border-radius: 8px;
        }
        .btn-login {
            background: linear-gradient(to right, #FF416C, #FF4B2B);
            color: black;
            font-size: 16px;
            font-weight: bold;
            border-radius: 8px;
            transition: 0.3s;
        }
        .btn-login:hover {
            background: linear-gradient(to right, #FF4B2B, #FF416C);
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.3);
        }
        #validation {
            color: #FFEB3B;
            font-weight: bold;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <script type="text/javascript">
        $(document).ready(function(){
            $('#button').click(function(){
                var name = $('#username').val();
                var pass =$('#password').val();
                $.ajax({
                    type:'POST',
                    data:{ email:name, password:pass},
                    url:'../AdminLogin',
                    success: function(result){
                        if(result!= "invalid"){
                            window.location.href ="../Admin/Admin.jsp";
                        }else{
                            $('#validation').html(result);
                        }
                    }
                });    
            });
        });
    </script>
    <%@ include file ="Header.jsp" %>
    <div id="login">
        <div class="container" style="padding-top:100px;">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <div class="panel panel-login">
                        <div class="panel-heading text-center">
                            <a class="active">Admin Login</a>
                        </div>
                        <div class="panel-body">
                            <form>
                                <div class="form-group">
                                    <input type="text" name="email" id="username" class="form-control" placeholder="Email ID" required>
                                </div>
                                <div class="form-group">
                                    <input type="password" name="password" id="password" class="form-control" placeholder="Password" required>
                                </div>
                                <div class="form-group text-center">
                                    <input type="button" id="button" class="btn btn-login" value="Log In">
                                </div>
                                <div id="validation" class="text-center"></div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="Footer.jsp" %>
</body>
</html>
