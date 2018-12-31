<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="resources/styles/dashboard.css">
    <link rel="stylesheet" href="userhome.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
table {
  border-collapse: collapse;
}

table, td, th {
  border: 1px solid black;
}
</style>

</head>

<body>


<!-- 
    <!-----  j(navbar)  ----->

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
     -->


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



    <!-----   (Profile)   ----->
    
    <div class="navbar">
<br>
    <div class="col-sm-2" style=" background-color: rgb(255, 255, 255);">
    <center>
        <a href="../fetchusers" style="font-family:bookmanold style; font-size:150%;">VIEW USER</a><br>
        <a href="../fetchfeedbacks" style="font-family:bookmanold style; font-size:150%;">VIEW FEEDBACK</a><br>
        <a href="../Addhotels" style="font-family:bookmanold style; font-size:150%;">ADD HOTEL</a><br>
    </center>
    </div>

    <div class="col-sm-10" style=" background-color: rgb(255, 255, 255);">
        <center>

            <table style="font-family: bookmanold style; font-size: 150%; border:1px solid black ">
                <tr style=" width: 100%;">
                    <th>Subject:</th>
				<th>Discription:</th>
				<th>TimeStamp:</th>
				<th>Status:</th>
				<th>User Id:</th>
                    
                    
                </tr>
               <c:forEach var="fbs" items="${data}" >
      <tr>
      <td>${fbs.sub}</td>
      <td>${fbs.desc}</td>
      <td>${fbs.timestamp}</td>
      <td>${fbs.status}</td>
      <td>${fbs.uid}</td>
      
                    
                    <td style="margin-right:10%; "><br><br>
                        <span><button  class="form-control" style=" width: 100%; background-color: rgb(173, 27, 27); color: white"  value="${fbs.uid}" id="btn1" onclick="getdata()">Reply</button></span>
                        <span><br><button  class="form-control" style=" width: 100%; background-color: rgb(12, 102, 39); color: white"  value="${fbs.uid}" id="btn2" onclick="getdata()">Ignore</button><br><br></td></span>
                </tr>

</c:forEach>
            </table>
            

        </center>
    </div>

    </div>
    <br>
    
    
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

