<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="Header.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback</title>
</head>
<body>
<form action="" >
<input type="hidden" name="uid" value="<%=session.getAttribute("uid")%>">
<input type="text" name="sub">
<input type="text" name="desc">
<button type="submit">Give Feedback</button>
</form>
<%@include file="Footer.jsp" %>
</body>
</html>
