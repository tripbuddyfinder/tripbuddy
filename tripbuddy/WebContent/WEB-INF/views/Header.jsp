

<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
<title>Header</title>
	<c:set var="path" value="http://localhost:8080/tripbuddy/resources/"/>
  <link rel="stylesheet" href="${path}Homepage.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>



    <!-----  (navbar)  ----->

    <div id="navbar" style="position: fixed; width: 100%;">
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

    <!-----  (header)  ----->
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
    </body>
</html>



