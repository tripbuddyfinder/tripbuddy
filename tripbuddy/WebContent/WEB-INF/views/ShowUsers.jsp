<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
     <%@ include file="admin_nav.jsp"%>
     <%@include file="Header.jsp" %>
   
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


    <!-----   (Profile)   ----->
    
    <div class="navbar">
<br>
    <div class="col-sm-2" style=" background-color: rgb(255, 255, 255);">
    <center>
        <a href="fetchusers" style="font-family:bookmanold style; font-size:150%;">VIEW USER</a><br>
        <a href="fetchfeedbacks" style="font-family:bookmanold style; font-size:150%;">VIEW FEEDBACK</a><br>
        <a href="addhotels" style="font-family:bookmanold style; font-size:150%;">ADD HOTEL</a><br>
         <a href="blockusers" style="font-family:bookmanold style; font-size:150%;">BLOCK USERS</a><br>
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
                 <c:forEach var="user" items="${userlist}" >
                <tr>
                   
     <tr>
      
      <td>${user.uname}</td> 
      <td>${user.ucity}</td>
      <td>${user.uemail}</td>
      <td><img src="${user.upic}" alt="Not available" style="width:150px;"/></td>
      
                    
                    <td style="margin-right:10%; "><br><br>
                    
                        <span><a href="userActionn/block/${user.uid}"><button type="submit" class="form-control" style=" width: 100%; background-color: rgb(173, 27, 27); color: white"  value="${user.uid}" >Block</button></a></span>
                       
               			</form>
                </tr>

</c:forEach>
            </table>
            

        </center>
    </div>

    </div>
   <script>
    function getdata(uid)
    {
    console.log(uid);
    }
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
