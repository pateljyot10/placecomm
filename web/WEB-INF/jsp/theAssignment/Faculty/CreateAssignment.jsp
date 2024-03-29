<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<html:html>
    <head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><style type="text/css">@media print {  .gmnoprint {    display:none  }}@media screen {  .gmnoscreen {    display:none  }}</style>
        <meta charset="utf-8">
        <title>the Assignment</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A complete admin panel theme">
        <meta name="author" content="theemio">

        <!-- styles -->

        <link href="resources/css/utopia-white.css" rel="stylesheet">
        <link href="resources/css/utopia-responsive.css" rel="stylesheet">
        <link href="resources/css/jquery-ui.css" rel="stylesheet" type="text/css">
        <link href="resources/css/weather.css" rel="stylesheet" type="text/css">
        <link href="resources/css/gallery/modal.css" rel="stylesheet">
        <link href="resources/css/validationEngine.jquery.css" rel="stylesheet" type="text/css">
        <link href="resources/css/chosen.css" media="screen" rel="stylesheet" type="text/css">
        <link href="resources/css/jgrowl/jquery.jgrowl.css" rel="stylesheet" type="text/css">
        <link href="resources/css/adipoli/adipoli.css" rel="stylesheet" type="text/css">
        <link href="resources/css/datepicker/datepicker.css" rel="stylesheet" type="text/css">
        <link href="resources/css/validate/validationEngine.jquery.css" rel="stylesheet" type="text/css">
        <link href="resources/css/ie.css" rel="stylesheet">


        <script type="text/javascript">
            if($.cookie("css")) {
                $('link[href*="utopia-white.css"]').attr("href",$.cookie("css"));
                $('link[href*="utopia-dark.css"]').attr("href",$.cookie("css"));
                $('link[href*="utopia-wooden.css"]').attr("href",$.cookie("css"));
            }
            $(document).ready(function() {
                $(".theme-changer a").live('click', function() {
                    $('link[href*="utopia-white.css"]').attr("href",$(this).attr('rel'));
                    $('link[href*="utopia-dark.css"]').attr("href",$(this).attr('rel'));
                    $('link[href*="utopia-wooden.css"]').attr("href",$(this).attr('rel'));
                    $.cookie("css",$(this).attr('rel'), {expires: 365, path: '/'});
                    $('.user-info').removeClass('user-active');
                    $('.user-dropbox').hide();
                });
            });
        </script>

        <!--[if IE 8]>
        <link href="css/ie8.css" rel="stylesheet">
        <![endif]-->

        <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <!--[if gte IE 9]>
          <style type="text/css">
            .gradient {
               filter: none;
            }
          </style>
        <![endif]-->

        <style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style><script type="text/javascript" charset="UTF-8" src="resources/js/u/{common,util,geometry,directions}.js"></script><script type="text/javascript" charset="UTF-8" src="resources/js/u/{map,infowindow,marker}.js"></script><script type="text/javascript" charset="UTF-8" src="resources/js/u/{poly}.js"></script><script type="text/javascript" charset="UTF-8" src="resources/js/u/{onion}.js"></script><script type="text/javascript" charset="UTF-8" src="resources/js/u/{controls,stats}.js"></script></head>

    <body>
    
