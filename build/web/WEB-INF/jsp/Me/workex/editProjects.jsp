
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Work Experience</title>
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
                                   

    <script>
function myFunction(name,job)
{

                var num     = $('.clonedInput').length; // how many "duplicatable" input fields we currently have
                var newNum  = new Number(num + 1);      // the numeric ID of the new input field being added
 
                // create the new element via clone(), and manipulate it's ID using newNum value
                var newElem = $('#input' + num).clone().attr('id', 'input' + newNum);
 
                // manipulate the name/id values of the input inside the new element
                newElem.children(':first').attr('id', 'name' + newNum).attr('name', 'name' + newNum);
 
                // insert the new element after the last "duplicatable" input field
                $('#input' + num).after(newElem);
 
                // enable the "remove" button
                $('#btnDel').attr('disabled','');
 
                // business rule: you can only add 5 names
                if (newNum == 5)
                    $('#btnAdd').attr('disabled','disabled');
    
alert("Welcome " + name + ", the " + job);
}
</script>

</script>

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
              <center><h2>Work Experience</h2>
            <img class="img-rounded" src="resources/img/Me/workex.png"/>
          
          <p>Add your Work Experience including Organization and the projects you have worked upon. Don't forget to include the role you performed in a team</p>
          <p><a class="btn" href="#">Edit</a></p> </center>
            <ul class="nav nav-list">
              <li class="nav-header">WorkEx Includes</li>
              <li><a href="#">Organization Name</a></li>
              <li><a href="#">City</a></li>
              <li><a href="#">Joining Date</a></li>
              <li><a href="#">Ending Date</a></li>
              <li><a href="#">Team Members</a></li>
              <li><a href="#">Description</a></li>
              <li><a href="#" style="color: lightcoral">Need More Help ? Click Here</a></li>
              <li><a href="#" style="color: crimson">Have an idea ? Submit Here</a></li>
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span9">
          <div class="well sidebar-nav">
             
              <h4 class="offset1" style="color: #999">Good judgment comes from experience, and experience comes from bad judgment.</h4>  
              
            <ul class="nav nav-tabs offset1 span9">
                
  <li><a href="#home" data-toggle="tab">Organization</a></li>
  <li><a href="#profile" data-toggle="tab" class="offset2">Projects</a></li>
  <li><a href="#messages" data-toggle="tab" class="offset2">Recommendations</a></li>
                
</ul>
              
              <form class="form-horizontal">
<fieldset>
<!-- Form Name -->
<table width="100%" id="mytable">
    <tbody class="clonedInput">
             <tr>
                 <td>
<!-- Text input-->
<div class="control-group">
  <label class="control-label">Project Name</label>
  <div class="controls">
    <input id="orgName" name="projName" type="text" placeholder="e.g. Supply Management System" class="input-xlarge" required="">
    
  </div>
</div>
              </td>
              <td></td>
            </tr>
            <tr><td>
<!-- Text input-->
<div class="control-group">
  <label class="control-label">Role</label>
  <div class="controls">
    <input id="orgTitle" name="projRole" type="text" placeholder="Your Role in this project" class="input-xlarge" required="">
    
  </div>
</div>
</td>
<td></td>
            </tr>
            <tr><td>
<!-- Select Basic -->
<div class="control-group span4">
  <label class="control-label">Month</label>
  <div class="controls">
    <select id="projMonth" name="projMonth" class="input-xlarge">
      <option>Jan</option>
      <option>Feb</option>
      <option>Mar</option>
      <option>Apr</option>
      <option>May</option>
      <option>Jun</option>
      <option>Jul</option>
      <option>Aug</option>
      <option>Sep</option>
      <option>Oct</option>
      <option>Nov</option>
      <option>Dec</option>
    </select>
  </div>
</div>
</td>
<td>
<!-- Select Basic -->
<div class="control-group pull-left">
  <label class="control-label">Year</label>
  <div class="controls">
    <select id="projYear" name="projYear" class="input-xlarge">
      <option>2001</option>
      <option>2002</option>
      <option>2003</option>
      <option>2004</option>
      <option>2005</option>
      <option>2006</option>
      <option>2007</option>
      <option>2008</option>
      <option>2009</option>
      <option>2010</option>
      <option>2011</option>
      <option>2012</option>
      <option>2013</option>
    </select>
  </div>
</div>
</td>            </tr>
            <tr>
<!-- Select Basic -->
<td>
         
</td>
<!-- Select Basic -->
<td>
         
</td>
            </tr>
            <tr>
<!-- Textarea -->
<td>
         <div class="control-group">
  <label class="control-label">Team Members</label>
  <div class="controls">                     
    <textarea id="orgTeamMembers" name="orgTeamMembers"></textarea>
  </div>
</div>
</td><td></td>    
            </tr>
            <tr>
<!-- Textarea -->
<td>
<div class="control-group">
  <label class="control-label">Description</label>
  <div class="controls">                     
    <textarea id="orgDesc" name="orgDesc"></textarea>
  </div>
</div>
<td><td></td>        </tr>
            <tr>
<!-- Button --><td>
<div class="control-group">
  <label class="control-label"></label>
  <div class="controls">
    <button id="addCompany" name="addCompany" class="btn btn-primary btn-large" onclick="myFunction('Harry Potter','Wizard')">Add More Projects+</button>
  </div>
</div>
</td><td>

<!-- Button -->
<div class="control-group">
  <label class="control-label"></label>
  <div class="controls">
    <button id="orgSubmit" name="orgSubmit" class="btn btn-inverse btn-large">Save</button>
  </div>
</div></td>
            </tr>
            <tr>
                <td>

                    <div class="control-group" >
                        <br/>
                    </div>
                    <hr>

      <footer>
          <p class="offset2">CampusLive Initiative by <a href="#">Jyot Patel</a> & <a href="#">Bhushan Zalavadia</a></p>
      </footer>
                </td><td></td>
</tr>
    </tbody>
</table>
</fieldset>
</form>

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
