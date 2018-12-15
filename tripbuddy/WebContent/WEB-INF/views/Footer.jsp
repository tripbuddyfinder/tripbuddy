<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<title>Footer</title>
<head>
	<c:set var="path" value="http://localhost:8080/tripbuddy/resources/"/>
  <link rel="stylesheet" href="${path}Homepage.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
<div style="background-color:black">
        <br><br>
        <p style="font-family: Bookman Old Style;  font-size: 20px; color:white; text-align: center; font-style: italic;">
            <b> Copyright &copy; 2018 Trip Buddy Finder</b>
        </p>
        <br>
    </div>
    <h2><a href="./privacy">Privacy</a></h2>
    <h2><a href="./terms-and-condition">Terms & Condition</a></h2>

    
</body>

</html>