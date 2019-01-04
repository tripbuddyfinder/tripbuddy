<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>   
	<%@include file="user_nav.jsp" %>
	<%@include file="Header.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="/tripbuddy/resources/styles/userprofile.css">
    <link rel="stylesheet" href="/tripbuddy/resources/styles/userhome.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>

<body>
    <!-----   (Profile)   ----->
    <div class="navbar">

        <div class="col-sm-3" style=" background-image: linear-gradient(to top, rgb(77, 144, 231), rgb(177, 67, 177)) ">
            <center>
                <br> <img class="img-circle zoom" src="${user.upic}" style="border-radius: 20px; width:250px; height: 200px;  border:10px solid rgb(8, 33, 88);"><br>
                <br>
                <span class="name" style="color:white; font-family: bookmanold style; font-size: 300%;">${user.uname}</span><br>
                <span class="name" style="color:white; font-family: bookmanold style; font-size: 200%;">${user.ucity}</span><br>
                <br>
                <a href="/tripbuddy/about" class="form-control zoom" style="width:50%;  background-color:rgb(113, 21, 131); color:white; font-size:120%; font-family: bookmanold style; border-radius: 100px;"><b>ABOUT</b></a>
                <br>
                <a href="/tripbuddy/help" class="form-control zoom" style="width:50%;  background-color:rgb(113, 21, 131); color:white; font-size:120%; font-family: bookmanold style; border-radius: 100px;"><b>HELP</b></a>
                <br>
                <a href="/tripbuddy/feedback" class="form-control zoom" style="width:50%;  background-color:rgb(113, 21, 131); color:white; font-size:120%; font-family: bookmanold style; border-radius: 100px;"><b>FEEDBACK</b></a><br>

            </center>
        </div>




        <!-----   (post trip)   ----->

        <div class="col-sm-9" style="background-image: url(/tripbuddy/resources/images/black.jpeg); background-size:100% 100%; height: 85.65%; overflow: auto;">
            <br>

            <div class="postdetails" style="border: 4px solid white;">

                <div class="uprow" style="color:gray; font-family:bookmanold style; font-size:150%;">
                    <center>
                        <div class="col-sm-3"><br> YOU VISITED <br>
                            <span style="font-size:150%; color: white">Delhi</span>
                        </div>

                        <div class="col-sm-5"><br> ON <br>
                            <span style="font-size:150%; color: white">20-Dec-2018</span>
                        </div>

                        <div class="col-sm-3"><br> WITH <br>
                            <span style="font-size:150%; color: white">sanjay, rajan, biplab, rahuk, ranjan, manav,
                                nitin</span>
                        </div><br>

                        <button class="form-control" style="width:20%; height: 8%; background-color: rgb(18, 11, 32); color:white; font-size:4vmin; font-family: bookmanold style; border-radius: 100px;"><b>ABOUT</b></button>
                        <br>
                    </center>
                </div>
            </div>
<br>        </div>

    </div>
   <%@include file="Footer.jsp" %>



</body>

</html>