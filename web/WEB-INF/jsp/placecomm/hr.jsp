<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html>
<html lang="en">

        <head>
            <meta charset="utf-8">
            <title>HR Leads</title>
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta name="description" content="A preview of the jQuery UI Bootstrap theme.">
            <meta name="author" content="Addy Osmani">

            <!-- Le styles -->
    <link rel="stylesheet" href="resources/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/custom-theme/jquery-ui-1.10.3.custom.css">
    <link rel="stylesheet" href="resources/assets/css/font-awesome.min.css">
    
    <link href="http://utopiaadmin.themio.net/css/utopia-responsive.css" rel="stylesheet">
    <link href="http://utopiaadmin.themio.net/css/ie.css" rel="stylesheet">
    <link href="http://utopiaadmin.themio.net/css/social_icon/icons.css" rel="stylesheet" type="text/css"/>
    <link href="http://utopiaadmin.themio.net/css/koottam/css/koottam.css" rel="stylesheet"/>

    <script type="text/javascript" src="http://utopiaadmin.themio.net/js/jquery.min.js"></script>
    <script type="text/javascript" src="http://utopiaadmin.themio.net/js/jquery.cookie.js"></script>



            <!--[if IE 7]>
            <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css">
            <![endif]-->
            <!--[if lt IE 9]>
            <link rel="stylesheet" href="css/custom-theme/jquery.ui.1.10.2.ie.css">
            <![endif]-->
            <link rel="stylesheet" href="resources/assets/css/docs.css">
            <link rel="stylesheet" href="resources/assets/js/google-code-prettify/prettify.css">

            <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
            <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
            <![endif]-->

            <!-- Le fav and touch icons -->
            <link rel="apple-touch-icon-precomposed" sizes="144x144" href="resources/assets/ico/apple-touch-icon-144-precomposed.png">
            <link rel="apple-touch-icon-precomposed" sizes="114x114" href="resources/assets/ico/apple-touch-icon-114-precomposed.png">
            <link rel="apple-touch-icon-precomposed" sizes="72x72" href="resources/assets/ico/apple-touch-icon-72-precomposed.png">
            <link rel="apple-touch-icon-precomposed" href="resources/assets/ico/apple-touch-icon-57-precomposed.png">
            <link rel="shortcut icon" href="resources/assets/ico/favicon.png">

        </head>

        <body data-spy="scroll" data-target=".bs-docs-sidebar" data-twttr-rendered="true" style="z-index:1800">

        <!-- Navbar
        ================================================== -->
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="brand" href="http://github.com/addyosmani/jquery-ui-bootstrap">Placecomm</a>
                    <div class="nav-collapse collapse">
                        <ul class="nav">
                            <li >
                                <a href="./index.html">Home</a>
                            </li>
                            <li class="dropdown active">
                                <a href="/navigation.do" class="dropdown-toggle" data-toggle="dropdown">
                                    Recruiters <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu">
                                    
                                    <li><html:link page="/NevigationHandler.do" tabindex="-1">Manage Recruiters</html:link></li>
                                    <li><a tabindex="-1" href="theme/united/index.html">Learn about Recruiters</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    HR Leads <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu">
                                    <li><a tabindex="-1" href="./index.html">Manage HRs</a></li>
                                    <li><a tabindex="-1" href="theme/united/index.html">Learn about HRs</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    Alumni Leads <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu">
                                    <li><a tabindex="-1" href="./index.html">Add New Alumnis </a></li>
                                    <li><a tabindex="-1" href="theme/united/index.html">View/Edit Alumnis </a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    Stories <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu">
                                    <li><a tabindex="-1" href="./index.html">Calling & Appointment</a></li>
                                    <li><a tabindex="-1" href="theme/united/index.html">Custom Stories</a></li>
                                    <li><a tabindex="-1" href="theme/united/index.html">Interest Invites</a></li>
                                    <li><a tabindex="-1" href="theme/united/index.html">Interview Scheduling</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    Plan <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu">
                                    <li><a tabindex="-1" href="./index.html">Resource Utilization</a></li>
                                    <li><a tabindex="-1" href="theme/united/index.html">Performance Indicators</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    Placecomms <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu">
                                    <li><a tabindex="-1" href="./index.html">Jyot Patel</a></li>
                                    <li><a tabindex="-1" href="theme/united/index.html">Arpen Vora</a></li>
                                    <li><a tabindex="-1" href="theme/united/index.html">Syed Shoeb</a></li>
                                    <li><a tabindex="-1" href="theme/united/index.html">Bhushan Zalavadia</a></li>
                                    <li><a tabindex="-1" href="theme/united/index.html">Saurabh Kumar</a></li>
                                    <li><a tabindex="-1" href="theme/united/index.html">Natali Mathew</a></li>
                                    <li><a tabindex="-1" href="theme/united/index.html">Vanditha Ravi</a></li>
                                </ul>
                            </li>
                            
                        </ul>
                        <div id="twitter-share" class="pull-right">
                            <a href="https://twitter.com/share" class="twitter-share-button" data-url="http://addyosmani.github.com/jquery-ui-bootstrap/" data-text="A new jQuery UI 
