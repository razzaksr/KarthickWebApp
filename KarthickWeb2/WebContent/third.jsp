<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Data base Actions</title>
</head>
<body>
<%@taglib uri="/WEB-INF/c.tld" prefix="cr"%>
<%@taglib uri="/WEB-INF/sql.tld" prefix="s"%>
<div align="center">
<h1>Data base connection via JSTL</h1>
<s:setDataSource var="connect" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/test"
user="root" password=""/>
<s:query dataSource="${connect }" sql="select * from karthi" var="info"/>
<table border="4" cellpadding="4" cellspacing="4">
<tr id="head">
<th>Registration Number</th>
<th>Travels Name</th>
<th>Origin</th>
<th>Destination</th>
<th>Amenities</th>
<th>Bus Type/Class</th>
<th>Number of Seats</th>
<th>Cost per Seat</th>
</tr>
<cr:forEach var="hai" items="${info.rows }">
<tr>
<td>${hai.regno }</td><td>${hai.travels }</td><td>${hai.origin }</td>
<td>${hai.stop }</td><td>${hai.am }</td><td>${hai.type }</td>
<td>${hai.seats }</td><td>${hai.price }</td>
</tr>
</cr:forEach>
</div>
</body>
</html>