<div class="container-fluid">

            <!-- Header starts -->
            <div class="row-fluid">
                <div class="span12">
                <tiles:insert definition="project-template-faculty-header" >
                    <tiles:put name="faculty-header" value="/WEB-INF/jsp/Templates/faculty-header.jsp" />
                </tiles:insert>
                    

                </div>

            </div>

            <!-- Header ends -->

            <div class="row-fluid">

                <!-- Sidebar statrt -->
                <div class="span2 sidebar-container">
                    <div class="sidebar">

                        <!-- Sidebar Starts As Tiles -->
                    <tiles:insert definition="project-template-faculty-sidebar" >
                        <tiles:put name="faculty-sidebar" value="/WEB-INF/jsp/Templates/faculty-sidebar.jsp" />
                    </tiles:insert>    
                    </div>
                </div>


                <!-- Sidebar end -->

                <!-- Body start -->
                <div class="span10 body-container">

                    <div class="row-fluid">

                        <section id="formElement" class="utopia-widget utopia-form-box section">
                            <div class="utopia-widget-title">
                                <img src="resources/img/icons/font_size.png" class="utopia-widget-icon">
                                <span>Create New Assignment</span>
                            </div>

                            <div class="row-fluid">
                                
                                <div class="utopia-widget-content">

                                    <html:form styleId="insertAssg" styleClass="form-horizontal" action="/ManageAssignment.do?callmethod=insertAssignment" method="post"  enctype="multipart/form-data" >
                                        <fieldset>
                                            
                                            <div class="control-group">
                                                <label class="control-label" for="input01" >Assignment Title</label>

                                                <div class="controls">
                                                    <input id="input01" class="validate[required,maxSize[25]] span5" type="text" name="assgName" placeholder="Enter Assg Title Here...">
                                                </div>
                                            </div>

                                            <div class="control-group">
                                                <label class="control-label" for="selectbasic">Subject</label>
                                                <div class="controls">
                                                    <select id="selectbasic" name="subject" class="validate[required] input-xlarge">
                                                        <option disabled="true" selected="true"></option>
                                                        <option  >Human Resource Management</option>
                                                        <option >Marketing Management</option>
                                                        <option >Financial Management</option>
                                                        <option >Operations Management</option>
                                                        <option >Higher Engineering Mathematics</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="control-group">
                                                <label class="control-label" for="textarea">Submit by</label>

                                                <div class="controls">
                                                    <label class="radio inline" >
                                                        <input type= "radio" name="uploadValue" class="validate[required] UploadCheckBox" value="0" checked="false"  />
                                                        Text Editor
                                                    </label>    
                                                    <label class="radio inline" >
                                                        <input type= "radio" name="uploadValue" class="validate[required] UploadCheckBox" value="1" checked="false" />
                                                        Uploading File
                                                    </label>    
                                                    <label class="radio inline" >
                                                        <input type= "radio" name="uploadValue" class="validate[required] UploadCheckBox" value="2" checked="false"   />
                                                        Hard Copy
                                                    </label>
                                                </div>
                                            </div>

                                            <div class="control-group">
                                                <label class="control-label" for="textarea">Describe</label>

                                                <div class="controls">
                                                    <!-- <input type="text" data-source="[&quot;Aroma&quot;,&quot;Alaska&quot;,&quot;Arizona&quot;,&quot;Arkansas&quot;,&quot;California&quot;,&quot;Colorado&quot;,&quot;Connecticut&quot;,&quot;Delaware&quot;,&quot;Florida&quot;,&quot;Georgia&quot;,&quot;Hawaii&quot;,&quot;Idaho&quot;,&quot;Illinois&quot;,&quot;Indiana&quot;,&quot;Iowa&quot;,&quot;Kansas&quot;,&quot;Kentucky&quot;,&quot;Louisiana&quot;,&quot;Maine&quot;,&quot;Maryland&quot;,&quot;Massachusetts&quot;,&quot;Michigan&quot;,&quot;Minnesota&quot;,&quot;Mississippi&quot;,&quot;Missouri&quot;,&quot;Montana&quot;,&quot;Nebraska&quot;,&quot;Nevada&quot;,&quot;New Hampshire&quot;,&quot;New Jersey&quot;,&quot;New Mexico&quot;,&quot;New York&quot;,&quot;North Dakota&quot;,&quot;North Carolina&quot;,&quot;Ohio&quot;,&quot;Oklahoma&quot;,&quot;Oregon&quot;,&quot;Pennsylvania&quot;,&quot;Rhode Island&quot;,&quot;South Carolina&quot;,&quot;South Dakota&quot;,&quot;Tennessee&quot;,&quot;Texas&quot;,&quot;Utah&quot;,&quot;Vermont&quot;,&quot;Virginia&quot;,&quot;Washington&quot;,&quot;West Virginia&quot;,&quot;Wisconsin&quot;,&quot;Wyoming&quot;]" data-items="4" data-provide="typeahead" placeholder="It's all about.." >-->
                                                    <textarea id="textarea" class="validate[required,maxSize[80]] span5" name="assgDesc"  rows="3" placeholder="It's all about..."></textarea>

                                                </div>
                                            </div>
                                                
                                            
                                                <div class="control-group">
                                                    <label class="control-label" for="datepicker">Deadline</label>
                                                    <div class="controls">
                                                        <input id="datepicker" class="validate[custom[date],future[NOW]] input-medium" name="deadline" type="text">
                                                    </div>
                                                </div>
                                            <div class="control-group">
                                                <label class="control-label" for="textarea">Submission Details</label>

                                                <div class="controls">
                                                    <!-- <input type="text" data-source="[&quot;Aroma&quot;,&quot;Alaska&quot;,&quot;Arizona&quot;,&quot;Arkansas&quot;,&quot;California&quot;,&quot;Colorado&quot;,&quot;Connecticut&quot;,&quot;Delaware&quot;,&quot;Florida&quot;,&quot;Georgia&quot;,&quot;Hawaii&quot;,&quot;Idaho&quot;,&quot;Illinois&quot;,&quot;Indiana&quot;,&quot;Iowa&quot;,&quot;Kansas&quot;,&quot;Kentucky&quot;,&quot;Louisiana&quot;,&quot;Maine&quot;,&quot;Maryland&quot;,&quot;Massachusetts&quot;,&quot;Michigan&quot;,&quot;Minnesota&quot;,&quot;Mississippi&quot;,&quot;Missouri&quot;,&quot;Montana&quot;,&quot;Nebraska&quot;,&quot;Nevada&quot;,&quot;New Hampshire&quot;,&quot;New Jersey&quot;,&quot;New Mexico&quot;,&quot;New York&quot;,&quot;North Dakota&quot;,&quot;North Carolina&quot;,&quot;Ohio&quot;,&quot;Oklahoma&quot;,&quot;Oregon&quot;,&quot;Pennsylvania&quot;,&quot;Rhode Island&quot;,&quot;South Carolina&quot;,&quot;South Dakota&quot;,&quot;Tennessee&quot;,&quot;Texas&quot;,&quot;Utah&quot;,&quot;Vermont&quot;,&quot;Virginia&quot;,&quot;Washington&quot;,&quot;West Virginia&quot;,&quot;Wisconsin&quot;,&quot;Wyoming&quot;]" data-items="4" data-provide="typeahead" placeholder="It's all about.." >-->
                                                    <textarea id="textarea" class="validate[required,maxSize[300]] span5" name="assgDetail"  rows="3" placeholder="e.g. Time & Venue of Submission"></textarea>

                                                </div>
                                            </div>
                                                
                                            <!-- File Button -->
                                            <div class="control-group">
                                                <label class="control-label" >Question Document</label>
                                                <div class="controls">
                                                    <html:file property="file"  styleClass="input-file"  />
                                                </div>
                                            </div>
    
                                            <div class="control-group">
                                                
                                                <div class="controls">
                                                    <button id="singlebutton" name="singlebutton" class="btn btn-success span2">Create</button>
                                                    &nbsp;&nbsp;
                                                    <html:link styleClass="btn jumbo"  page="/theAssignment.do">
                                                        <i class="icon-backward"></i>&nbsp; Back
                                                    </html:link>
                                                </div>
                                            </div>

                                        </fieldset>
                                    </html:form>
                                </div>
                                
                            </div>
                            
                        </section>
                    </div>
                    <div class="utopia-widget-content" style="display: block;">

                        <table class="table datatable table-striped table-bordered" id="gdTable">


                            <thead>

                                <tr>
                                    
                                    <th>Title</th>
                                    <th>Subject</th>
                                    <th>Details</th>
                                    <th>Deadline</th>
                                    <th>Documents</th>
                                    <th>Delete</th>
                                    <th>Edit</th>
                                </tr>
                            </thead>

                            <tbody>
                                <logic:iterate id="assgMstList" name="CreateAssgForm" property="assgMstList">
                                    <tr>
                                        
                                        <td><bean:write name="assgMstList" property="assgTitle" /></td>
                                        <td><bean:write name="assgMstList" property="assgSubject" /></td>
                                        <td><bean:write name="assgMstList" property="assgDetails" /> </td>
                                        <td><bean:write name="assgMstList" property="assgSubmitDate" /> </td>
                                        <td><html:link page="/ManageAssignment.do?callmethod=download" >
                                            <html:param  name="assgFileUrl">
                                            <bean:write name="assgMstList" property="assgFileUrl" />
                                            </html:param>
                                            Download File
                                            </html:link></td>
                                             
                                        <td><html:link page="/ManageAssignment.do?callmethod=deleteAssignment" >
                                            <html:param  name="assgId">
                                            <bean:write name="assgMstList" property="assgId" />
                                            </html:param>
                                                Delete
                                            </html:link>
                                        </td>
                                        <td><html:link page="/ManageAssignment.do?callmethod=postAssignment" >
                                            <html:param  name="assgId">
                                            <bean:write name="assgMstList" property="assgId" />
                                            </html:param>
                                                Post
                                            </html:link>
                                        </td>
                                    </tr>
                                </logic:iterate>

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

                <!-- Maincontent end -->

            </div> <!-- end of container -->


            

            <!-- javascript placed at the end of the document so the pages load faster -->
            <script type="text/javascript" src="resources/js/u/jquery.min.js"></script>
            <script type="text/javascript" src="resources/js/u/jquery.cookie.js"></script>
            <script type="text/javascript" src="resources/js/u/utopia.js"></script>
            <script type="text/javascript" src="resources/js/u/jquery.hoverIntent.min.js"></script>
            <script type="text/javascript" src="resources/js/u/jquery.easing.1.3.js"></script>
            <script type="text/javascript" src="resources/js/u/jquery.datatable.js"></script>
            <script type="text/javascript" src="resources/js/u/tables.js"></script>
            <script type="text/javascript" src="resources/js/u/jquery.sparkline.js"></script>
            <script type="text/javascript" src="resources/js/u/jquery.vticker-min.js"></script>
            <script type="text/javascript" src="resources/js/u/datepicker.js"></script>
            <script type="text/javascript" src="resources/js/u/load-image.min.js"></script>
            <script type="text/javascript" src="resources/js/u/image-gallery.min.js"></script>
            <script type="text/javascript" src="resources/js/u/jquery.simpleWeather.js"></script>
            <script src="resources/js/u/jquery.validationEngine.js" type="text/javascript"></script>
            <script src="resources/js/u/jquery.validationEngine-en.js" type="text/javascript"></script>
            <script type="text/javascript" src="resources/js/u/maskedinput.js"></script>
            <script type="text/javascript" src="resources/js/u/chosen.jquery.js"></script>
            <script type="text/javascript" src="resources/js/u/js"></script><script src="resources/js/u/main.js" type="text/javascript"></script>
            <script type="text/javascript" src="resources/js/u/gmap3.js"></script>
            <script type="text/javascript" src="resources/js/u/header.js"></script>
            <script type="text/javascript" src="resources/js/u/sidebar.js"></script>
            <script type="text/javascript" src="resources/js/blockui.js"></script>
            <script type="text/javascript" src="resources/js/jgrowl/jquery.jgrowl.js"></script>
            <script type="text/javascript" src="resources/js/noty/jquery.noty.js"></script>
            <script type="text/javascript" src="resources/js/noty/layouts/top.js"></script>
            <script type="text/javascript" src="resources/js/noty/layouts/topLeft.js"></script>
            <script type="text/javascript" src="resources/js/noty/layouts/topRight.js"></script>
            <script type="text/javascript" src="resources/js/noty/themes/default.js"></script>
            <script type="text/javascript" src="resources/js/createAssignment.js"></script>
            <script type="text/javascript" src="resources/js/freetile/jquery.freetile.min.js"></script>
            <script type="text/javascript" src="resources/js/adipoli/jquery.adipoli.min.js"></script>
            <script type="text/javascript" src="resources/js/datepicker/bootstrap-datepicker.js"></script>
            <script type="text/javascript" src="resources/js/nobs/jquery.knob.js"></script>
            <script type="text/javascript" src="resources/js/validate/jquery.validationEngine.js"></script>
            <script type="text/javascript" src="resources/js/validate/jquery.validationEngine-en.js"></script>

            <script type="text/javascript">

                $(function() {

                    $( "#utopia-dashboard-datepicker" ).datepicker().css({marginBottom:'20px'});

                    jQuery("#validation").validationEngine();
                    $("#phone").mask("(999) 9999999999");
                    $(".chzn-select").chosen(); $(".chzn-select-deselect").chosen({allow_single_deselect:true});

                    $.simpleWeather({
                        zipcode: '10001',
                        unit: 'f',
                        success: function(weather) {
                            html = '<h2>'+weather.city+', '+weather.region+'</h2>';
                            html += '<img style="float:left" width="125px " src="'+weather.image+'">';
                            html += '<p>'+weather.temp+'&deg; '+weather.units.temp+'<br /><span>'+weather.currently+'</span></p>';
                            html += '<a href="'+weather.link+'">View Forecast &raquo;</a>';

                            $("#utopia-dashboard-weather").css({marginBottom:'20px'}).html(html);
                        },
                        error: function(error) {
                            $("#utopia-dashboard-weather").html('<p>'+error+'</p>');
                        }
                    });


                    /* maps with route directions */
                    $("#utopia-google-map-5").gmap3(
                    { action:'getRoute',
                        options:{
                            origin:'48 Pirrama Road, Pyrmont NSW',
                            destination:'Bondi Beach, NSW',
                            travelMode:google.maps.DirectionsTravelMode.DRIVING
                        },
                        callback:function (results) {
                            if (!results) return;
                            $(this).gmap3(
                            { action:'init',
                                zoom:13,
                                mapTypeId:google.maps.MapTypeId.ROADMAP,
                                streetViewControl:true,
                                center:[-33.879, 151.235]
                            },
                            { action:'addDirectionsRenderer',
                                options:{
                                    preserveViewport:true,
                                    draggable:false,
                                    directions:results
                                }
                            }
                        );
                        }
                    }
                );
                    /* maps with route directions end */
        
                });

    
                $("#utopia-sparkline-type1").sparkline([5, 6, 7, 9, 9, 5, 3, 2, 2, 4, 6, 7, 5, 6, 7, 9, 9], {type:"line", height:48, width:140});

                $('.utopia-activity-feeds').vTicker({
                    speed: 500,
                    pause: 3000,
                    animation: 'fade',
                    height: 335,
                    mousePause: true,
                    showItems: 4
                });


    
            </script>


            <div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div></body>
</html:html>