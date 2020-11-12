<%@page import="crud.basic.Karthi"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Available Bus's</title>
<link rel="stylesheet" href="styles/coach.css">
</head>
<body>
<%List<Karthi> every=(List<Karthi>)request.getAttribute("all"); %>
<div align="center">
<table class="list" border="4" cellpadding="4" cellspacing="4">
<tr id="head">
<th>Registration Number</th><th>Travels Name</th><th>Origin</th><th>Destination</th>
<th>Amenities</th><th>Bus Type/Class</th><th>Number of Seats</th>
<th>Cost per Seat</th><th>Actions</th>
</tr>
<%for(Karthi yet:every) {%>
<tr>
<td><%=yet.getRegno() %></td><td><%=yet.getTravels() %></td>
<td><%=yet.getOrigin() %></td><td><%=yet.getStop() %></td>
<td><%=yet.getAm() %></td><td><%=yet.getType() %></td>
<td><%=yet.getSeats() %></td><td><%=yet.getPrice() %></td>
<td>
<ol type="A" id="event">
<li><a href="edit?single=<%=yet.getRegno()%>">Edit</a></li>
<li><a href="#">Delete</a></li>
</ol>
</td>
</tr>
<%} %>
</table>
<h2><a href="home.jsp">Back to Home</a></h2>
<h2><a href="#">Click to logout</a></h2>
</div>
</body>
</html>