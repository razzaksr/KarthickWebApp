<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Second Page</title>
</head>
<body>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="cr"%>
<cr:set var="basic" value="25"/>
<cr:set var="all" value="8"/>
${basic }${all }
<cr:if test="${basic != 0 && all != 0}">
<cr:choose>
<cr:when test="${all <= 5 }">
<cr:out value="${basic+(basic*all)/100 }"/>
</cr:when>
<cr:when test="${all > 5 && all<=7 }">
<cr:out value="${basic+(basic*(all+0.50))/100 }"/>
</cr:when>
<cr:otherwise>
<cr:out value="${'CTC Same as basic'}"/>
</cr:otherwise>
</cr:choose>
</cr:if>
<cr:catch var="err">
<%=100/0 %>
</cr:catch>
<cr:remove var="basic "/>
<cr:out value="${basic }"/><cr:out value="${all }"/>
<cr:forEach var="hai" begin="1" end="10">
<cr:out value="Zealous "/>
</cr:forEach>
</body>
</html>