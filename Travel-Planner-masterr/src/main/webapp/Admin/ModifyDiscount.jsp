<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
    <title>Modify/ Delete Discount</title>

    <script type="text/javascript">
        $(document).ready(function(){
            $('#discountfield').hide();
            $('#update').hide();

            $('#modify').click(function(){
                var packagename = $('#packagename').find('option:selected').text();
                var type = "modify";
                $('#discountfield').show();
                $('#modify').hide();
                $('#delete').hide();
                $('#update').show();

                $.ajax({
                    type: 'POST',
                    data: { packagename: packagename, type: type },
                    url: '../ModifyDiscount',
                    success: function(result) {
                        $('#discount').val(result);
                    }
                });
            });

            $('#update').click(function(){
                var packagename = $('#packagename').find('option:selected').text();
                var discount = $('#discount').val();
                var type = "update";
                
                if (discount === "" || isNaN(discount) || discount < 0 || discount > 100) {
                    $('#validation').html("<p class='alert alert-danger'>Please enter a valid discount between 0 and 100.</p>");
                    return;
                }

                $.ajax({
                    type: 'POST',
                    data: { packagename: packagename, type: type, discount: discount },
                    url: '../ModifyDiscount',
                    success: function(result) {
                        $('#validation').html(result);
                        $('#discount').val(''); // Reset the discount field
                    },
                    error: function() {
                        $('#validation').html("<p class='alert alert-danger'>An error occurred while updating the discount.</p>");
                    }
                });
            });

            $('#delete').click(function(){
                var packagename = $('#packagename').find('option:selected').text();
                var type = "deleteDiscount";

                $.ajax({
                    type: 'POST',
                    data: { packagename: packagename, type: type },
                    url: '../ModifyDiscount',
                    success: function(result) {
                        alert(result);
                        window.location.href = "../Admin/ModifyDiscount.jsp"; // Reload the page
                    },
                    error: function() {
                        alert("An error occurred while deleting the discount.");
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
        <div class="sectiondev">
            <div class="container">
                <h2>Modify / Delete Discount</h2>
                <div class="panel col-sm-10">
                    <div class="panel-body">
                        <div class="row">
                            <form>
                                <div class="col-sm-8">
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            Select Package:
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <%
                                                try {
                                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/travelplanner", "root", "mitesh");
                                                    PreparedStatement ps = con.prepareStatement("SELECT packagename FROM discount");
                                                    ResultSet rs = ps.executeQuery();
                                            %>
                                            <select name="packagename" id="packagename" class="form-control">
                                                <% while(rs.next()) { %>
                                                    <option value="<%= rs.getString(1) %>"><%= rs.getString(1) %></option>
                                                <% } %>
                                            </select>
                                            <% } catch (Exception e) {
                                                    e.printStackTrace();
                                                }
                                            %>
                                        </div>
                                    </div>
                                </div>

                                <div id="discountfield">
                                    <div class="col-sm-8">
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                Enter Discount:
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <input class="form-control" type="text" id="discount" name="discount" required="true">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-8">
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                            <div class="text-center">
                                                <input type="button" id="modify" value="Modify" class="btn btn-primary">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-sm-3">
                                        <div class="form-group">
                                            <input type="button" id="delete" value="Delete" class="btn btn-danger">
                                        </div>
                                    </div>

                                    <div class="col-sm-2">
                                        <div class="form-group">
                                            <div class="text-left">
                                                <input type="button" id="update" value="Update" class="btn btn-success">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-8">
                                    <div id="validation"></div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%@ include file="../home/Footer.jsp" %>
</body>
</html>
