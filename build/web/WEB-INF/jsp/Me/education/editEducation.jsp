
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Educational Details</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="resources/css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }

      @media (max-width: 980px) {
        /* Enable use of floated navbar text */
        .navbar-text.pull-right {
          float: none;
          padding-left: 5px;
          padding-right: 5px;
        }
      }
    </style>
    <link href="resources/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="resources/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="http://twitter.github.io/bootstrap/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="http://twitter.github.io/bootstrap/assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="http://twitter.github.io/bootstrap/assets/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="http://twitter.github.io/bootstrap/assets/ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="http://twitter.github.io/bootstrap/assets/ico/favicon.png">
  </head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="#">CampusLive</a>
          <div class="nav-collapse collapse">
            <p class="navbar-text pull-right">
              Welcome, <a href="#" class="navbar-link">Jyot Patel</a>
            </p>
            <ul class="nav">
              <li class="active"><a href="#">Home</a></li>
                <li><a href="#about">Resume</a></li>
                <li><a href="#contact">GD</a></li>
                <li><a href="#contact">Activity Center</a></li>
                <li><a href="#contact">Announcements</a></li>
                <li><a href="#contact">Placements</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span3">
            
          <div class="well sidebar-nav">
              <center><h2>Education</h2>
            <img class="img-rounded" src="resources/img/Me/education.png"/>
          
          <p>Add/Update your Educational Background here. Including schooling, graduation, post-graduation & doctorate details.</p>
          <p><a class="btn" href="#">Edit</a></p> </center>
            <ul class="nav nav-list">
              <li class="nav-header">Education Includes</li>
              <li><a href="#">School Name</a></li>
              <li><a href="#">City</a></li>
              <li><a href="#">Batch Year</a></li>
              <li><a href="#">Major Spcl</a></li>
              <li><a href="#">Minor Spcl</a></li>
              <li><a href="#">High School Details</a></li>
              <li><a href="#">Graduation Details</a></li>
              <li><a href="#">Masters Details</a></li>
              <li><a href="#">Doctorate Details</a></li>
              <li><a href="#" style="color: lightcoral">Need More Help ? Click Here</a></li>
              <li><a href="#" style="color: crimson">Have an idea ? Submit Here</a></li>
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span9">
          <div class="well sidebar-nav">
            
              <form class="form-horizontal">
<fieldset>

<!-- Form Name -->

<!-- Text input-->
<h3 class="offset1">School, College & Masters Details</h3>
<div class="control-group span4">
    <label class="control-label"></label>
  <div class="controls">
    
    
  </div>
</div>
<div class="control-group span5 offset1">
  <label class="control-label"></label>
  <div class="controls">
    
    
  </div>
</div>


<div class="control-group span4">
  <label class="control-label">School Name</label>
  <div class="controls">
      <input id="schoolName" name="schoolName" type="text" placeholder="School where you completed S.S.C." class="input-xlarge" required="">
    
  </div>
</div>

<!-- File Button --> 
<div class="control-group span5 offset1">
  <label class="control-label">City</label>
  <div class="controls">
    <input id="schoolCity" name="schoolCity" type="text" placeholder="City Name" class="input-xlarge" required="">
  </div>
</div>
<br/>
<!-- Text input-->
<div class="control-group span4">
  <label class="control-label">From-To</label>
  <div class="controls">
    <input id="schoolBatch" name="schoolBatch" type="text" placeholder="e.g. 2012-2014" class="input-xlarge" required="">
    
  </div>
</div>
<!-- File Button --> 
<div class="control-group span5 offset1">
    <div style="border-bottom: 1px;border-bottom-color: grey" >
  <label class="control-label">Specialization</label>
  <div class="controls">
    <input id="schoolSpecialization" name="schoolSpecialization" type="text" placeholder="e.g. Technical, Science" class="input-xlarge">
  </div>
</div>
</div>

<!-- High School Configuration Starts -->
<div class="control-group"></div>
<div class="control-group span4">
  <label class="control-label">High School Name</label>
  <div class="controls">
      <input id="highSchoolName" name="highSchoolName" type="text" placeholder="School where you completed H.S.C." class="input-xlarge" required="">
    
  </div>
</div>

<!-- File Button --> 
<div class="control-group span5 offset1">
  <label class="control-label">City</label>
  <div class="controls">
    <input id="highSchoolCity" name="highSchoolCity" type="text" placeholder="City Name" class="input-xlarge" required="">
  </div>
</div>
<br/>
<!-- Text input-->
<div class="control-group span4">
  <label class="control-label">From-To</label>
  <div class="controls">
    <input id="highSchoolBatch" name="highSchoolBatch" type="text" placeholder="e.g. 2012-2014" class="input-xlarge" required="">
    
  </div>
</div>
<!-- File Button --> 
<div class="control-group span5 offset1">
  <label class="control-label">Specialization</label>
  <div class="controls">
    <input id="highSchoolSpecialization" name="highSchoolSpecialization" type="text" placeholder="e.g. Science, Commerce" class="input-xlarge">
  </div>
</div>


