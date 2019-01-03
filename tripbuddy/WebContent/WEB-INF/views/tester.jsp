<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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

<h2>Trip Data</h2>
 <c:forEach var="trip" items="${trips}" >
                <tr>
                   
     <tr>
      
      <td>${trip.uname}</td> 
      <td>${trip.source}</td>
      <td>${trip.destination}</td>
      <td>${trip.cost }</td>
      <td>${trip.duration }</td>
      <td>${trip.members }</td>
      <td>${trip.info }</td>
      <td>${trip.timestamp }</td>
      </tr>
      </c:forEach>
</body>
</html>