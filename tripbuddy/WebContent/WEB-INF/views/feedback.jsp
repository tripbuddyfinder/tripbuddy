<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@include file="Header.jsp" %>
   
      

<!DOCTYPE html>
<html>
<head>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta charset="ISO-8859-1">
  <title>Feedback</title>

<script>
function myFunction(event) {
  var n = new Date();
  //alert(n);
  document.getElementById("ts").value=n;
 
}
</script>
</head>
<body>

     
    <!-----   (fEEDBACK)   ----->


<form action="feedback/saveFeedback" modelAttribute="FB"  >


    <div style="background-color:#006699">
        <div id="contact" class="container fluid" style="color:white;"><br><br><br>
          <p style="text-align: center;  font-size:220%; color: white; font-family: Bookman Old Style; font-style:italic; text-transform: uppercase;">
            <b>Give Your Valueable Feedback</b></p>
  
          <div class="col-sm-4 center" style="font-family: bookman old style; font-size: 150%;"><br>
          <p>Contact us and we'll get back to you within 24 hours.
            <P class="glyphicon glyphicon-map-marker"> New Delhi, India</P><br>
            <P class="glyphicon glyphicon-phone"> 91 9987654321</P><br>
            <P class="glyphicon glyphicon-envelope"> <a style="color:white;font-family: bookman old style; decoration:none;" href="mailto:tripbuddyfinder@hi2.in">tripbuddyfinder@hi2.in</a></P><br>
        </div>
  
          <div class="col-sm-8"><br>
  
            <div class="row">
              
              <div class="col-sm-6">
              <input type="text" placeholder="Name" class="form-control">
              <br></div>
               
              <div class="col-sm-6">
              <input type="hidden" name="timestamp" value="ts" id="ts">
              <input type="hidden" name="uid" value="${fbsession.uid}">
                <input type="text" name="sub" placeholder="SUBJECT" class="form-control">
              </div><br>
            </div>
            <textarea placeholder="Description"  name="desc" rows="5" class="form-control"></textarea>
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

     <%@include file="Footer.jsp" %>
</body>
</html>
-+