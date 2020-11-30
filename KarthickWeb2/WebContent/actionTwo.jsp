<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean class="serv.Product" id="pro"></jsp:useBean>
<jsp:setProperty name="pro" property="*"/>
<%-- <jsp:setProperty name="pro" property="name"/>
<jsp:setProperty name="pro" property="qty"/>
<jsp:setProperty name="pro" property="price"/> --%>

<h1>Verify</h1>
<jsp:getProperty name="pro" property="name"></jsp:getProperty>
<jsp:getProperty name="pro" property="qty"></jsp:getProperty>
<jsp:getProperty name="pro" property="price"></jsp:getProperty>
<jsp:include page="initOne.jsp"></jsp:include>
</body>
</html>