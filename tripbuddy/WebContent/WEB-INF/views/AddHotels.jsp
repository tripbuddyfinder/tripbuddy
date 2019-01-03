<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="admin_nav.jsp"%>
    <%@include file="Header.jsp" %>
  
<!DOCTYPE html>

<html>

<head>
    <link rel="stylesheet" href="resources/styles/userhome.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Add Hotels </title>
</head>

<body>

       <!-----   (ADD HOTEL)   ----->

    <form action="hotels/addhotels" modelAttribute="hotels">
        <center>
            <div style=" background-image: url(resources/images/black.jpeg); background-size: 100% 100%; text-transform: uppercase; color: white; font-family: bookmanold style; font-size: 200%;">

                <p style="font-size:250%; color: rgb(153, 145, 173);">ADD HOTELS</p>
                <hr style="border:1px solid rgb(216, 204, 204); ">
                <br>
                Hotel Name<br><input type="text" name="hname" class="form-control" style="width:20%"><br>

                State<br><input type="text" name="state" class="form-control" style="width:20%"><br>
                
                City<br><input type="text" name="city" class="form-control" style="width:20%"><br>
                
                Price Per Night<br><input type="number" name="price" class="form-control" style="width:20%"><br>
                
                Booking link<br><input type="text" name="link" class="form-control" style="width:20%"><br>
                
                <hr style="border:1px solid rgb(216, 204, 204); ">
                <input type="submit" value="SUBMIT" class="form-control zoom" style="width:40%; height: 1%;  border-radius: 50px; font-size:150%; color: white; background-color: rgb(4, 4, 24)">
                <hr style="border:1px solid rgb(216, 204, 204); ">
                
                <br><br>
            </div>
        </center>
    </form>



   <%@ include file="Footer.jsp" %>

</body>

</html>