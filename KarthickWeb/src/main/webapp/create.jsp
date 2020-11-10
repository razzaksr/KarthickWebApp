<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adding new Bus to Portal</title>
<script type="text/javascript" src="scripts/valid.js"></script>
<style type="text/css">
h1{color:blue;background-color: maroon;}
.add{background-color: aqua;}
</style>
</head>
<body style="background-image: url('images/one.png'); background-position: center; position: relative;">
<%String ck=(String)request.getAttribute("info"); 
if(ck!=null){%>
<%=ck %>
<%} %>
<div align="center" class="add">
<h1>Create New Bus</h1>
<form name="create" action="add" method="post">
<table cellpadding="4" cellspacing="4">
<tr>
<td>Enter the Registration number of the Bus</td>
<td><input type="text" name="regno"></td>
</tr>
<tr>
<td>Enter the Travel company of the Bus</td>
<td><input type="text" name="travels"></td>
</tr>
<tr>
<td>Enter the Origin of the Bus</td>
<td><input type="text" name="origin"></td>
</tr>
<tr>
<td>Enter the End point of the Bus</td>
<td><input type="text" name="stop"></td>
</tr>
<tr>
<td>Enter the amenities offered by the Bus</td>
<td><input type="text" name="am"></td>
</tr>
<tr>
<td>Enter the TYPE of the Bus</td>
<td>
<input type="radio" name="type" value="Sleeper">Sleeper
<input type="radio" name="type" value="Semi Sleeper">Semi Sleeper
<input type="radio" name="type" value="Ultra Delux">Ultra Delux
<input type="radio" name="type" value="AC Sleeper">AC Sleeper
</td>
</tr>
<tr>
<td>Enter the count of seats in the Bus</td>
<td>
<select name="seats">
<option>Select count of seats</option>
<option>30</option>
<option>35</option>
<option>36</option>
<option>40</option>
<option>42</option>
</select>
</td>
</tr>
<tr>
<td>Enter the Price of each seat</td>
<td><input type="text" name="price"></td>
</tr>
<tr>
<td><input type="submit" value="Add"></td>
<td><input type="reset" value="clear"></td>
<td><input type="button" value="Check" onclick="valid()"></td>
</tr>
</table>
</form>
<p id="status"></p>
<h2><a href="home.jsp">Back to Home</a></h2>
<h2><a href="#">Click to logout</a></h2>
</div>
</body>
</html>