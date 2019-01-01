<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <title>Post Trip</title>
    <link rel="stylesheet" href="userhome.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="//geodata.solutions/includes/statecity.js"></script>
    <script src="resources/js/location.js"></script>
    <script>
        function myFunction(event) {
            var n = new Date();
            alert(n);
            document.getElementById("ts").value = n;

        }
    </script>
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


    <!-----  (ADD TRIP)  ----->


    <form action="trips/posttrips" method="get" modelAttribute="trip">
        <center>
            <div style=" background-image: url(image/black.jpg); background-size: 100% 100%; text-transform: uppercase; color: white; font-family: bookmanold style; font-size: 200%;">
                <p style="font-size:250%; color: rgb(153, 145, 173);">POST TRIP</p>
                <hr style="border:1px solid rgb(216, 204, 204); ">

                <input type="hidden" name="timestamp" value="n" id="ts">

                <div class="col-xs-12">
                    From Place <br> <input type="hidden" id="countryId" value="IN" />
                    <div class="col-xs-6">
                        <select class="states order-alpha form-control" style="width:40%;" id="stateId">
                            <option value="">Select State</option>
                        </select>
                    </div>
                    <div class="col-xs-6">
                        <select name="source" class="cities order-alpha limit-pop-5000 form-control" style="width:40%;"
                            id="cityId">
                            <option value="">Select City</option>
                        </select>
                    </div>
                </div>
                <br><br><br>

                <div class="col-xs-12">
                    To Place <br> <input type="hidden" id="countryId" value="IN" />

                    <div class="col-xs-6">
                        <select class="states2 order-alpha form-control" style="width:40%;" id="stateId2">
                            <option value="">Select State</option>
                        </select>
                    </div>
                    <div class="col-xs-6">
                        <select name="destination" class="cities2 order-alpha limit-pop-5000 form-control" style="width:40%;"
                            id="cityId2">
                            <option value="">Select City</option>
                        </select>
                    </div>
                </div>
                <br><br><br>

                Schedule Date <br> <input type="date" class="form-control" style="width:40%;" name="pdate"><br>

                Duration <br> <select name="duration" class="form-control" style="width:40%;">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="10+">10+</option>
                </select>
                <br>

                No of tripbuddies <br> <select name="members" class="form-control" style="width:40%;">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>
                <br>

                cost per head <br><select name="cost" class="form-control" style="width:40%;">
                    <option value="3000">3000</option>
                    <option value="5000">5000</option>
                    <option value="6000">6000</option>
                    <option value="7000">7000</option>
                    <option value="10000">10000</option>
                    <option value="10000+">10000+</option>
                </select>
                <br>

                ABOUT <br> <textarea rows="5" cols="20" class="form-control" style="width:40%;" name="info">
</textarea>
                <br>

                User id <br><input type="number" name="uid" class="form-control" style="width:40%;"><br><br>

                <hr style="border:1px solid rgb(216, 204, 204); ">
                <input type="submit" value="Post" onclick="myFunction(event)" class="form-control" style="width:40%; height: 1%;  border-radius: 50px; font-size:150%; color: white; background-color: rgb(4, 4, 24)">
                <hr style="border:1px solid rgb(216, 204, 204); ">
<br>
            </div>
        </center>

        <!-----   (FOOTER)   ----->

        <div style="background-color:black">
            <br><br>
            <p style="font-family: Bookman Old Style;  font-size: 20px; color:white; text-align: center; font-style: italic;">
                <b> Copyright &copy; 2018 Trip Buddy Finder</b>
            </p>
            <br>
        </div>



    </form>
</body>

</html>