<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><%out.println(config.getInitParameter("Sign")); %></h1>
<jsp:forward page="actionOne.jsp">
<jsp:param name="work" value="Zealous Tech Corp"></jsp:param>
</jsp:forward>
</body>
</html>