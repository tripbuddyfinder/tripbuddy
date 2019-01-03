<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@include file="user_nav.jsp" %>
    <%@include file="Header.jsp" %>

<html>

<head>
    <link rel="stylesheet" href="resources/styles/userhome.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>

    <form name="postdetails" action="#" method="post">

    <!-----   (post trip)   ----->

    <div class="row" style="width:100%; margin-left: 0px; background-color:white; ">

    <div class="postcontainer">
    <br>

    <div class="postchild" style="font-family: bookmanold style; width: 100%; height: 100%;">
        <div class="panel">
        <!----- Fetching Data From Model -->
        
        <c:forEach var="trip" items="${trips}" >
          <div class="panel-heading" style="background-color:black; color: white;">
            <h1 class="text-center"><strong style="font-size: 150%;">${trip.uname }</strong></h1>
          </div>
          <div class="panel-body" style="font-size:200%; margin-left: 10%;">
          <center>      <p><strong class="glyphicon glyphicon-user"></strong> 5</p>
                
                <p><strong class="glyphicon glyphicon-map-marker"></strong>${trip.source } To ${trip.destination}</p>
                <p><strong class="glyphicon glyphicon-calendar"></strong>${trip.pdate}</p>
                <p><strong></strong><img src="/tripbuddy/resources/images/rupee.jpeg" style="width: 28px;">${trip.cost }</p>
                <p><strong class="glyphicon glyphicon-globe"></strong> hello</p>
                <button class="form-control" style="width:50%; font-size: 4vmin; height: 10%; background-image: linear-gradient(to right, rgb(54, 69, 211), rgb(82, 231, 77)); color: black">
                    INVITE FRIENDS VIA <img src="/tripbuddy/resources/images/facebook.jpeg" style="width:8%;"> <img src="/tripbuddy/resources/images/whatsapp.jpeg" style="width:8%;">
                </button>
            </center>
            </div>
            
            <div class="panel-footer text-center" style="background-color:gainsboro;">
            
                            <button class="btn btn-primary btn-lg zoom" style="background-color:black; color: white; font-size: 5vmin; widows: 100vmin;;">Join Now</button> 


                </div>
                </c:forEach>
            </div>
        </div>

    </div>
    </div>
  


</form>
</body>
</html>