Bootstrap theme" data-via="addyosmani" data-size="large">Tweet</a>
                            <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement
(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- Subhead
        ================================================== -->
        <header class="jumbotron subhead" id="overview" style="background-image: linear-gradient(-45deg, #B24926 0%, rgb(25, 102, 0) 
100%)">
            <div class="container" >
                <h1>Human Resources</h1>
                <p class="lead">Add,Edit,Search,Delete,Classify & Sort HR Profiles</p>
                <a data-toggle="modal" href="#myModal" class="btn btn-large btn-success" style="color: white"><i class="icon-plus-sign icon-
white"></i> Add HR Profile</a>
            </div>
        </header>


<br/>
        <div class="container">
        <!-- Docs nav ================================================== -->
        <div class="row">
        
        <div class="span12">

                 <div class="utopia-widget-content" style="display: block;">

                        <table class="table datatable table-striped table-bordered" id="gdTable">


                            <thead>

                                <tr>
                                    <th></th>
                                    <th>HR Name</th>
                                    <th>Company</th>
                                    <th>Designation</th>
                                    <th>Telephone</th>
                                    <th>Mobile</th>
                                    <th>Email ID</th>
                                    <th>Fax ID</th>
                                    <th>Address</th>
                                    <th>Link</th>
                                    <th>Link</th>
                                    <th>Link</th>
                                    <th>Other Details</th>
                                    
                                </tr>
                            </thead>

                            <tbody>
                                <tr>
                                    <td> <input type="checkbox" name="checkboxes" value="Option one"></td>    
                                        <td>Mr Ashok L. Patel</td>
                                        <td>TCS</td>
                                        <td>Manager-HR</td>
                                        <td>021-2584420</td>
                                        <td>9429500361</td>
                                        <td class="more">JYOTPATEL.IMNU@GMAIL.COM</td>
                                        <td>079-2587748</td>
                                        <td>Infocity, Gandhinagar</td>
                                        <td><div class="social-box-icon">
                                                <a href="#" class="zocial icon facebook">Sign in with Facebook</a>
                                            </div>    
                                        </td>
                                        <td><div class="social-box-icon">
                                                <a href="#" class="zocial icon twitter">Sign in with Facebook</a>
                                            </div>    
                                        </td>
                                        <td><div class="social-box-icon">
                                                <a href="#" class="zocial icon linkedin">Sign in with Facebook</a>
                                            </div>    
                                        </td>
                                        <td class="more">Regular recruiter and Cool person, high repo with nirma</td>
                                    </tr>
                                

                            </tbody>

                        </table>

                        <div class="utopia-table-action">
                            <div class="btn-group">
                                <a href="http://utopiaadmin.themio.net/dashboard.html#" class="btn"><i class="icon-cog"></i> Actions</a>
                                <a href="http://utopiaadmin.themio.net/dashboard.html#" data-toggle="dropdown" class="btn dropdown-toggle"><span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="http://utopiaadmin.themio.net/dashboard.html#"><i class="icon-eye-open"></i> View</a></li>
                                    <li><a href="http://utopiaadmin.themio.net/dashboard.html#"><i class="icon-pencil"></i> Edit</a></li>
                                    <li><a href="http://utopiaadmin.themio.net/dashboard.html#"><i class="icon-trash"></i> Delete</a></li>
                                </ul>
                            </div>
                        </div>

                    </div>
            
        </div>
    </div>
