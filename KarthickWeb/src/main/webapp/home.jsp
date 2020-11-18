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
<% String in=(String)request.getAttribute("info"); 
if(in!=null){%>
<h1>Welcome <%=in %> to the HOME</h1>
<%} %>
<div align="center">
<table cellpadding="4" cellspacing="4">
<tr>
<td><a href="create.jsp">Adding new coach</a></td>
<td><a href="view">Listing all coach</a></td>
<td><a href="shortlist.jsp">Find coach</a></td>
<td><a href="#">Logout</a></td>
</tr> 
</table>
</div>
</body>
</html>