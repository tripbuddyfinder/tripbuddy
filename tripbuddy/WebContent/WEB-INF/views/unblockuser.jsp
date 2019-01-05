<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="/tripbuddy/resources/styles/userhome.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body style="background-image: url(/tripbuddy/resources/images/black.jpeg);">
<%@include file="admin_nav.jsp" %>
<%@include file="Header.jsp" %>

<div class="navbar">
<br>
    <div class="col-sm-2" style=" background-color: rgb(255, 255, 255);">
    <center>
        <a href="/tripbuddy/fetchusers" style="font-family:bookmanold style; font-size:150%;">VIEW USER</a><br>
        <a class="active"  href="/tripbuddy/fetchfeedbacks" style="font-family:bookmanold style; font-size:150%;">VIEW FEEDBACK</a><br>
        <a href="/tripbuddy/addhotels" style="font-family:bookmanold style; font-size:150%;">ADD HOTEL</a><br>
         <a href="/tripbuddy/blockusers" style="font-family:bookmanold style; font-size:150%;">BLOCK USERS</a><br>
    </center>
    </div>
    </div>


    <!-----  (BLOCK)  ----->

    <p style="color:white; font-family:bookmanold style; font-size:500%; text-align:center;">
    <br>    ACCOUNT IS UNBLOCKED  
     <br><br>
    </p>

    <!-----   (FOOTER)   ----->
<%@include file="Footer.jsp" %>


</body>
</html>
