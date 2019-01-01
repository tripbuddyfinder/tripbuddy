<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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


<!-- 
    <!-----  d(navbar)  ----->

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
                        <li><a href="admin/logout"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
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
        <a href="fetchusers" style="font-family:bookmanold style; font-size:150%;">VIEW USER</a><br>
        <a href="fetchfeedbacks" style="font-family:bookmanold style; font-size:150%;">VIEW FEEDBACK</a><br>
        <a href="addhotels" style="font-family:bookmanold style; font-size:150%;">ADD HOTEL</a><br>
    </center>
    </div>

    <div class="col-sm-10" style=" background-color: rgb(255, 255, 255);">
        <center>

            <table style="font-family: bookmanold style; font-size: 150%;">
                <tr style=" width: 100%;">
                    <th>NAME</th>
                    <th>CITY</th>
                    <th>E-MAIL</th>
                    
                    
                </tr>
                 <c:forEach var="user" items="${blocklist}" >
                <tr>
                   
     <tr>
      
      <td>${user.uname}</td> 
      <td>${user.ucity}</td>
      <td>${user.uemail}</td>
      <td><img src="${user.upic}" alt="Not available" style="width:150px;"/></td>
      
                    
                    <td style="margin-right:10%; "><br><br>
                    
                       
                        <span><br><a href="userAction/${user.uid}/unblock"><button type="submit"  class="form-control" style=" width: 100%; background-color: rgb(12, 102, 39); color: white"  value="${user.uid}" >UnBlock</button></a><br><br></td></span>
               			</form>
                </tr>

</c:forEach>
            </table>
            

        </center>
    </div>

    </div>
   <script>
   
    </script>
    
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
