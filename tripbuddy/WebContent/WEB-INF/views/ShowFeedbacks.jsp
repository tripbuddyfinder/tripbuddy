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
	<style>
table {
  border-collapse: collapse;
}

table, td, th {
  border: 1px solid black;
}
</style>

</head>

<body>



    <!-----   (Profile)   ----->
    
    <div class="navbar">
<br>
    <div class="col-sm-2" style=" background-color: rgb(255, 255, 255);">
    <center>
        <a href="fetchusers" style="font-family:bookmanold style; font-size:150%;">VIEW USER</a><br>
        <a href="blockusers" style="font-family:bookmanold style; font-size:150%;">BLOCK USERS</a><br>
        <a href="addhotels" style="font-family:bookmanold style; font-size:150%;">ADD HOTEL</a><br>
    </center>
    </div>

    <div class="col-sm-10" style=" background-color: rgb(255, 255, 255);">
        <center>

            <table style="font-family: bookmanold style; font-size: 150%; border:1px solid black ">
                <tr style=" width: 100%;">
                    <th>Subject:</th>
				<th>Discription:</th>
				<th>TimeStamp:</th>
				<th>Status:</th>
				<th>User Id:</th>
                    
                    
                </tr>
               <c:forEach var="fbs" items="${data}" >
      <tr>
      <td>${fbs.sub}</td>
      <td>${fbs.desc}</td>
      <td>${fbs.timestamp}</td>
      <td>${fbs.status}</td>
      <td>${fbs.uid}</td>
      
                    
                    <td style="margin-right:10%; "><br><br>
                   
                      <span><button  class="form-control" style=" width: 100%; background-color: rgb(173, 27, 27); color: white"  value="${fbs.uid}" id="btn1" onclick="getdata()">Reply</button></span>
                        <span><br> <a href="user/${fbs.uid}/unblock "><button  class="form-control" style=" width: 100%; background-color: rgb(12, 102, 39); color: white"  value="${fbs.uid}">Ignore</button><br><br></td></span>
               
                </tr>

</c:forEach>
            </table>  
            

        </center>
    </div>

    </div>
    
     <script>
    function getdata(uid)
    {
    alert(uid);
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

