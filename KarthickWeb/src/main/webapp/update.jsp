<%@page import="crud.basic.Karthi"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update existing Bus to Portal</title>
<style type="text/css">
h1{color:blue;background-color: maroon;}
.add{background-color: aqua;}
</style>
</head>
<body style="background-image: url('images/one.png'); background-position: center; position: relative;">
<% 
response.addHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.addHeader("Pragma", "no-cache");
response.addHeader("Expiry", "0");
String hai=(String)session.getAttribute("who"); 
if(hai!=null){%>
<h1>Welcome <%=hai %></h1>
<%Karthi kar=(Karthi)request.getAttribute("one");%>
<div align="center" class="add">
<h1>Update An Bus</h1>
<form name="createBus" action="update" method="post">
<table cellpadding="4" cellspacing="4">
<tr>
<td>Enter the Registration number of the Bus</td>
<td><input type="text" name="regno" value="<%=kar.getRegno() %>"></td>
</tr>
<tr>
<td>Enter the Travel company of the Bus</td>
<td><input type="text" name="travels" value="<%=kar.getTravels() %>"></td>
</tr>
<tr>
<td>Enter the Origin of the Bus</td>
<td><input type="text" name="origin" value="<%=kar.getOrigin() %>"></td>
</tr>
<tr>
<td>Enter the End point of the Bus</td>
<td><input type="text" name="stop" value="<%=kar.getStop() %>"></td>
</tr>
<tr>
<td>Enter the amenities offered by the Bus</td>
<td><input type="text" name="am" value="<%=kar.getAm() %>"></td>
</tr>
<tr>
<td>Enter the TYPE of the Bus</td>
<td><input type="text" name="type" value="<%=kar.getType() %>"></td>
</tr>
<tr>
<td>Enter the count of seats in the Bus</td>
<td><input type="text" name="seats" value="<%=kar.getSeats() %>"></td>
</tr>
<tr>
<td>Enter the Price of each seat</td>
<td><input type="text" name="price" value="<%=kar.getPrice() %>"></td>
</tr>
<tr>
<td><input type="submit" value="Update"></td>
<td><input type="reset" value="clear"></td>
</tr>
</table>
</form>
<h2><a href="home.jsp">Back to Home</a></h2>
<h2><a href="away">Click to logout</a></h2>
</div>
<%} 
else{
response.sendRedirect("index.jsp");}%>
</body>
</html>