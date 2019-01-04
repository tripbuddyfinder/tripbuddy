<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <c:set var="path" value="http://localhost:8080/tripbuddy/resources/"/>
    	<script src="${path}vendor/sockjs/sockjs.min.js" /></script>
        <script src="${path}vendor/stomp/stomp.min.js" /></script>
        <script src="${path}scripts/chat.js" /></script>
         <script src="${path}vendor/jquery/jquery.min.js" /></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
           
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="${path}styles/chat.css">


  
</head>

<body onload="init()" onresize="changeUi()">
	<%@include file="Header.jsp" %>
  <div id="container">
	<aside id="userAside">
		<header id="users">
			<h2>TRIPBUDDIES</h2>
		</header>
		<ul id="userlist">
						
		</ul>
	</aside>
	<main id="userChat">
		<header>
			
			<div>
				<h2>Trip managed by tripbuddy</h2>
				<h3 id="totalmsgs"></h3>				
			</div>
			<input style="float:right;" class="btn btn-primary" type="button" value="Suggest hotels" onclick="getHotels();"/>
					</header>
		<ul id="chat">
						
		</ul>
		<footer id="footer">
			<form id="chat-inputarea">
			<textarea id="chat-input" placeholder="Type your message"></textarea>
			<button type="submit" id="send-button" class="btn btn-info btn-lg">Send</button>
					</form>
		</footer>
	</main>
</div>
  
 <script>
 uid = '<c:out value="${uid}"/>';
 username='<c:out value="${uname}"/>';
 group='<c:out value="${gid}"/>';
  </script>
 <audio id="notification"> 
  <source src="${path}styles/beep.ogg" type="audio/ogg">
</audio>

<%@include file="Footer.jsp" %>
</body>

</html>
