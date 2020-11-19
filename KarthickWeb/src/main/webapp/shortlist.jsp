<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shortlist Bus's</title>
</head>
<body>
<% 
response.addHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.addHeader("Pragma", "no-cache");
response.addHeader("Expiry", "0");
String hai=(String)session.getAttribute("who"); 
if(hai!=null){%>
<h1>Welcome <%=hai %></h1>
<div align="center">
<form action="find" method="post">
<h2>Read the Bus's Via following conditions</h2>
<table>
<tr><td><input type="text" name="regno"></td></tr>
<tr><td>OR</td></tr>
<tr><td>
<select name="type">
<option>Select class</option>
<option>Ultra Delux</option>
<option>Semi Sleeper</option>
<option>Sleeper</option>
<option>AC Sleeper</option>
</select>
</td></tr>
<tr><td>OR</td></tr>
<tr><td><input type="text" name="start"></td></tr>
<tr><td>OR</td></tr>
<tr><td><input type="text" name="end"></td></tr>
<tr>
<td><input type="submit" value="Filter"></td>
<td><input type="reset" value="Clean"></td>
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