<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@include file="Header.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="resources/userhome.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>

	id : ${session.fbsession.uid}
 help :	${fbsession.uname}
 <img src="${fbsession.upic}" />
    <form name="userhomepage" action="#" method="post">

        <!-----  (navbar)  ----->

    <!-- <div id="navbar" style="position: fixed; width: 100%;">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">

                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#Navbar1">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#home" style="font-size: 150%; color:white; font-family:Bookman Old Style;">
                        <span class="glyphicon glyphicon-home"><span class="active"> HOME</span></span>
                    </a>
                </div>

                <div class="collapse navbar-collapse navbar-right" id="Navbar1">


                    <ul class="nav navbar-nav  navbar-right">
                        <li><a href="#review"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
                    </ul>
                    <ul class="nav navbar-nav  navbar-right">
                        <li><a href="#about"><span class="glyphicon glyphicon-globe"></span> Plan</a></li>
                    </ul>
                    <ul class="nav navbar-nav">
                        <li><a href="#contact"> <span class="glyphicon glyphicon-phone"></span> Chat</a></li>
                    </ul>
                    <ul class="nav navbar-nav  navbar-right">
                        <li><a href="#services"><span class="glyphicon glyphicon-tasks"></span> Help</a></li>
                    </ul>
                    <ul class="nav navbar-nav  navbar-right">
                        <li><a href="#review"><span class="glyphicon glyphicon-list-alt"></span> Profile</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>


    <script>
        var prevScrollpos = window.pageYOffset;
        window.onscroll = function () {
            var currentScrollPos = window.pageYOffset;
            if (prevScrollpos > currentScrollPos) {
                document.getElementById("navbar").style.top = "0";
            } else {
                document.getElementById("navbar").style.top = "-50px";
            }
            prevScrollpos = currentScrollPos;
        }
    </script>

    ---  (header)  ---
    <br><br><br>
    <div class="header container-fluid" style="background-color:black; margin-left: auto; margin-right: auto;">
        <br>
        <div class="trip" style="font-size: 8vmin; font-family: bookmanold style; color:orangered;">
            <b>Trip<span style="color:white; font-size: 100%;">Buddy</span>
                <span class="glyphicon glyphicon-search" style="font-size: 120%;"></span>
            </b>
            <span style="color:white; font-size: 2vmax; float:right; overflow: hidden;"><br> India Biggest Trip
                Buddy Finder Site </span>


        </div>
        <br>
    </div>

 -->

    <!-----   (Profile)   ----->


    <div class="el" style="width:10%;"></div>
    <script>
        var path = 'resources/images/profile/',
            imgs = ['1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', '6.jpg'],
            i = Math.floor(Math.random() * imgs.length);
        $('.el').append("<img src='" + path + imgs[i] + "'height=50%; width=1000%;'>").hide().fadeIn(2000);

    </Script>

    <div class="userprofile">

        <br> <img align="left" class="zoom thumbnail" src="resources/images/profile/1.jpg" style="width:35%; height: 40%;  position: absolute; top: 70%; left: 5%;">
        <div class="name" style="margin-left:60%; font-family: bookmanold style; font-size: 10vmin; color: blue;">Rahul<br></div>
        <div class="city glyphicon glyphicon-map-marker " style="margin-left:61%;  font-size: 4vmin; color: blue;">
            Delhi</div>

    </div>

    <hr style="border-width:3px; margin-top: 10%; border-style: inset; width: 98%;">



    <!-----   (post trip)   ----->

    <div class="row" style="width:100%; height: 150%; margin-left: 0px;">

        <div class="postcontainer col-md-12" style="background-color:#115272; margin-top:2%; height:100%; border:2px solid black; overflow: auto;  background-images: url(images/profile/1.jpg); background-size: 100% 100%;">
            <br>

            <div id="postchild">

                <div class="col-sm-3 zoom" style="width:50%; font-family: bookmanold style;">
                    <div class="thumbnail">
                        <img src="resources/images/ladakh2.jpg" style="width:50%; height:30%;">
                        <br>
                        <p><strong class="place" style="font-size:200%;"> You visited : <strong style="color:blue;">Goa</strong></strong></p>
                        <p><strong class="date" style="font-size:200%;"> On : <strong style="color:blue;">20-Dec-2018</strong></strong></p>
                        <p><strong class="friends" style="font-size:200%;"> With : <strong style="color:blue;">Rajan, Biplab, palak</strong></strong></p>
                        <p><strong class="about" style="font-size:200%;"> About : <strong style="color:blue;">Story</strong></strong></p>
                    </div>
                </div>

                <div class="col-sm-3 zoom" style="width:50%; font-family: bookmanold style;">
                        <div class="thumbnail">
                            <img src="resources/images/goa.jpg" style="width:100%; height:30%;">
                            <br>
                            <p><strong class="place" style="font-size:200%;"> You visited : <strong style="color:blue;">Goa</strong></strong></p>
                            <p><strong class="date" style="font-size:200%;"> On : <strong style="color:blue;">20-Dec-2018</strong></strong></p>
                            <p><strong class="friends" style="font-size:200%;"> With : <strong style="color:blue;">Rajan, Biplab, palak</strong></strong></p>
                            <p><strong class="about" style="font-size:200%;"> About : <strong style="color:blue;">Story</strong></strong></p>
                        </div>
                    </div>

                </div>

            <script>
                function hide() {
                    var x = document.getElementById("postchild");
                    if (x.style.display = "block") {
                        x.style.display = "none";
                    }
                }	
            </script>

        </div>
    </div>


    <%@include file="Footer.jsp" %>
   

</body>

</html>