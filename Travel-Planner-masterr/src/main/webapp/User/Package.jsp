<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
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
<title>Book Package</title>
</head>
<body>
<script type="text/javascript">
$(document).ready(function(){
	$('#cost').change(function(){
		var cost =$('#cost').find('option:selected').text();
		$('#cost').show();
		$.ajax({
			type:'POST',
			data:{ cost:cost},
			url:'../SelectPackage',
			success: function(result){
				window.location.href ="../User/Package.jsp";
			}
		});	
	});
});

</script>

<%@ include file ="Header.jsp" %>
<%@ include file ="Aside.jsp" %>
	<section class="section">
		<div class="sectiondev">
		<h3>Book Package</h3>
			<div class="col-sm-12">
				<div class="col-sm-4">
					<div class="form-group">
						<div class="text-right">
			    		Select package according to your budget(INR):
			    		</div>
			    	</div>
			    </div>
			    <div class="col-sm-3">
			    	<div class="form-group">
			    		<%
			    		try {
			    			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/travelplanner","root","mitesh");
			    			PreparedStatement ps = con.prepareStatement("select DISTINCT cost from package;");
			    			ResultSet rs = ps.executeQuery();
			    		%>
			    			<select name="cost" id="cost" class="form-control">
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
			<table class="table table-striped" id="packagetable">
				<thead>
					<tr>
					<th>Package Name</th>
					<th>Place</th>
					<th>No of Days</th>
					<th>Cost</th>
					<th>Book</th>
					</tr>
				</thead>
				<tbody>
					<%
					  try{
					    	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/travelplanner","root","mitesh");
					    	PreparedStatement ps = con.prepareStatement("select * from package where cost='"+session.getAttribute("cost1")+"'");
					    	session.setAttribute("cost1",null);
					    	ResultSet rs = ps.executeQuery();
					    	while(rs.next()){ %>
					    	<tr>
					    	<td><%=rs.getString(2) %></td>
					    	<td><%=rs.getString(3) %></td>
					    	<td><%=rs.getString(5) %></td>
					    	<td><%=rs.getString(4) %></td>
					    	<td><a href="../UpdatePackage?package=<%=rs.getString(2) %>&place=<%=rs.getString(3)%>&type=book ">Book</a></td>
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