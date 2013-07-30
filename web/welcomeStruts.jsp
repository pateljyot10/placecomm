<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html:html>
  <head>
    <title>Pathshala Inc</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <!-- Bootstrap -->
    <link href="resources/css/bootstrap-responsive.css" rel="stylesheet"></link>
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" media="screen"/>
    <link href="resources/css/bootstrap.css" rel="stylesheet" media="screen"/>
  <link href="resources/css/bootstrap-responsive.css" rel="stylesheet" media="screen"/>
  <link href="resources/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen"/>

  <!-- Sticky Footer Style -->
  <style type="text/css">

      /* Sticky footer styles
      -------------------------------------------------- */

      html,
      body {
        height: 100%;
        /* The html and body elements cannot have any padding or margin. */
      }

      /* Wrapper for page content to push down footer */
      #wrap {
        min-height: 100%;
        height: auto !important;
        height: 100%;
        /* Negative indent footer by it's height */
        margin: 0 auto -60px;
      }

      /* Set the fixed height of the footer here */
      #push,
      #footer {
        height: 60px;
      }
      #footer {
        background-color: #f5f5f5;
      }

      /* Lastly, apply responsive CSS fixes as necessary */
      @media (max-width: 767px) {
        #footer {
          margin-left: -20px;
          margin-right: -20px;
          padding-left: 20px;
          padding-right: 20px;

        }
      }



      /* Custom page CSS
      -------------------------------------------------- */
      /* Not required for template or sticky footer method. */

      .container {
        width: auto;
        max-width: 680px;
      }
      .container .credit {
        margin: 20px 0;
      }

    </style>

     <link rel="apple-touch-icon-precomposed"  href="http://twitter.github.io/bootstrap/assets/ico/apple-touch-icon-144-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed"  href="http://twitter.github.io/bootstrap/assets/ico/apple-touch-icon-114-precomposed.png"/>
      <link rel="apple-touch-icon-precomposed"  href="http://twitter.github.io/bootstrap/assets/ico/apple-touch-icon-72-precomposed.png"/>
                    <link rel="apple-touch-icon-precomposed" href="http://twitter.github.io/bootstrap/assets/ico/apple-touch-icon-57-precomposed.png"/>
                                   <link rel="shortcut icon" href="http://twitter.github.io/bootstrap/assets/ico/favicon.png"/>

  </head>
  <body>
        <div id="wrap">
      <h1> &nbsp;   Pathshala </h1>

  <div class="navbar">
  <div class="navbar-inner">

    <ul class="nav" >
      <li class="active"><a href="#">Sign In</a></li>
      <li><a href="#">The Team</a></li>
      <li><a href="#">Products</a></li>
      <li><a href="#">Our Clients</a></li>
      <li><a href="#">Careers</a></li>
      <li><a href="#">Contact US</a></li>
    </ul>
  </div>
</div>


     <div class="row">
         <div class="span7 offset1" >
    <form class="form-signin" action="">
        <div style="border-right: 2px dotted tomato;">
        <h2 class="form-signin-heading">Not a Member yet? Sign Up Here.</h2>
        <input type="text" class="input-text" Placeholder="Username"/><br/>
        <input type="password" class="input-password" Placeholder="Password"/></br>
        <input type="password" class="input-password" Placeholder="Activation Code"/>
        <br/>
        <div class="control-group">
  <label class="control-label">Category :</label>
  <div class="controls">
    <label class="radio inline">
      <input type="radio" name="userType" value="Student" checked="checked">
      Student
    </label>
    <label class="radio inline">
      <input type="radio" name="userType" value="Faculty">
      Faculty
    </label>
    <label class="radio inline">
      <input type="radio" name="userType" value="HR Manager">
      HR Manager
    </label>
    <label class="radio inline">
      <input type="radio" name="userType" value="Alumni">
      Alumni
    </label>
  </div>
</div>
<br/>
        <button class="btn btn-large btn-success" type="submit">Sign Up</button>
        </div>
    </form>
         </div>


         <div class="span3 offset1">
        
     <html:form   styleClass="form-signin" action="/login" method="post">

        <h2 class="form-signin-heading">Sign In</h2>
        
        <input name="loginUsername" type="text" class="input-text" Placeholder="Username"/><br/>
                
        <input name="loginPassword" type="password" class="input-password" Placeholder="Password"/>
        
        <br/>
        <label class="checkbox">
          <input type="checkbox" value="remember-me"/> Remember me
        </label>
        <br/>
        <button class="btn btn-large btn-primary" type="submit">Sign In</button>
        <br/>
        <html:errors name="login"/>
      </html:form>
      
         </div>
     </div>
       <div id="push"></div>
     <div id="footer">
      <div class="container">
          <p class="muted credit">CampusLive initiative by <a href="http://martinbean.co.uk">Jyot Patel</a> and <a href="http://ryanfait.com/sticky-footer/">Bhushan Zalavadia</a></p>
      </div>
    </div>
        </div>
    <script src="resources/js/jquery.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->

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

  </body>
</html:html>