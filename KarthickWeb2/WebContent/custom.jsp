<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Custom Tag Demo</title>
</head>
<body>
<%@taglib uri="/WEB-INF/karthi.tld" prefix="k"%>
<k:namakkal/>
<k:fetchOne reg="tn54l4194"/>
<k:consider min="500" max="1000">KArthi Trying to find coach</k:consider>
</body>
</html>