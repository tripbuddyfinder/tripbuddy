 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
     <%@ include file="admin_nav.jsp"%>
     <%@include file="Header.jsp" %>
   
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="resources/styles/dashboard.css">
    <link rel="stylesheet" href="resources/styles/userhome.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	

</head>

<body>


    <div style="background-color: rgb(216, 218, 219);" >
    <br><br>
    <div class="container-fluid">        
            <div class="col-sm-14" style="margin-left:18% ">
            <div class="col-xs-6">
            <a href="/tripbuddy/fetchusers"><img class="zoom" src="/tripbuddy/resources/images/user.png" style="width:50%; border-radius:50%; border: 2px solid rgb(123, 94, 156);" > <br><br>
            <p style="font-family:bookmanold style; font-size: 200%;"><strong>VIEW USER</strong></p></a>
            </div>
            <div class="col-xs-6" >
            <a href="/tripbuddy/blockusers"><img class="zoom" src="/tripbuddy/resources/images/blockuser.png" style="width:50%; border-radius:50%; border: 2px solid rgb(123, 94, 156);" > <br><br>
            <p style="font-family:bookmanold style; font-size: 200%;"><strong>BLOCKED USER</strong></p></a>
            </div> 
           </div>
    </div>	
    <br><br><br>
    <div class="container-fluid" >        
            <div class="col-sm-14" style="margin-left:18% ">
            <div class="col-xs-6">
            <a href="/tripbuddy/addhotels"><img class="zoom" src="/tripbuddy/resources/images/hotel.png" style="width:50%; border-radius:50%; border: 2px solid rgb(123, 94, 156);" > <br><br>
            <p style="font-family:bookmanold style; font-size: 200%;"><strong>ADD HOTEL</strong></p></a>
            </div>
            <div class="col-xs-6" >
            <a href="/tripbuddy/fetchfeedbacks"><img class="zoom" src="/tripbuddy/resources/images/feedback.png" style="width:50%; border-radius:50%; border: 2px solid rgb(123, 94, 156);" > <br><br>
            <p style="font-family:bookmanold style; font-size: 200%;"><strong>FEEDBACKS</strong></p></a>
            </div> 
            </div>
            </div>
    </div>
    </div>

    
    <!-----   (FOOTER)   ----->

        <div style="background-color:black">
            <br><br>
            <p style="font-family: Bookman Old Style;  font-size: 20px; color:white; text-align: center; font-style: italic;">
                <b> Copyright &copy; 2018 Trip Buddy Finder</b>
            </p>
            <br>
        </div>
    


</body>

</html>
