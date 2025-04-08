<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
    <title>Add Discount</title>

    <style>
        body {
            background: url("../home/bg.jpg") no-repeat center center/cover;
            background-size: cover;
            font-family: 'Arial', sans-serif;
            color: #fff;
        }
        .section {
            padding: 50px 0;
            background: url("../home/bg.jpg") no-repeat center center/cover;
            
        }
        .panel {
            background-color: rgba(0, 0, 0, 0.7);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
            color: #fff;
        }
        h2 {
            color: #28a745;
            font-size: 2em;
            margin-bottom: 20px;
            font-weight: bold;
        }
        .form-group label {
            color: #fff;
            font-weight: bold;
        }
        .form-control {
            background-color: #f8f9fa;
            border-radius: 5px;
            color: #333;
            font-size: 1.1em;
        }
        .btn-primary {
            background-color: #28a745;
            border: none;
            border-radius: 5px;
            padding: 12px 20px;
            font-size: 1.1em;
            transition: background-color 0.3s ease;
        }
        .btn-primary:hover {
            background-color: #218838;
        }
        .text-right {
            margin-top: 20px;
        }
        #validation {
            margin-top: 20px;
            color: #f44336;
        }
        .form-container {
            padding: 30px;
        }
        .col-sm-4 {
            margin-bottom: 15px;
        }
        .panel-body {
            padding: 20px;
        }
    </style>
    
    <script type="text/javascript">
        $(document).ready(function() {
            $('#addDiscount').click(function(){
                var packagename = $('#packagename').find('option:selected').text();
                var discount = $('#discount').val();
                $.ajax({
                    type: 'POST',
                    data: { packagename: packagename, discount: discount },
                    url: '../Discount',
                    success: function(result) {
                        $('#validation').html(result);
                    }
                });
            });
        });
    </script>
</head>

<body>
    <%@ include file="Header.jsp" %>
    <%@ include file="Aside.jsp" %>

    <section class="section">
        <div class="container">
            <h2>Add Discount</h2>
            <div class="panel col-sm-8 col-sm-offset-2">
                <div class="panel-body">
                    <form>
                        <div class="form-container">
                            <div class="col-sm-12">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Select Package:</label>
                                        <%
                                            try {
                                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/travelplanner", "root", "mitesh");
                                                PreparedStatement ps = con.prepareStatement("select DISTINCT packagename from package");
                                                ResultSet rs = ps.executeQuery();
                                        %>
                                        <select name="packagename" id="packagename" class="form-control">
                                            <%
                                                while(rs.next()) {
                                            %>
                                            <option value="<%= rs.getString(1) %>"><%= rs.getString(1) %></option>
                                            <%
                                                }
                                            %>
                                        </select>
                                        <%
                                            } catch (Exception e) {
                                                e.printStackTrace();
                                            }
                                        %>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Enter Discount:</label>
                                        <input class="form-control" type="text" id="discount" name="discount" required="true">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group text-right">
                                <input type="button" id="addDiscount" value="Add Discount" class="btn btn-primary">
                            </div>
                        </div>
                        <div id="validation"></div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <%@ include file="../home/Footer.jsp" %>
</body>
</html>
