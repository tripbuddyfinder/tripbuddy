<!-----  (navbar)  ----->
<style>
 #navbar
            {
                opacity:0.9; 
                display: block;
                z-index: 99999;
                transition: top 0.3s;

            }

           #Navbar1 ul 
            {
                color: white;
                font-family: Bookman Old Style;
                font-size: 130%;
                list-style-type: none;
                margin: 0;
                padding: 0;
                overflow: hidden;
                background-color: #333;
            }

            </style>

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
