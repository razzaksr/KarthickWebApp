<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Second Page</title>
</head>
<body>
<%@taglib uri="/WEB-INF/c.tld" prefix="cr"%>
<cr:set var="basic" value="${param.one }"/>
<cr:set var="all" value="${param.two }"/>
<cr:out value='${basic }'/><cr:out value='${all }'/>
<cr:choose>
<cr:when test="${all le 5 }">
<cr:out value="${basic+(basic*all)/100 }"/>
</cr:when>
<cr:when test="${all gt 5 && all le 7 }">
<cr:out value="${basic+(basic*(all+0.50))/100 }"/>
</cr:when>
<cr:otherwise>
<cr:out value="${'CTC Same as basic'}"/>
</cr:otherwise>
</cr:choose>
<cr:catch var="err">
<%int[] make={12,45,88};%>
<%=make[3] %>
</cr:catch>
<cr:out value="${err }"></cr:out>
<cr:remove var="basic"/>
<cr:out value="${basic }"/><cr:out value="${all }"/>
<cr:forEach var="hai" begin="1" end="10">
<cr:out value="Zealous "/>
</cr:forEach>
</body>
</html>