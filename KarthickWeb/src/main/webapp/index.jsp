<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignIn to travels</title>
</head>
<body>
<% String hai=(String)request.getAttribute("info"); 
if(hai!=null){%>
<h3 style="color:red;"><%=hai %></h3>
<%} %>
<div align="center">
<form action="log" method="post">
<table cellpadding="4" cellspacing="4">
<tr>
<td>User name for SignIn</td>
<td><input type="text" name="user" placeholder="username here"></td>
</tr>
<tr>
<td>Password for SignIn</td>
<td><input type="password" name="pass" placeholder="password here"></td>
</tr>
<tr>
<td><input type="submit" value="SignIn"></td>
<td><input type="reset" value="Clear"></td>
</tr>
</table>
</form>
</div>
</body>
</html>