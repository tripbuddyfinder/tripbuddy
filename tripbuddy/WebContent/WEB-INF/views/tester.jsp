<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Ohhhhhh Yeahhhhhh</h2>
<%
String asession=(String)session.getAttribute("admin");
String usession=(String)session.getAttribute("fbsession");
out.print("Admin Session Name:"+asession);
out.println("USer Session Name:"+usession);

%>
</body>
</html>