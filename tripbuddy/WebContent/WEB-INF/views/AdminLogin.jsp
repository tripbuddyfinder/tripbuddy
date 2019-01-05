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


</head>

<body>

 
    <!-----   (login form)   ----->

	<form action="cpanel" method="post" modelAttribute="login" >
    <div style=" margin-left: 10%; margin-right: 10%; margin-top: 2%; border:4px solid black; border-radius: 12px; background-image: linear-gradient(to top, rgb(177, 67, 177), rgb(77, 144, 231))">
        <div class="container fluid">
            <center>
                <div class="col-sm-4 center" style="font-family: bookman old style; font-size: 150%;"><br>
                    <img src="resources/images/admin.png" style="width:80%;"> <br><br>
                </div>

                <div class="col-sm-8"><br>
                    <div class="row">
                        <div class="col-sm-10">
                            <div class="glyphicon glyphicon-user" style="color:white; font-size: 200%;"></div><br><br>
                            <input class="form-control" type="text" name="aid" placeholder="ADMIN ID" style="width:100%; margin-top: 4px;">
                            <br>
                            <div class="glyphicon glyphicon-lock" style="color:white; font-size: 200%;"></div><br><br>
                            <input class="form-control" type="password" name="apwd" placeholder="PASSWORD" style="width:100%; margin-top: 4px;">
                        </div>
                    </div>

                    <br><br>
                    <div class="col-sm-10">
                        <button class="form-control zoom" style="width:50%; height: 8%; background-color:rgb(113, 21, 131); color:white; font-size:4vmin; font-family: bookmanold style; border-radius: 100px;"><b>LOGIN</b></button> <br>
                    </div>
                </div>
            </center>
        </div>
    </div>


</form>
<br><br>
 
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
