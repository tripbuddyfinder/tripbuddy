<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@include file="user_nav.jsp" %>
    <%@include file="Header.jsp" %>
	
<!DOCTYPE html>
<html>

<head>
    <title>Post Trip</title>
    <link rel="stylesheet" href="resources/styles/userhome.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="//geodata.solutions/includes/statecity.js"></script>
    <script src="resources/scripts/location.js"></script> 
    <script>
        function myFunction(event) {
            var n = new Date();
            alert(n);
            document.getElementById("ts").value = n;

        }
    </script>
</head>

<body>

  
    <!-----  (ADD TRIP)  ----->


    <form action="posttrip" method="get" modelAttribute="tripdata">
        <center>
            <div style=" background-image: url(resources/images/black.jpeg); background-size: 100% 100%; text-transform: uppercase; color: white; font-family: bookmanold style; font-size: 200%;">
                <p style="font-size:250%; color: rgb(153, 145, 173);">POST TRIP</p>
                <hr style="border:1px solid rgb(216, 204, 204); ">
                <input type="hidden" name="postid" value="11">

                <input type="hidden" name="timestamp" value="n" id="ts">

                <div class="col-xs-12">
                    From Place <br> <input type="hidden" id="countryId" value="IN" />
                    <div class="col-xs-6">
                        <select class="states order-alpha form-control" style="width:40%;" id="stateId">
                            <option>Select State</option>
                        </select>
                    </div>
                    <div class="col-xs-6">
                        <select name="source" class="cities order-alpha limit-pop-5000 form-control" style="width:40%;"
                            id="cityId">
                            <option>Select City</option>
                        </select>
                    </div>
                </div>
                <br><br><br>

                <div class="col-xs-12">
                    To Place <br> <input type="hidden" id="countryId" value="IN" />

                    <div class="col-xs-6">
                        <select class="states2 order-alpha form-control" style="width:40%;" id="stateId2">
                            <option>Select State</option>
                        </select>
                    </div>
                    <div class="col-xs-6">
                        <select name="destination" class="cities2 order-alpha limit-pop-5000 form-control" style="width:40%;"
                            id="cityId2">
                            <option>Select City</option>
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

               <input type="hidden" name="uid" value="${fbsession.uid}">

                <hr style="border:1px solid rgb(216, 204, 204); ">
                <input type="submit" value="Post" onclick="myFunction(event)" class="form-control" style="width:40%; height: 1%;  border-radius: 50px; font-size:150%; color: white; background-color: rgb(4, 4, 24)">
                <hr style="border:1px solid rgb(216, 204, 204); ">
<br>
            </div>
        </center>

      <%@ include file="Footer.jsp" %>


    </form>
</body>

</html>