<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@include file="user_nav.jsp" %>
<%@include file="Header.jsp" %>

<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="/tripbuddy/resources/styles/userhome.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
    	$(window).on('resize', function(){
      var win = $(this); //this = window
      console.log(win.width());
       if (win.width() <= 750) {console.log($(#weather1).css("display"); $(#weather1).css("display","none"); }
       else{$(#weather1).css("display","block");}
});
    </script>
</head>

<body>




   
    <!-----   (Search)   ----->


    <div class="searching" style="background-image: url(/tripbuddy/resources/images/logo.jpg); background-size: 100% 100%;">
        <br><br><br><br><br>
        <center>
            <div class="searching1">
                <div class="input-group" style="width:50%; margin-left: 20%">
                    <input type="text" class="form-control" placeholder="Enter what you need to find..." style="text-align:center">

                    <div class="input-group-btn" style="width:1%;">
                        <button type="buttofasdasdn" class="btn btn-danger">Search</button>
                    </div>

                </div>
            </div>
        </center>
        <br><br><br><br>
    </div>



    <!-----   (post trip)   ----->
    

    <div class="row" style="width:100%; margin-left: 0px;">

        <div class="postcontainer  col-md-9" style="background-color:#115272; height:100%; border:2px solid black; overflow: auto;  background-image: url(/tripbuddy/resources/images/black.jpeg); background-size: 100% 100%;">
            <br>
			
            <div id="postchild">
            	<c:forEach var="trip" items="${trips}" >
                <div class="col-sm-4 zoom" style="font-family: bookmanold style;">
                    <div class="panel  text-center">
                        <div class="panel-heading" style="background-color:black; color: white;">
                        
<!-----   Trip Data From Controller   ----->
							 
                        
                            <h1><strong>${trip.destination}</strong></h1>
                        </div>
                        <div class="panel-body" style="font-size:120%;">
                            <p><strong>Planned By :</strong><a style="color:#373238;decoration:none;" href="/tripbuddy/profile/${trip.uid}">${trip.uname}</a></p>
                            <p><strong class="glyphicon glyphicon-calendar"></strong>${trip.pdate} </p>
                            <p><strong class="glyphicon glyphicon-map-marker"> From:</strong>${trip.source} To ${trip.destination}</p>
                        </div>
                        <div class="panel-footer">
                           <a style="background-color:black; color: white; font-size: 100%;" class="btn btn-primary btn-lg change" href="/tripbuddy/postdetail/${trip.postid}">View More </a>
                            <button class="btn btn-primary btn-lg change" style="background-color:black; color: white; font-size: 100%; margin-left: 10%;"
                                onclick="hide()">Ignore</button>
                        </div>
                    </div>
                </div>
                 </c:forEach>
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

 
        <!-----   (weather)   ----->

        <div class="weather1 col-md-3 text-center" style="height:100%; border:1px solid black; overflow: auto; background-image: url(/tripbuddy/resources/images/black.jpg); background-size: 100% 100%;">

            <br>
            <div class="zoom" style="font-family: bookmanoldstyle; color:white; font-size:280%; background-color: rgb(179, 79, 179); opacity: 0.8;">
            <b>Weather Forcast</b>
            </div>
            <br>

            <!-----   (New Delhi)   ----->
            <a target="_blank" href="https://www.booked.net/weather/new-delhi-18038">
                <img class="zoom weather" src="https://w.bookcdn.com/weather/picture/32_18038_1_1_9b59b6_250_8e44ad_ffffff_ffffff_1_2071c9_ffffff_0_6.png?scode=124&domid=w209&anc_id=29699"
                    alt="booked.net" style="width:50%; margin-top: 5%;" /></a>

            <br><br>

            <!-----   (Shimla)   ----->
            <a target="_blank" href="https://www.booked.net/weather/shimla-18040">
                <img class="zoom weather" src="https://w.bookcdn.com/weather/picture/32_18040_1_1_9b59b6_250_8e44ad_ffffff_ffffff_1_2071c9_ffffff_0_6.png?scode=124&domid=w209&anc_id=29699"
                    alt="booked.net" style="width:50%;"/></a>

            <br><br>

            <!-----   (Nainital)   ----->
            <a target="_blank" href="https://www.booked.net/weather/nainital-10014">
                <img class="zoom weather" src="https://w.bookcdn.com/weather/picture/32_10014_1_1_9b59b6_250_8e44ad_ffffff_ffffff_1_2071c9_ffffff_0_6.png?scode=124&domid=w209&anc_id=29699"
                    alt="booked.net" style="width:50%;"/></a>

            <br><br>

            <!-----   (Manali)   ----->
            <a target="_blank" href="https://www.booked.net/weather/manali-32467">
                <img class="zoom weather" src="https://w.bookcdn.com/weather/picture/32_32467_1_1_9b59b6_250_8e44ad_ffffff_ffffff_1_2071c9_ffffff_0_6.png?scode=124&domid=w209&anc_id=29699"  
                    alt="booked.net" style="width:50%;"/></a>

            <br><br>

            <!-----   (Goa)   ----->
            <a target="_blank" href="https://www.booked.net/weather/goa-19513">
                <img class="zoom weather" src="https://w.bookcdn.com/weather/picture/32_19513_1_1_9b59b6_250_8e44ad_ffffff_ffffff_1_2071c9_ffffff_0_6.png?scode=124&domid=w209&anc_id=29699"
                    alt="booked.net" style="width:50%; margin-bottom: 5%;"/></a>

        </div>
    </div>

    <br>


    <!-----   (MAKE A PLAN)   ----->

    <div class="button"><a href="trip" class="btn btn-default btn-lg zoom" style="position: fixed; opacity:0.8; z-index: 99999; background-color:black; right: 3%; bottom: 3%; ">
        <span class="center glyphicon" style="color:white; font-size: 3vmin;"><b class="glyphicon glyphicon-map-marker ">
                MAKE A PLAN</b></span></a>
</div>


    <!-----   (FOOTER)   ----->
     <%@include file="Footer.jsp" %>
   
</body>

</html>