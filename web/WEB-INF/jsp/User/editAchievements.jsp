<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Achievements - <s:property value="#session.userName" /></title>
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
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="resources/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="resources/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="resources/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="resources/ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="resources/ico/favicon.png">
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
              Welcome, <a href="#" class="navbar-link"><s:property value="#session.userName" /></a>
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
              <center><h2>Achievements</h2>
            <img class="img-rounded" src="resources/img/Me/achievement.png"/>
          
            <p class="pull-left">Don't miss out to include any of your achievements, whether be it participation in On-campus/Off-campus events or research papers presented. Don't forget to include sports here. </p>
          <p><a class="btn" href="#">Edit</a></p> </center>
            <ul class="nav nav-list">
              <li class="nav-header">Achievements Include</li>
              <li class="active"><a href="#">Achievement Title</a></li>
              <li><a href="#">Achievement Description</a></li>
              <li><a href="#">Sports Participation</a></li>
              <li><a href="#">Research Publications</a></li>
              <li><a href="#">On-Campus Events</a></li>
              <li><a href="#">Off-Campus Events</a></li>
              <li><a href="#">Volunterring Experiences</a></li>
              <li><a href="#">Need More Help ? </a></li>
              <li><a href="#">Have an idea ? Submit Here</a></li>
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span9">
          <div class="well sidebar-nav">
              
<s:if test="hasActionErrors()">
       <s:actionerror />
</s:if>
<s:if test="hasActionMessages()">
       <s:actionmessage/>
</s:if>
              
<s:form name="frmAchievementDtl" action="addAchievement" class="form-horizontal" enctype="multipart/form-data" method="POST">            
              
<fieldset>

<!-- Form Name -->
<h3 class="offset1">Achievements & Participation</h3>
<div class="control-group"></div>
<!-- Text input-->
<div class="control-group">
  <div class="controls">
      <s:textfield id="achievementTitle" name="achievementTitle" label="Achievement Title" placeholder="e.g. Participated/Won 1st Prize" class="input-xlarge" />
    
  </div>
</div>

<div class="control-group">
  <div class="controls">
      <s:textfield id="category" name="category" label="Category" placeholder="e.g. Sports, Publications, Business Plans" class="input-xlarge" />
    
  </div>
</div>


<!-- File Button --> 
<div class="control-group">
  <label class="control-label">Image, if any</label>
  <div class="controls">
      <input id="imageUpload" name="imageUpload" class="input-file" type="file">
  </div>
</div>

<div class="control-group">
  <div class="controls">
    <s:textfield id="eventName" name="eventName" label="Event Name" placeholder="e.g. Crisil Young Thoght Leaders" class="input-xlarge" />
    
  </div>
</div>


<!-- Text input-->
<div class="control-group">
  <div class="controls">
    <s:textfield id="organizers" name="organizers" label="Organizers" placeholder="e.g. Indian Institute Of Management, Ahmedabad" class="input-xlarge" />
    
  </div>
</div>

<!-- Textarea -->
<div class="control-group">
  <div class="controls">                     
      <s:textarea id="description" name="description" label="Description"  placeholder="How was your experience at this event?"></s:textarea>
  </div>
</div>


<div class="control-group">
  
  <div class="controls">
      <s:submit value="More Achievements+" id="submit" cssClass="btn btn-large btn-success"/>
           
    <button class="btn btn-large btn-success offset1" type="submit">Save</button>
        
  </div>
</div>

<table>
<tr>
    <th>Achievement Title</th>
    <th>Category</th>
    <th>Event Name</th>
    <th>Organizers</th>
    <th>Description</th>
    <th>Delete</th>
</tr>
<s:iterator value="userAchievementDtlsList" var="userAchievementDtl">
    <tr>
        <td><s:property value="achievementTitle"/></td>
        <td><s:property value="category"/></td>
        <td><s:property value="eventName"/></td>
        <td><s:property value="organizers"/></td>
        <td><s:property value="description"/> </td>
        <td><a href="delete?id=<s:property value="userAchievementId"/>">Delete</a></td>
    </tr> 
</s:iterator>
</table>


</fieldset>
</s:form>
              
          </div>
          
      <hr>

      <footer>
        <p>&copy; Company 2013</p>
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