<!-- College Configuration Starts -->
<div class="control-group"></div>
<div class="control-group span4">
  <label class="control-label">College Name</label>
  <div class="controls">
      <input id="collegeName" name="collegeName" type="text" placeholder="College where you Graduated" class="input-xlarge" required="">
    
  </div>
</div>

<!-- File Button --> 
<div class="control-group span5 offset1">
  <label class="control-label">City</label>
  <div class="controls">
    <input id="collegeCity" name="collegeCity" type="text" placeholder="City Name" class="input-xlarge" required="">
  </div>
</div>
<br/>
<!-- Text input-->
<div class="control-group span4">
  <label class="control-label">From-To</label>
  <div class="controls">
    <input id="collegeBatch" name="collegeBatch" type="text" placeholder="e.g. 2012-2014" class="input-xlarge" required="">
    
  </div>
</div>
<!-- File Button --> 
<div class="control-group span5 offset1">
  <label class="control-label">Specialization</label>
  <div class="controls">
    <input id="collegeSpecialization" name="collegeSpecialization" type="text" placeholder="e.g. Computer Science, Electrical" class="input-xlarge">
  </div>
</div>

<div class="control-group span4">
  <label class="control-label">Graduation Title</label>
  <div class="controls">
    <input id="collegeTitle" name="collegeTitle" type="text" placeholder="e.g. B.Tech,B.Com,B.Sc,B.Pharm" class="input-xlarge" required="">
    
  </div>
</div>



<!-- Masters Configuration Starts -->

<div class="control-group"></div>
<div class="control-group span4">
  <label class="control-label">Masters College Name</label>
  <div class="controls">
      <input id="mCollegeName" name="mCollegeName" type="text" placeholder="College where you Post-Graduated" class="input-xlarge" required="">
    
  </div>
</div>

<!-- File Button --> 
<div class="control-group span5 offset1">
  <label class="control-label">City</label>
  <div class="controls">
    <input id="mCollegeCity" name="mCollegeCity" type="text" placeholder="City Name" class="input-xlarge" required="">
  </div>
</div>
<br/>
<!-- Text input-->
<div class="control-group span4">
  <label class="control-label">From-To</label>
  <div class="controls">
    <input id="mCollegeBatch" name="mCollegeBatch" type="text" placeholder="e.g. 2012-2014" class="input-xlarge" required="">
    
  </div>
</div>
<!-- File Button --> 
<div class="control-group span5 offset1">
  <label class="control-label">Major</label>
  <div class="controls">
    <input id="mCollegeMajor" name="mCollegeMajor" type="text" placeholder="e.g. Operations, Human Resource" class="input-xlarge">
  </div>
</div>
<div class="control-group span4">
  <label class="control-label">Minor/Major2</label>
  <div class="controls">
    <input id="mCollegeMinor" name="mCollegeMinor" type="text" placeholder="e.g. Finance,Marketing" class="input-xlarge" required="">
    
  </div>
</div>
<div class="control-group span5 offset1">
  <label class="control-label">Masters Title</label>
  <div class="controls">
    <input id="mCollegeTitle" name="mCollegeTitle" type="text" placeholder="e.g. M.Tech, MBA" class="input-xlarge" required="">
    
  </div>
</div>
<!-- Doctorate Configuration Starts -->

<div class="fade"></div>
<div class="control-group span4">
  <label class="control-label">Doctorate College Name</label>
  <div class="controls">
      <input id="dCollegeName" name="dCollegeName" type="text" placeholder="College where you earned Doctorate" class="input-xlarge" required="">
    
  </div>
</div>

<!-- File Button --> 
<div class="control-group span5 offset1">
  <label class="control-label">City</label>
  <div class="controls">
    <input id="dCollegeCity" name="dCollegeCity" type="text" placeholder="City Name" class="input-xlarge" required="">
  </div>
</div>
<br/>
<!-- Text input-->
<div class="control-group span4">
  <label class="control-label">From-To</label>
  <div class="controls">
    <input id="dCollegeBatch" name="dCollegeBatch" type="text" placeholder="e.g. 2012-2014" class="input-xlarge" required="">
    
  </div>
</div>
<!-- File Button --> 
<div class="control-group span5 offset1">
  <label class="control-label">Major</label>
  <div class="controls">
    <input id="dCollegeMajor" name="dCollegeMajor" type="text" placeholder="e.g. Operations, Human Resource" class="input-xlarge">
  </div>
</div>
<div class="control-group span4">
  <label class="control-label">Doctorate Title</label>
  <div class="controls">
    <input id="dCollegeTitle" name="dCollegeTitle" type="text" placeholder="e.g. Ph.D" class="input-xlarge" required="">
    
  </div>
</div>

<div class="control-group span9">
  
  <div class="controls">
    <button class="btn btn-large btn-success" type="submit">Save</button>
    
  </div>
</div>



</fieldset>
</form>
          


      </div>
        </div>
      </div>
      <hr>

      <footer>
          <p>CampusLive Initiative by <a href="#">Jyot Patel</a> & <a href="#">Bhushan Zalavadia</a></p>
      </footer>

    </div><!--/.fluid-container-->

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

  </body>
</html>
