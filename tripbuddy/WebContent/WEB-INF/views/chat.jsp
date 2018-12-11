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

<body onload="init()">

  <div id="container">
	<aside>
		<header id="users">
			<h2>TRIPBUDDIES</h2>
		</header>
		<ul id="userlist">
						
		</ul>
	</aside>
	<main>
		<header>
			
			<div>
				<h2>Kullu Manali Trip</h2>
				<h3>already 1902 messages</h3>
			</div>
					</header>
		<ul id="chat">
						
		</ul>
		<footer>
			<form id="chat-inputarea">
			<textarea id="chat-input" placeholder="Type your message"></textarea>
			<button type="submit" id="send-button" class="btn btn-info btn-lg">Send</button>
					</form>
		</footer>
	</main>
</div>
  
 <input type="hidden" id="group" value="${gid}"/>
 <input type="hidden" id="from" value="${uname}"/>
 <audio id="notification">
  <source src="${path}styles/beep.ogg" type="audio/ogg">
</audio>

</body>

</html>