</div>

<!-- Footer
================================================== -->
<footer class="footer">
    <div class="container">
        <div class="row">
          <div class="span3">
            <h3><span class="icon-envelope"></span> Contact</h3>
            <ul class="icons">
              <li><i class="icon-link"></i> Blog: <a class="targetblank" href="http://addyosmani.com/blog/">Jyot Patel</a></li>
              <li><i class="icon-twitter"></i> Twitter: <a class="targetblank" href="https://twitter.com/addyosmani">@jyotpatel</a></li>
              <li><i class="icon-github"></i> Github: <a class="targetblank" href="https://github.com/addyosmani/jquery-ui-bootstrap/issues?state=open">Issues</a></li>
            </ul>
          </div>
          <div class="span9">
            <div class="span4">
                <h3><span class="icon-group"></span> Team</h3>
                <ul class="unstyled">
                    <li>Lead Product Developer : <a class="targetblank" href="http://addyosmani.com/blog/" hreflang="en">Anjana Suvariya</a></li>
                    <li>Chief Product Designer : <a class="targetblank" href="http://blog.aurelien-gerits.be" hreflang="fr">Jyot Patel</a></li>
                </ul>
            </div>
            <div class="span4">
                <h3><span class="icon-lightbulb"></span> Credits</h3>
                <ul class="unstyled">
                    <li>jQuery UI Bootstrap &copy; <strong class="text-info">Addy Osmani</strong> 2012 - 2013.</li>
                    <li>Twitter Bootstrap &copy; <strong class="text-info">Twitter</strong> 2012 - 2013</li>
                    <li>Nirma University &copy; <strong class="text-info">IMNU</strong> 2012 - 2014</li>
                </ul>
            </div>
          </div>
        </div>
    </div>
</footer>

  <div class="modal fade" id="myModal" style="display:none">
    <div class="modal-dialog" style="z-index: 901" >
      <div class="modal-content" style="z-index: 902">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title">Add HR Profiles</h4>
        </div>
          <form class="form-horizontal">
          <div class="modal-body">
          
<fieldset>
<div class="control-group">
  <label class="control-label" for="hrName">HR Name</label>
  <div class="controls">
    <input id="hrName" name="hrName" type="text" placeholder="Enter the Name of Lead" class="input-large" required="">
    
  </div>
</div>

<!-- Select Basic -->
<div class="control-group">
  <label class="control-label" for="hrCompany">Select Company</label>
  <div class="controls">
    <select id="hrCompany" name="hrCompany" class="input-large">
      <option>TCS</option>
      <option>Cognizant</option>
      <option>Infosys</option>
      <option>Accenture</option>
      <option>IBM</option>
      <option>Google</option>
      <option>Microsoft</option>
    </select>
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="hrDesignation">Designation</label>
  <div class="controls">
    <input id="hrDesignation" name="hrDesignation" type="text" placeholder="e.g. Manager-HR" class="input-large">
    
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="hrTelephone">Telephone</label>
  <div class="controls">
    <input id="hrTelephone" name="hrTelephone" type="text" placeholder="e.g. 079-1234564" class="input-large">
    
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="hrMobile">Mobile</label>
  <div class="controls">
    <input id="hrMobile" name="hrMobile" type="text" placeholder="e.g. 9876543210" class="input-large">
    
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="hrEmail">Email ID</label>
  <div class="controls">
    <input id="hrEmail" name="hrEmail" type="text" placeholder="e.g. jyotpatel.imnu@gmail.com" class="input-large">
    
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="hrFax">Fax ID</label>
  <div class="controls">
    <input id="hrFax" name="hrFax" type="text" placeholder="" class="input-large">
    
  </div>
