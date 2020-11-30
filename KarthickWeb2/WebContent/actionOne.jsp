<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Action Tags</title>
</head>
<body>
${ param.work}
<form action="actionTwo.jsp">
<input type="text" name="name" placeholder="Enter the name of the product">
<input type="text" name="qty" placeholder="Quantity">
<input type="text" name="price" placeholder="Cost">
<input type="submit" value="Add to Stock">
</form>
</body>
</html>