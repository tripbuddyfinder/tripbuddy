<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@include file="Header.jsp" %>
   <%@include file="user_nav.jsp" %>
    

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="homepage.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta charset="ISO-8859-1">
  <title>Feedback</title>
</style>
<script>
function myFunction(event) {
  var n = new Date();
  //alert(n);
  document.getElementById("ts").value=n;
 
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

      
    <!-----   (fEEDBACK)   ----->


<form action="feedback/saveFeedback" modelAttribute="FB"  >


    <div style="background-color:#006699">
        <div id="contact" class="container fluid" style="color:white;"><br><br><br>
          <p style="text-align: center;  font-size:220%; color: white; font-family: Bookman Old Style; font-style:italic; text-transform: uppercase;">
            <b>Give Your Valueable Feedback</b></p>
  
          <div class="col-sm-4 center" style="font-family: bookman old style; font-size: 150%;"><br>
            <p>Contact us and we'll get back to you within 24 hours.
              <P class="glyphicon glyphicon-map-marker"> Delhi, India</P><br>
              <P class="glyphicon glyphicon-phone"> 91 9971906374</P><br>
              <P class="glyphicon glyphicon-envelope"> rahulkushwaha931@gmail.com</P><br>
          </div>
  
          <div class="col-sm-8"><br>
  
            <div class="row">
              <div class="col-sm-6">
                <input type="text" placeholder="ID" class="form-control">
                <br></div>
              <div class="col-sm-6">
                <input type="text" placeholder="SUBJECT" class="form-control">
              </div><br>
            </div>
            <textarea placeholder="Description" rows="5" class="form-control"></textarea>
          </div>
          <br>
          <div class="col-sm-2 pull-right zoom">
            <br> <br> <button  onclick="myFunction(event)" class="form-control">SUBMIT</button>
            <br>
          </div>
        </div>
        <br>
        <br>
      </div>
  

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
