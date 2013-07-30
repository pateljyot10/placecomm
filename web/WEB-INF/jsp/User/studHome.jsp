<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>


<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html:html>

  <head>
    
    <title>Student Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <!-- Le styles -->
    <link href="resources/css/bootstrap.css" rel="stylesheet"/>
    <link href="resources/css/bootstrap-responsive.css" rel="stylesheet"/>
    <style>

    /* GLOBAL STYLES
    -------------------------------------------------- */
    /* Padding below the footer and lighter body text */

    body {
      padding-bottom: 40px;
      color: #5a5a5a;
    }



    /* CUSTOMIZE THE NAVBAR
    -------------------------------------------------- */

    /* Special class on .container surrounding .navbar, used for positioning it into place. */
    .navbar-wrapper {
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      z-index: 10;
      margin-top: 20px;
      margin-bottom: -90px; /* Negative margin to pull up carousel. 90px is roughly margins and height of navbar. */
    }
    .navbar-wrapper .navbar {

    }

    /* Remove border and change up box shadow for more contrast */
    .navbar .navbar-inner {
      border: 0;
      -webkit-box-shadow: 0 2px 10px rgba(0,0,0,.25);
         -moz-box-shadow: 0 2px 10px rgba(0,0,0,.25);
              box-shadow: 0 2px 10px rgba(0,0,0,.25);
    }

    /* Downsize the brand/project name a bit */
    .navbar .brand {
      padding: 14px 20px 16px; /* Increase vertical padding to match navbar links */
      font-size: 16px;
      font-weight: bold;
      text-shadow: 0 -1px 0 rgba(0,0,0,.5);
    }

    /* Navbar links: increase padding for taller navbar */
    .navbar .nav > li > a {
      padding: 15px 20px;
    }

    /* Offset the responsive button for proper vertical alignment */
    .navbar .btn-navbar {
      margin-top: 10px;
    }



    /* CUSTOMIZE THE CAROUSEL
    -------------------------------------------------- */

    /* Carousel base class */
    .carousel {
      margin-bottom: 60px;
    }

    .carousel .container {
      position: relative;
      z-index: 9;
    }

    .carousel-control {
      height: 80px;
      margin-top: 0;
      font-size: 120px;
      text-shadow: 0 1px 1px rgba(0,0,0,.4);
      background-color: transparent;
      border: 0;
      z-index: 10;
    }

    .carousel .item {
      height: 500px;
    }
    .carousel img {
      position: absolute;
      top: 0;
      left: 0;
      min-width: 100%;
      height: 500px;
    }

    .carousel-caption {
      background-color: transparent;
      position: static;
      max-width: 550px;
      padding: 0 20px;
      margin-top: 200px;
    }
    .carousel-caption h1,
    .carousel-caption .lead {
      margin: 0;
      line-height: 1.25;
      color: #fff;
      text-shadow: 0 1px 1px rgba(0,0,0,.4);
    }
    .carousel-caption .btn {
      margin-top: 10px;
    }



    /* MARKETING CONTENT
    -------------------------------------------------- */

    /* Center align the text within the three columns below the carousel */
    .marketing .span4 {
      text-align: center;
    }
    .marketing h2 {
      font-weight: normal;
    }
    .marketing .span4 p {
      margin-left: 10px;
      margin-right: 10px;
    }


    /* Featurettes
    ------------------------- */

    .featurette-divider {
      margin: 80px 0; /* Space out the Bootstrap hr more */
    }
    .featurette {
      padding-top: 120px; /* Vertically center images part 1: add padding above and below text. */
      overflow: hidden; /* Vertically center images part 2: clear their floats. */
    }
    .featurette-image {
      margin-top: -120px; /* Vertically center images part 3: negative margin up the image the same amount of the padding to center it. */
    }

    /* Give some space on the sides of the floated elements so text doesn't run right into it. */
    .featurette-image.pull-left {
      margin-right: 40px;
    }
    .featurette-image.pull-right {
      margin-left: 40px;
    }

    /* Thin out the marketing headings */
    .featurette-heading {
      font-size: 50px;
      font-weight: 300;
      line-height: 1;
      letter-spacing: -1px;
    }



    /* RESPONSIVE CSS
    -------------------------------------------------- */

    @media (max-width: 979px) {

      .container.navbar-wrapper {
        margin-bottom: 0;
        width: auto;
      }
      .navbar-inner {
        border-radius: 0;
        margin: -20px 0;
      }

      .carousel .item {
        height: 500px;
      }
      .carousel img {
        width: auto;
        height: 500px;
      }

      .featurette {
        height: auto;
        padding: 0;
      }
      .featurette-image.pull-left,
      .featurette-image.pull-right {
        display: block;
        float: none;
        max-width: 40%;
        margin: 0 auto 20px;
      }
    }


    @media (max-width: 767px) {

      .navbar-inner {
        margin: -20px;
      }

      .carousel {
        margin-left: -20px;
        margin-right: -20px;
      }
      .carousel .container {

      }
      .carousel .item {
        height: 300px;
      }
      .carousel img {
        height: 300px;
      }
      .carousel-caption {
        width: 65%;
        padding: 0 70px;
        margin-top: 100px;
      }
      .carousel-caption h1 {
        font-size: 30px;
      }
      .carousel-caption .lead,
      .carousel-caption .btn {
        font-size: 18px;
      }

      .marketing .span4 + .span4 {
        margin-top: 40px;
      }

      .featurette-heading {
        font-size: 30px;
      }
      .featurette .lead {
        font-size: 18px;
        line-height: 1.5;
      }

    }
    </style>

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="resources/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed"  href="http://twitter.github.io/bootstrap/assets/ico/apple-touch-icon-144-precomposed.png"/>
<link rel="apple-touch-icon-precomposed"  href="http://twitter.github.io/bootstrap/assets/ico/apple-touch-icon-114-precomposed.png"/>
<link rel="apple-touch-icon-precomposed"  href="http://twitter.github.io/bootstrap/assets/ico/apple-touch-icon-72-precomposed.png"/>
<link rel="apple-touch-icon-precomposed" href="http://twitter.github.io/bootstrap/assets/ico/apple-touch-icon-57-precomposed.png"/>
<link rel="shortcut icon" href="http://twitter.github.io/bootstrap/assets/ico/favicon.png"/>


  </head>

  <body>



    <!-- NAVBAR
    ================================================== -->
    <div class="navbar-wrapper">
      <!-- Wrap the .navbar in .container to center it within the absolutely positioned parent. -->
      <div class="container">

        <div class="navbar navbar-inverse">
          <div class="navbar-inner">
            <!-- Responsive Navbar Part 1: Button for triggering responsive navbar (not covered in tutorial). Include responsive CSS to utilize. -->
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="brand" href="#">CampusLive</a>
            <!-- Responsive Navbar Part 2: Place all navbar contents you want collapsed withing .navbar-collapse.collapse. -->
            <div class="nav-collapse collapse">
              <ul class="nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#about">Resume</a></li>
                <li><html:link page="/GroupDiscussion.do">GD</html:link></li>
                <li><a href="#contact">Activity Center</a></li>
                
                <li><a href="#contact">Placements</a></li>
                <!-- Read about Bootstrap dropdowns at http://twitter.github.com/bootstrap/javascript.html#dropdowns -->
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Settings<b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li class="nav-header">Nav header</li>
                    <li><a href="#">Separated link</a></li>
                    <li><a href="#">One more separated link</a></li>
                  </ul>
                </li>
              </ul>
            <ul class="nav pull-right">
                <li class="active"><a href="#">Welcome, <%= session.getAttribute("username") %> </a></li>
                
                </li>
              </ul>
            </div><!--/.nav-collapse -->
          </div><!-- /.navbar-inner -->
        </div><!-- /.navbar -->

      </div> <!-- /.container -->
    </div><!-- /.navbar-wrapper -->



    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide">
      <div class="carousel-inner">
        <div class="item active">
          <img src="resources/img/slide/slide-01.jpg" alt=""/>
          <div class="container">
            <div class="carousel-caption">
              <h1>What's New on Campus ?</h1>
              <p class="lead">Get to know the latest events, seminars, internships, placements and activity of other's which might interest you.</p>
              <a class="btn btn-large btn-primary" href="#">Go to Activity Center</a>
            </div>
          </div>
        </div>
        <div class="item">
          <img src="resources/img/slide/slide-02.jpg" alt=""/>
          <div class="container">
            <div class="carousel-caption">
              <h1>Fear of Group Discussion ?</h1>
              <p class="lead">Now share your ideas on daily topics and discuss it with your batchmates and get ready for the next round of Group Discussion. It's time to sharpen your GD skills.</p>
              <a class="btn btn-large btn-primary" href="#">Go to Discussion Center</a>
            </div>
          </div>
        </div>
        <div class="item">
          <img src="resources/img/slide/slide-03.jpg" alt=""/>
          <div class="container">
            <div class="carousel-caption">
              <h1>Have a Great news for Everyone ?</h1>
              <p class="lead">Start floating the news which can help your batchmates.</p>
              <a class="btn btn-large btn-primary" href="#">Go to Class Room</a>
            </div>
          </div>
        </div>
      </div>
        <a class="left carousel-control" href="#myCarousel" data-slide="prev"></a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next">R</a>
    </div><!-- /.carousel -->



    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->
    
    <div class="container marketing">

      <!-- Three columns of text below the carousel -->
      <div class="row">
        <div class="span4">
          <h2>Personal Info</h2>
          <html:link action="/personalinfo" ><img class="img-rounded"  src="resources/img/Me/personalinfo.png"/></html:link>
          
          <p>Let's update your Personal Information including Name, Image, DoB, Interests, etc.</p>
          <!-- <p><a class="btn" href="/person" >Edit Here</a></p> -->
        </div><!-- /.span4 -->
        <div class="span4">
            <h2>Contact Info</h2>
            <html:link action="/contactinfo" ><img class="img-rounded" src="resources/img/Me/contactinfo.png"/></html:link>
          <p>Edit your contact information such as Contact Number, Email and update your blogs created recently.</p>
          <p><a class="btn" href="#">Edit Here</a></p>
        </div><!-- /.span4 -->
        <div class="span4">
          <h2>Education</h2>
          <html:link action="/education" >  <img class="img-rounded" src="resources/img/Me/education.png"/></html:link>
          <p>Update your School, High School & Graduation Details and even include your grades if you want to.</p>
          <p><a class="btn" href="#">Edit Here </a></p>
        </div><!-- /.span4 -->
      </div><!-- /.row -->

      <div class="row">
        <div class="span4">
          <h2>Work Experience</h2>
           <html:link action="/workex" > <img class="img-rounded" src="resources/img/Me/workex.png"/></html:link>
          
          <p>Earlier worked with any organization ? Update details regarding the projects you worked upon.</p>
          <p><a class="btn" href="#">Edit Here</a></p>
        </div><!-- /.span4 -->
        <div class="span4">
            <h2>Achievements</h2>
          <html:link action="/achievement" >  <img class="img-rounded" src="resources/img/Me/achievement.png"/></html:link>
          <p>Love to win the game ? Now boast of your winning attitude by recording your achievements.</p>
          <p><a class="btn" href="#">Edit Here</a></p>
        </div><!-- /.span4 -->
        <div class="span4">
            <h2>Account Details</h2>
          <html:link action="/accountdetails" >  <img class="img-rounded" src="resources/img/Me/settings.png"/></html:link>
          <p>Here you can change your username, password, section, etc.</p>
          <p><a class="btn" href="#">Edit Here</a></p>
        </div><!-- /.span4 -->
      </div><!-- /.row -->

      <!-- START THE FEATURETTES -->

      <hr class="featurette-divider"/>

      <div class="featurette">
        <img class="featurette-image pull-right" src="http://twitter.github.io/bootstrap/assets/img/examples/browser-icon-chrome.png"/>
        <h2 class="featurette-heading">First featurette headling. <span class="muted">It'll blow your mind.</span></h2>
        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
      </div>

      <hr class="featurette-divider"/>

      <div class="featurette">
        <img class="featurette-image pull-left" src="http://twitter.github.io/bootstrap/assets/img/examples/browser-icon-firefox.png"/>
        <h2 class="featurette-heading">Oh yeah, it's that good. <span class="muted">See for yourself.</span></h2>
        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
      </div>

      <hr class="featurette-divider"/>

      <div class="featurette">
        <img class="featurette-image pull-right" src="http://twitter.github.io/bootstrap/assets/img/examples/browser-icon-safari.png"/>
        <h2 class="featurette-heading">And lastly, this one. <span class="muted">Checkmate.</span></h2>
        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
      </div>

      <hr class="featurette-divider"/>

      <!-- /END THE FEATURETTES -->


      <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p> CampusLive  Initiative by <a href="#">Jyot Patel</a> and <a href="#">Anjana Suvariya</a></p>
      </footer>

    </div><!-- /.container -->



    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="resources/js/jquery.js"></script>
    <script src="resources/js/bootstrap-transition.js"></script>
    <script src="resources/js/bootstrap-alert.js"></script>
    <script src="resources/js/bootstrap-modal.js"></script>
    <script src="resources/js/bootstrap-dropdown.js"></script>
    <script src="resources/js/bootstrap-scrollspy.js"></script>
    <script src="resources/js/bootstrap-tab.js"></script>
    <script src="resources/js/bootstrap-tooltip.js"></script>
    <script src="resources/js/bootstrap-popover.js"></script>
    <script src="resources/js/bootstrap-button.js"></script>
    <script src="resources/js/bootstrap-collapse.js"></script>
    <script src="resources/js/bootstrap-carousel.js"></script>
    <script src="resources/js/bootstrap-typeahead.js"></script>
    <script>
      !function ($) {
        $(function(){
          // carousel demo
          $('#myCarousel').carousel()
        })
      }(window.jQuery)
    </script>
    <script src="resourcesjs/holder/holder.js"></script>
  </body>
</html:html>
