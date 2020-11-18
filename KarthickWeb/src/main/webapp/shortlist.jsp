<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shortlist Bus's</title>
</head>
<body>
<div align="center">
<form action="find" method="post">
<h2>Get the buses as per your requirement</h2>
<table>
<tr><td><input type="text" name="start"></td></tr>
<tr><td><input type="text" name="end"></td></tr>
<tr><td>
<select name="type">
<option>Select class</option>
<option>Ultra Delux</option>
<option>Semi Sleeper</option>
<option>Sleeper</option>
<option>AC Sleeper</option>
</select>
</td></tr>
<tr>
<td><input type="submit" value="Shortlist"></td>
<td><input type="reset" value="Clean"></td>
</tr>
</table>
</form>
<h2><a href="home.jsp">Back to Home</a></h2>
<h2><a href="#">Click to logout</a></h2>
</div>
</body>
</html>