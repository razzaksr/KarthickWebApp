<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home of Travel</title>
</head>
<body>
<% 
response.addHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.addHeader("Pragma", "no-cache");
response.addHeader("Expiry", "0");
String hai=(String)session.getAttribute("who"); 
if(hai!=null){%>
<h1>Welcome <%=hai %> to the HOME</h1>
<% 
for(Cookie c:request.getCookies())
{
	out.print(c.getName()+" "+c.getValue());
}
String in=(String)request.getAttribute("info"); 
if(in!=null){%>
<h3><%=in %> Updated</h3>
<%} %>
<div align="center">
<table cellpadding="4" cellspacing="4">
<tr>
<td><a href="create.jsp">Adding new coach</a></td>
<td><a href="view">Listing all coach</a></td>
<td><a href="shortlist.jsp">Find coach</a></td>
<td><a href="away">Logout</a></td>
</tr> 
</table>
</div>
<%} 
else{
response.sendRedirect("index.jsp");}%>
</body>
</html>