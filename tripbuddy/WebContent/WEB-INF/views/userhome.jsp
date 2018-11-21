<html>

<head>
    <link rel="stylesheet" href="userhome.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>

    <form name="userhomepage" action="#" method="post">

        <!-----  (header)  ----->

        <div class="header container-fluid" style="background-color:black">
            <br>
        <div class="trip" style="font-size: 8vmin; font-family: bookmanold style; color:orangered;">
            <b>Trip<span style="color:white; font-size: 100%;">Buddy</span>
            <span class="glyphicon glyphicon-search" style="font-size: 120%;"></span>  
            </b>
        </div>
        <br>
        </div>

        <div id="home">
        </div>
        <div id="homes">
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">

                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#Navbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#home" style="font-size: 150%; color:white; font-family:Bookman Old Style;">
                            <span class="glyphicon glyphicon-home"><span class="active"> HOME</span></span>
                        </a>
                    </div>

                    <div class="collapse navbar-collapse navbar-right" id="Navbar">

                        
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
            window.onscroll = function () { myFunction() };

            var navbar = document.getElementById("homes");
            var sticky = navbar.offsetTop;

            function myFunction() {
                if (window.pageYOffset >= sticky) {
                    navbar.classList.add("sticky")
                } else {
                    navbar.classList.remove("sticky");
                }
            }
        </script>


    <!-----   (Search)   ----->


        <div class="searching" style="background-resources/images: url(resources/images/logo.jpg); background-size: 100% 100%;">
            <br><br><br><br><br>
            <center>
                <div class="searching1">
            <div class="input-group" style="width:50%; margin-left: 20%">
                <input type="text" class="form-control" placeholder="Enter what you need to find..." style="text-align:center">
                <div class="input-group-btn" style="width:1%;">
                  <button type="button" class="btn btn-danger" >Search</button>
              </div>
            </div>
            </div>
            </center>
            <br><br><br><br>
            </div>




    <!-----   (post trip)   ----->

    <div class="row" style="width:100%; margin-left: 0px;">

            <div class="col-md-6">
              <div class=" search" style="width: 100%; border-color:#006699; border-width :3px;">
                <img src="resources/images/search.jpg" style="width:100%; height: 70%;">
      
                <div class="search1">
                  <li>Find the perfect place</li><br>
                  <li>Millions of verified user reviews</li><br>
                  <li>Save upto 25%</li>
                  <br><br>
                  <button class="form-control zoom" style="height:20%; max-width: 70%; font-size: 2vmin"><b>Search Now</b></button>
                </div>
              </div>
            </div>
          </div>
      



<div class="resources/images">
<img src="resources/images/1.jpg" style="width:100%;">
</div>



</form>
</body>
</html>