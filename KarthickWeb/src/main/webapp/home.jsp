<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home of Travel</title>
</head>
<body>
<% String hai=(String)request.getAttribute("who"); 
if(hai!=null){%>
<h1>Welcome <%=hai %> to the HOME</h1>
<%} %>
<div align="center">
<table cellpadding="4" cellspacing="4">
<tr>
<td><a href="create.html">Adding new coach</a></td>
<td><a href="list.html">Listing all coach</a></td>
<td><a href="#">Logout</a></td>
</tr> 
</table>
</div>
</body>
</html>