</div>

<!-- Textarea -->
<div class="control-group">
  <label class="control-label" for="hrAddr">Address</label>
  <div class="controls">                     
    <textarea id="hrAddr" name="hrAddr"></textarea>
  </div>
</div>

<!-- Textarea -->
<div class="control-group">
  <label class="control-label" for="hrOtherDetails">Other Details</label>
  <div class="controls">                     
    <textarea id="hrOtherDetails" name="hrOtherDetails"></textarea>
  </div>
</div>

<!-- Prepended text-->
<div class="control-group">
  <label class="control-label" for="fbLink">Facebook Link</label>
  <div class="controls">
    <div class="input-prepend">
      <span class="add-on">www.facebook.com/</span>
      <input id="fbLink" name="fbLink" class="input-small"  type="text">
    </div>
    
  </div>
</div>

<div class="control-group">
  <label class="control-label" for="twitterLink">Twitter Link</label>
  <div class="controls">
    <div class="input-prepend">
      <span class="add-on">www.twitter.com/</span>
      <input id="twitterLink" name="twitterLink" class="input-small"  type="text">
    </div>
    
  </div>
</div>


<div class="control-group">
  <label class="control-label" for="linkedinLink">LinkedIn Link</label>
  <div class="controls">
    <div class="input-prepend">
      <span class="add-on">www.LinkedIn.com/</span>
      <input id="linkedinLink" name="linkedinLink" class="input-small"  type="text">
    </div>
    
  </div>
</div>

</fieldset>


            
            
        </div>
        <div class="modal-footer">
          <a href="#" class="btn btn-inverse"><i class="icon-retweet icon-white"></i> Reset</a>
          <a href="#" class="btn btn-primary"><i class="icon-share-alt icon-white"></i> Save</a>
        </div>
          </form>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->



<!-- Placed at the end of the document so the pages load faster -->
<script src="resources/assets/js/jquery-1.9.0.min.js"></script>
<script src="resources/assets/js/bootstrap.min.js"></script>
<script src="resources/assets/js/holder.js"></script>
<script src="resources/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
<script src="resources/assets/js/google-code-prettify/prettify.js"></script>
<script src="resources/assets/js/docs.js"></script>
<script src="resources/assets/js/demo.js"></script>
<script type="text/javascript" src="resources/js1/u/utopia.js"></script>
<script type="text/javascript" src="resources/assets/js/module/placecomm/jquery.easyModal.js"></script>     
<script type="text/javascript" src="resources/assets/js/module/placecomm/jquery.shorten.min.js"></script>     
<script type="text/javascript">
    $(function() {
			$(".more").shorten();
		});
</script>








<script type="text/javascript" src="resources/js1/u/jquery.min.js"></script>

<script type="text/javascript" src="resources/js1/u/utopia.js"></script>
<script type="text/javascript" src="resources/js1/u/jquery.datatable.js"></script>
<script type="text/javascript" src="resources/js1/u/tables.js"></script>
<script type="text/javascript" src="resources/css/utopia-white.css"></script>

    <script type="text/javascript" src="http://utopiaadmin.themio.net/js/koottam/js/jquery.koottam.js"></script>
    <script type="text/javascript" src="http://utopiaadmin.themio.net/js/api.js"></script>
    <script type="text/javascript" src="http://utopiaadmin.themio.net/js/header.js?v1"></script>
    <script type="text/javascript" src="http://utopiaadmin.themio.net/js/sidebar.js"></script>



</body>
</html>
