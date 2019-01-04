 <%@page language="java"  pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="/tripbuddy/resources/styles/userhome.css">
    <script src="/tripbuddy/resources/vendor/fb/fb.js"></script>
  	<script src="/tripbuddy/resources/scripts/fb.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
    function open(){
   		console.log('<c:out value="${gid}"/>');
    }
    </script>
</head>

<body onload="open()">
 
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
                        <span class="glyphicon glyphicon-home"></span>
                    </a>
                </div>

                <div class="collapse navbar-collapse navbar-right" id="Navbar1">
					
					<c:if test="${!empty fbsession.uid}">
					
                     <ul class="nav navbar-nav  navbar-right">
                        <li><a href="javascript:fblogout()"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
                    </ul>
                                       
                   <c:if test="${!empty gid}"> <ul class="nav navbar-nav  navbar-right">
                        <li><a href="/tripbuddy/chatroom"><span class="glyphicon glyphicon-tasks"></span> Chat</a></li>
                    </ul> 
                    </c:if> 
                                        
                    <ul class="nav navbar-nav  navbar-right">
                        <li><a href="/tripbuddy/profile/${fbsession.uid}"><span class="glyphicon glyphicon-list-alt"></span> Profile</a></li>
                    </ul>
                   
                    <ul class="nav navbar-nav  navbar-right">
                        <li><a href="/tripbuddy/home"><span class="glyphicon glyphicon-home"></span> Home</a></li>
                    </ul> 
                    
                    </c:if>
                    
                    <c:if test="${empty fbsession.uid}">
					
                     <ul class="nav navbar-nav  navbar-right">
                        <li><a href="javascript:fblogin()"><span class="glyphicon glyphicon-log-out"></span> Log In</a></li>
                    </ul>
                    <ul class="nav navbar-nav  navbar-right">
                        <li><a href="/tripbuddy/feedback"><span class="glyphicon glyphicon-tasks"></span>Feedback</a></li>
                    </ul>  
                    <ul class="nav navbar-nav  navbar-right">
                        <li><a href="/tripbuddy"><span class="glyphicon glyphicon-home"></span>Home</a></li>
                    </ul> 
                    
                    </c:if>
                   
                </div>
            </div>
        </nav>
    </div>
    

    <script>
            var prevScrollpos = window.pageYOffset;
            window.onscroll = function() {
            var currentScrollPos = window.pageYOffset;
              if (prevScrollpos > currentScrollPos) {
                document.getElementById("navbar").style.top = "0";
              } else {
                document.getElementById("navbar").style.top = "-50px";
              }
              prevScrollpos = currentScrollPos;
            }
            </script>
            </body>
            </html>
            