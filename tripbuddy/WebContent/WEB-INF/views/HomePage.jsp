<html>

<head>
  <link rel="stylesheet" href="resources/Homepage.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>

  <form name="login" action="#" method="post">

    <!-----  (header)  ----->

    <div class="header" style="font-size:20px">
      <h3>Trip Buddy Finder</h3>
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
              <li><a href="#about"><span class="glyphicon glyphicon-globe"></span> About</a></li>
            </ul>
            <ul class="nav navbar-nav">
              <li><a href="#contact"> <span class="glyphicon glyphicon-phone"></span> Contact</a></li>
            </ul>
            <ul class="nav navbar-nav  navbar-right">
              <li><a href="#services"><span class="glyphicon glyphicon-tasks"></span> services</a></li>
            </ul>
            <ul class="nav navbar-nav  navbar-right">
              <li><a href="#review"><span class="glyphicon glyphicon-list-alt"></span> Review</a></li>
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
    <!-----   (slide-show)   ----->


    <div id="myCarousel" class="carousel slide center" data-ride="carousel" style="width:100%;">

      <div class="carousel-inner" role="listbox">

        <div class="item active">
          <div style="width:100%; height: 400px;">
            <img src="resources/images/taj2.jpg" style="width:100%; height: 400px;">
            <div class="carousel-caption" style="bottom:1px;">
              <h3 id="heading">Taj Mahal</h3>
              <p id="subheading">Taj Mahal is the white domed marble mausoleum at Agra in India, one of the most
                admired monuments in the world</p>
            </div>
          </div>
        </div>

        <div class="item">
          <div style="width:100%; height: 400px;">
            <img src="resources/images/nainital1.jpg" style="width:100%; height: 400px;">
            <div class="carousel-caption" style="bottom:1px;">
              <h3 id="heading">Nainital</h3>
              <p id="subheading">Nainital is Kumaon’s biggest town and favorite hill retrea</p>
            </div>

          </div>
        </div>

        <div class="item">
          <div style="width:100%; height: 400px;">
            <img src="resources/images/ladakh2.jpg" style="width:100%; height: 400px;">
            <div class="carousel-caption" style="bottom:1px;">
              <h3 id="heading">Leh Ladakh</h3>
              <p id="subheading">Ladakh’s remarkably well-balanced traditional society has much to teach the West in
                terms of ecological awareness</p>
            </div>

          </div>
        </div>

        <div class="item">
          <div style="width:100%; height: 400px;">
            <img src="resources/images/goa.jpg" style="width:100%; height: 400px;">
            <div class="carousel-caption" style="bottom:1px;">
              <h3 id="heading">Goa</h3>
              <p id="subheading">Goa has so many beaches which offers a complete holiday experience for every traveler</p>
            </div>

          </div>
        </div>

        <div class="item">
          <div style="width:100%; height: 400px;">
            <img src="resources/images/shimla1.jpg" style="width:100%; height: 400px;">
            <div class="carousel-caption" style="bottom:1px;">
              <h3 id="heading">Manali</h3>
              <p id="subheading">Travelers assemble here to hang out in the hippie villages around the main town</p>
            </div>

          </div>

        </div>

        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>

        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </div>




    <!-----   (plan)   ----->

    <br>
    <div style="color:#006699; font-family: bookman old stylr; text-align:center; font-size: 80px;">
      Plan Your Trip
    </div>
    <br><br>
    <div style="width: 100%;font-family: bookman old stylr; font-size: 30px; color:#006699; width: 100%;" class="container-fluid">

      <div class="col-sm-3 zoom1" style="margin-left:8%;">
        <img src="resources/images/map2.png">
        Make a plan
      </div>


      <div class="col-sm-3 zoom1" style="margin-left:8%;">
        <img src="resources/images/customize.png">
        Customize it
      </div>


      <div class="col-sm-3 zoom1" style="margin-left:8%;">
        <img src="resources/images/manage.png">
        Manage it
      </div>
      <br>
    </div>

    <br><br><br>


    <!-----   (Search)   ----->


    <div class="row" style="width:100%; margin-left: 0px;">

      <div class="col-md-12">
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



    <!-----   (offer)   ----->
    <br><br><br><br>
    <div style="background-color:white;">

      <div style="color:#006699; text-align: center; font-family: bookman old style; font-size:30px;">
        <b> A HOLIDAY FOR EVERY MOOD</b></div>
      <br><br>

      <div class="row container-fluid " style="width:100%; margin-left: 0px;">

        <div class="col-md-3">
          <div class="thumbnail offer" style="border-color:#006699; border-width :3px;">
            <img src="resources/images/couple3.jpg" style="width:100%; height: 350px;">
          </div>
          <div style="  position: absolute; top: 80%; left: 50%; transform: translate(-50%, -50%); color:white; font-family: bookman old style; font-size: 200%; ">
            Couple
          </div>
        </div>
        <div class="col-md-3">
          <div class="thumbnail offer" style="border-color:#006699; border-width :3px;">
            <img src="resources/images/family2.jpg" style="width:100%;  height: 350px;">
          </div>
          <div style="  position: absolute; top: 80%; left: 50%;transform: translate(-50%, -50%); color:white; font-family: bookman old style; font-size: 200%; ">
            Family
          </div>
        </div>
        <div class="col-md-3">
          <div class="thumbnail offer" style="border-color:#006699; border-width :3px;">
            <img src="resources/images/friends1.jpg" style="width:100%;  height: 350px;">
          </div>
          <div style=" position: absolute; top: 80%; left: 50%;transform: translate(-50%, -50%); color:white; font-family: bookman old style; font-size: 200%; ">
            Friends
          </div>
        </div>
        <div class="col-md-3">
          <div class="thumbnail offer" style="border-color:#006699; border-width :3px;">
            <img src="resources/images/single3.jpg" style="width:100%;  height: 350px;">
          </div>
          <div style=" position: absolute; top: 80%; left: 50%;transform: translate(-50%, -50%); color:white; font-family: bookman old style; font-size: 200%; ">
            Single
          </div>
        </div>
      </div>
      <br><br>
      <br>
    </div>



    <!-----   (review)   ----->


    <div id="review" style="background-color:#006699;">
      <br><br>
      <div style="color:white; text-align: center; font-family: bookman old style; font-size:30px;">
        <b>USER REVIEW</b></div>
      <br><br>

      <div class="row container-fluid" style="width:100%; margin-left: 0px;">
        <div class="col-md-3">
          <div class="thumbnail zoom">
            <img src="resources/images/rajan.jpg" style="width:100%; height: 250px; ">
            <div class="caption" style="color:#006699; font-family: bookman old style; font-size:20px;">
              <p>Rajan,<br>
                Easy to use, cheapest price and secured. !
              </p>
            </div>
            </a>
          </div>
        </div>
        <div class="col-md-3">
          <div class="thumbnail zoom">
            <img src="resources/images/rahul.jpg" style="width:100%;  height: 250px;">
            <div class="caption" style="color:#006699; font-family: bookman old style; font-size:20px;">
              <p>Rahul,<br>
                I was treated very well thank you. !
              </p>
            </div>
            </a>
          </div>
        </div>
        <div class="col-md-3">
          <div class="thumbnail zoom">
            <img src="resources/images/yamini.jpg" style="width:100%;  height: 250px;">
            <div class="caption" style="color:#006699; font-family: bookman old style; font-size:20px;">
              <p>Yamini,<br>
                No extra fees. Simple to use. Satisfide. !
              </p>
            </div>
            </a>
          </div>
        </div>
        <div class="col-md-3">
          <div class="thumbnail zoom">
            <img src="resources/images/rita.jpg" style="width:100%;  height: 250px;">
            <div class="caption" style="color:#006699; font-family: bookman old style; font-size:20px;">
              <p>Rita,<br>
                Site is easy to use and great service.!
              </p>
            </div>
            </a>
          </div>
        </div>
      </div>
      <br><br>
      <br>
    </div>


    <!-----   (services)   ----->

    <div style="background-color:white;">
      <br><br>
      <div id="services" style="text-align: center;  font-size:220%; color:#006699 ; font-family: Bookman Old Style; font-style:italic; text-transform: uppercase;">
        <b>SERVICES</b></div>
      <br><br>
      <div class="container-fluid text-center" style="font-size:130%;  color: #006699; font-family: Bookman Old Style; font-style:italic; text-transform: uppercase;">
        <div class="row">

          <div class="col-sm-4">
            <span class="glyphicon glyphicon-road zoom" style="font-size:50px;"></span>
            <h4>TRAVEL</h4>
            <p>Travel any time any where</p>
          </div>

          <div class="col-sm-4">
            <span class="glyphicon glyphicon-heart zoom" style="font-size:50px;"></span>
            <h4>LOVE</h4>
            <p>Share love with friends</p>
          </div>

          <div class="col-sm-4">
            <span class="glyphicon glyphicon-user zoom" style="font-size:50px;"></span>
            <span class="glyphicon glyphicon-user zoom" style="font-size:50px;"></span>
            <span class="glyphicon glyphicon-user zoom" style="font-size:50px;"></span>
            <h4>Group</h4>
            <p>Travel with your group</p>
          </div>
        </div>

        <br><br>

        <div class="row">
          <div class="col-sm-4">
            <span class="glyphicon glyphicon-search zoom" style="font-size:50px;"></span>
            <h4>Search</h4>
            <p>Search perfect trip buddy</p>
          </div>

          <div class="col-sm-4">
            <span class="glyphicon glyphicon-phone zoom" style="font-size:50px;"></span>
            <h4>CHAT</h4>
            <p>discuss with your friends About trip</p>
          </div>

          <div class="col-sm-4">
            <span class="glyphicon glyphicon-wrench zoom" style="font-size:50px;"></span>
            <h4>easy WORK</h4>
            <p>Easy to search friends and make a trip </p>
          </div>
        </div>
      </div>
      <br><br>
    </div>



    <!-----   (contact)   ----->


    <div style="background-color:#006699">
      <div id="contact" class="container fluid" style="color:white;"><br><br><br>
        <p style="text-align: center;  font-size:220%; color: white; font-family: Bookman Old Style; font-style:italic; text-transform: uppercase;">
          <b>CONTACT</b></p>

        <div class="col-sm-4 center" style="font-family: bookman old style; font-size: 150%;"><br>
          <p>Contact us and we'll get back to you within 24 hours.
            <P class="glyphicon glyphicon-map-marker"> Delhi, India</P><br>
            <P class="glyphicon glyphicon-phone"> 91 9971906374</P><br>
            <P class="glyphicon glyphicon-envelope"> rahulkushwaha931@gmail.com</P><br>
        </div>

        <div class="col-sm-8"><br>

          <div class="row">
            <div class="col-sm-6">
              <input type="text" placeholder="Name" class="form-control">
              <br></div>
            <div class="col-sm-6">
              <input type="text" placeholder="E-Mail" class="form-control">
            </div><br>
          </div>
          <textarea placeholder="Comment" rows="5" class="form-control"></textarea>
        </div>
        <br>
        <div class="col-sm-2 pull-right zoom">
          <br> <br> <button class="form-control">SUBMIT</button>
          <br>
        </div>
      </div>
      <br>
      <br>
    </div>


    <!-----   (About) ok  ----->

    <div id="about" class="container fluid" style="color:#006699; font-family:bookman old style; ">
      <br><br>

      <div id="services" style="text-align: center;  font-size:220%; color:#006699 ; font-family: Bookman Old Style; font-style:italic; text-transform: uppercase;">
        <b>ABOUT</b></div>
      <br>
      <p style="font-family: Bookman Old Style; font-style:italic; font-size: 20px;">
        Trip Buddy Finder is a free web based social network project is a solution for someone to find a travel buddy
        to travel anywhere in domestic in multi groups, single groups or any type of groups that interest you.
        <br><br>
        This application can act as a single solution to carter all needs of the trip like booking of taxi for pick and
        drop, booking of hotel rooms to stay according to your need, it will also provide weather information of your
        dream place.
        <br><br><br><br><br>
      </p>
    </div>

    <!-----   (FOOTER)   ----->

    <div style="background-color:#006699">
      <br><br>
      <p style="font-family: Bookman Old Style;  font-size: 20px; color:white; text-align: center; font-style: italic;">
        <b> Copyright &copy; 2018 Trip Buddy Finder</b>
      </p>
      <br>
    </div>


    <!-----   (SIGNUP)   ----->

    <a href="#" class="btn btn-default btn-lg zoom" style="position: fixed; opacity:0.8; background-color:rgb(62, 107, 202); right: 3%; bottom: 3%; ">
      <span class="center glyphicon" style="color:white; font-size: 3vmin;"><b> <img src="resources/images/facebookwhite.png"
            style="width:5vmin;">
          LOGIN TO FACEBOOK</b></span></a>




  </form>
</body>
</head>

</html>