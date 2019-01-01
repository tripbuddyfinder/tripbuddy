<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>

<head>
    <link rel="stylesheet" href="userhome.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Add Hotels </title>
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



    <!-----   (ADD HOTEL)   ----->

    <form action="hotels/addhotels" modelAttribute="hotels">
        <center>
            <div style=" background-image: url(image/black.jpg); background-size: 100% 100%; text-transform: uppercase; color: white; font-family: bookmanold style; font-size: 200%;">

                <p style="font-size:250%; color: rgb(153, 145, 173);">ADD HOTELS</p>
                <hr style="border:1px solid rgb(216, 204, 204); ">
                <br>
                Hotel Name<br><input type="text" name="hname" class="form-control" style="width:20%"><br>

                State<br><input type="text" name="state" class="form-control" style="width:20%"><br>
                
                City<br><input type="text" name="city" class="form-control" style="width:20%"><br>
                
                Price Per Night<br><input type="number" name="price" class="form-control" style="width:20%"><br>
                
                Booking link<br><input type="number" name="rating" class="form-control" style="width:20%"><br>
                
                <hr style="border:1px solid rgb(216, 204, 204); ">
                <input type="submit" value="SUBMIT" class="form-control zoom" style="width:40%; height: 1%;  border-radius: 50px; font-size:150%; color: white; background-color: rgb(4, 4, 24)">
                <hr style="border:1px solid rgb(216, 204, 204); ">
                
                <br><br>
            </div>
        </center>
    </form>



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