<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="../home/Aside.css">
<link rel="stylesheet" type="text/css" href="../home/Home.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Transport</title>
</head>
<body>
<script type="text/javascript">
$(document).ready(function(){
	$('#transportType').change(function(){
		var transportType =$('#transportType').find('option:selected').text();
		$.ajax({
			type:'POST',
			data:{ transportType:transportType},
			url:'../SelectTransport',
			success: function(result){
				window.location.href ="../User/Transport.jsp";
			}
		});	
	});
});

</script>

<%@ include file ="Header.jsp" %>
<%@ include file ="Aside.jsp" %>
	<section class="section">
		<div class="sectiondev">
		<h3>Book Transport</h3>
			<div class="col-sm-12">
				<div class="col-sm-4">
					<div class="form-group">
						<div class="text-right">
			    		Select Transport Type:
			    		</div>
			    	</div>
			    </div>
			    <div class="col-sm-3">
			    	<div class="form-group">
			    		<%
			    		try {
			    			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/travelplanner","root","mitesh");
			    			PreparedStatement ps = con.prepareStatement("select DISTINCT transportType from transport");
			    			ResultSet rs = ps.executeQuery();
			    		%>
			    			<select name="transportType" id="transportType" class="form-control">
			    			<option value="select">select</option>
			    			<%while(rs.next()){ %>
			    				<option value="<%=rs.getString(1)%>" ><%=rs.getString(1) %></option>
			    			<%} %>
			    			</select>
			    			<% 
			    			}
			    		catch (Exception e) {
			    			e.printStackTrace();
			    			}%>
			    	</div>
				</div>
			</div>
			<table class="table table-striped">
				<thead>
					<tr>
					<th>Transport Type</th>
					<th>Vehicle Type</th>
					<th>Vehicle Name</th>
					<th>Cost</th>
					<th>Book</th>
					</tr>
				</thead>
				<tbody>
					<%
					  try{
						  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/travelplanner","root","mitesh");
					    	PreparedStatement ps = con.prepareStatement("select * from transport where transportType='"+session.getAttribute("transportType")+"'");
					    	session.setAttribute("transportType",null);
					    	ResultSet rs = ps.executeQuery();
					    	while(rs.next()){ %>
					    	<tr>
					    	<td><%=rs.getString(1) %></td>
					    	<td><%=rs.getString(2) %></td>
					    	<td><%=rs.getString(3) %></td>
					    	<td><%=rs.getString(4) %></td>
					    	<td><a href="../UpdateTransport?transportType=<%=rs.getString(1) %>&vehicleType=<%=rs.getString(2)%>&vehicleName=<%=rs.getString(3)%>&type=book ">Book</a></td>
					    	</tr>
					    	<%} %>
					    	<% 
					    	}
					    	catch (Exception e) {
					    		e.printStackTrace();
					    	}%>
				</tbody>
			</table>
		</div>	
	</section>
<%@ include file="../home/Footer.jsp" %>
</body>
</html>