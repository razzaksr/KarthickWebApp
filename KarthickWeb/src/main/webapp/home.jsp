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
if(hai!=null){
out.println("<h1>Welcome "+hai+" to the HOME</h1>");
for(Cookie c:request.getCookies())
{
	out.print(c.getName()+" "+c.getValue());
}
String in=(String)request.getAttribute("info"); 
if(in!=null){
out.println("<h3>"+in+" Updated</h3>");
} 
this.log("Home visted by successfull login");
pageContext.setAttribute("macro","RedBus",PageContext.PAGE_SCOPE);
pageContext.setAttribute("micro","GoIbBo",PageContext.APPLICATION_SCOPE);
pageContext.setAttribute("ultra","JustDial",PageContext.SESSION_SCOPE);
pageContext.setAttribute("delux","Torrent",PageContext.REQUEST_SCOPE);
%>
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
<%
out.println("Verifying the PageScope: "+pageContext.getAttribute("macro"));
out.println("Verifying the RequestScope: "+pageContext.getAttribute("delux",PageContext.REQUEST_SCOPE));
out.println("Verifying the SessionScope: "+pageContext.getAttribute("ultra",PageContext.SESSION_SCOPE));
out.println("Verifying the ApplicationScope: "+pageContext.getAttribute("micro",PageContext.APPLICATION_SCOPE));
out.println("<br>"+config.getInitParameter("scooby"));
out.println("<br>"+application.getInitParameter("app"));
} 
else{
response.sendRedirect("index.jsp");}%>
</body>
</html>