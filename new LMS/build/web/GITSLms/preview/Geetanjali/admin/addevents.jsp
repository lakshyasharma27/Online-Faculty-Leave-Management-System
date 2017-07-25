<!DOCTYPE html>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.7
Version: 4.7.1
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Dribbble: www.dribbble.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
Renew Support: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
    <!--<![endif]-->
    <!-- BEGIN HEAD -->

    
<!-- Mirrored from keenthemes.com/preview/metronic/theme/admin_1/app_calendar.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 29 Dec 2016 12:33:07 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
        <meta charset="utf-8" />
        <title>Metronic Admin Theme #1 | Calendar</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="Preview page of Metronic Admin Theme #1 for calendar page" name="description" />
        <meta content="" name="author" />
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=all" rel="stylesheet" type="text/css" />
        <link href="../assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <link href="../js/fullcalendar.min.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL STYLES -->
        <link href="../assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
        <link href="../assets/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME GLOBAL STYLES -->
        <!-- BEGIN THEME LAYOUT STYLES -->
        <link href="../assets/layouts/layout/css/layout.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/layouts/layout/css/themes/darkblue.min.css" rel="stylesheet" type="text/css" id="style_color" />
        <link href="../assets/layouts/layout/css/custom.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME LAYOUT STYLES -->
         
         <script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript">
/*  $(document).ready(function(){
        var myJSON; 
        $.ajax({     url:'getevents.jsp',
                     type:'get',
                     dataType:'json',
                     success:function( response)
                     {   
                            $('#calendar').fullCalendar({
				  header: {
					left: 'prev,next today',
					center: 'title',
					right: 'month,agendaWeek,agendaDay'
				  },
				  events: response 
				           
                              });
                     },
                     error:function()
                     {
                         alert("error");
                     }
                     
                 });
                    
});*/
     
 // We will refer to $calendar in future code
$(document).ready(function() {
    var $calendar = $("#calendar").fullCalendar({
   
   header: {
    left: 'title',
    right: 'today,month,agendaDay,agendaWeek prev,next'
   },
 
   // Make possible to respond to clicks and selections
   selectable: true,
 
   // This is the callback that will be triggered when a selection is made.
   // It gets start and end date/time as part of its arguments
   select: function(start, end, jsEvent, view) {
 
     // Ask for a title. If empty it will default to "New event"
     var title = prompt("Enter a title for this event", "New event");
 
     // If did not pressed Cancel button
     if (title !== null) {
      // Create event
      var event = {
       title: title.trim() !== "" ? title : "New event",
       start: start,
       end: end
       
      };
     //alert(title);
      $.ajax({
                    type: "post",
                    url: "eventstodb.jsp", //here you can use servlet,jsp, etc
                    data: "end=" +end.toString()+"&start="+start.toString()+"&title="+title.toString(),
                    success: function(){      
                            alert("successful"+start.toString());
                    }
                });
         
      // Push event into fullCalendar's array of events
      // and displays it. The last argument is the
      // "stick" value. If set to true the event
      // will "stick" even after you move to other
      // year, month, day or week.
 
      $calendar.fullCalendar("renderEvent", event, true);
     };
     // Whatever happens, unselect selection
     $calendar.fullCalendar("unselect");
 
    }, // End select callback
    // eventAfterRender: function (event, element, view) {
      //              birthday = new Date('<somedate>');
          //          year = new Date(event.start).getFullYear();
        //            month = new Date(event.start).getMonth();
            //        day = new Date(event.start).getDate();
              //      var name=event.title;
                //    alert(year + ' ' + month + ' ' + day+' '+name);
   // window.location.replace("addfacultybean.jsp?mail="+mail.value+"&pass="+pass.value+"&gender="+gender.value);                
    //do some if statement to see if the year matches then if the month, then the day. 
//if so then go to another function or just put the code here for the pop 

            //    },
    // Make events editable, globally
    editable : true,
 
    // Callback triggered when we click on an event
 
    eventClick: function(event, jsEvent, view){
     // Ask for a title. If empty it will default to "New event"
     var newTitle = prompt("Enter a new title for this event", event.title);
 
     // If did not pressed Cancel button
     if (newTitle !== null) {
          // Update event
          event.title = newTitle.trim() !== "" ? newTitle : event.title;
 
          // Call the "updateEvent" method
          $calendar.fullCalendar("updateEvent", event);
 
        }
    } // End callback eventClick
  } // End of calendar options
 );
});
/*function loud(start,title,end)
{// alert(start);
 // alert(title);  
 // alert(end);
  $.ajax({
                    type: "post",
                    url: "eventstodb.jsp", //here you can use servlet,jsp, etc
                    data: "end=" +end+"&start="+start+"&title="+title,
                    success: function(){      
                            alert("successful"+title);
                    }
                });
}*/
     
    </script>
        <link rel="shortcut icon" href="favicon.ico" /> </head>
    
   <!-- END HEAD -->

    <body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white">
        <div class="page-wrapper">
            <!-- include HEADER-->
            <jsp:include page="../header.jsp"/>
             <!-- end HEADER -->
            
            
            
            <!-- BEGIN HEADER & CONTENT DIVIDER -->
            <div class="clearfix"> </div>
            <!-- END HEADER & CONTENT DIVIDER -->
            <!-- BEGIN CONTAINER -->
            <div class="page-container">
                
                
                 <!-- include SIDEBAR -->
                
                 <jsp:include page="sidebar.jsp"/>
                <!-- END SIDEBAR -->
                <!-- BEGIN CONTENT -->
                <div class="page-content-wrapper">
                    <!-- BEGIN CONTENT BODY -->
                    <div class="page-content">
                        <!-- BEGIN PAGE HEADER-->
                        <!-- BEGIN THEME PANEL -->
                        
                    <!-- BEGIN PAGE BAR -->
                        <div class="page-bar">
                            <ul class="page-breadcrumb">
                                <li>
                                    <a href="index.html">Home</a>
                                    <i class="fa fa-circle"></i>
                                </li>
                                <li>
                                    <span>Apps</span>
                                </li>
                            </ul>
                                         </div>
                        <!-- END PAGE BAR -->
                        <!-- BEGIN PAGE TITLE-->
                        <h1 class="page-title"> Calendar
                            <small>calendar page</small>
                        </h1>
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                       
                        <div class="row">
                            <div >
                                <div class="portlet light portlet-fit bordered calendar">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class=" icon-layers font-green"></i>
                                            <span class="caption-subject font-green sbold uppercase">Calendar</span>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="row">
                                                 <div class="col-md-9 col-sm-12">
                                                <div id="calendar" class="has-toolbar"> </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END CONTENT BODY -->
                </div>
                <!-- END CONTENT -->
                <!-- BEGIN QUICK SIDEBAR -->
                <a href="javascript:;" class="page-quick-sidebar-toggler">
                    <i class="icon-login"></i>
                </a>
                
                <!-- END QUICK SIDEBAR -->
            </div>
            <!-- END CONTAINER -->
            <!-- BEGIN FOOTER -->
            <div class="page-footer">
                <div class="page-footer-inner"> 2016 &copy; Metronic Theme By
                    <a target="_blank" href="http://keenthemes.com/">Keenthemes</a> &nbsp;|&nbsp;
                    <a href="http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes" title="Purchase Metronic just for 27$ and get lifetime updates for free" target="_blank">Purchase Metronic!</a>
                </div>
                <div class="scroll-to-top">
                    <i class="icon-arrow-up"></i>
                </div>
            </div>
            <!-- END FOOTER -->
        </div>
        <!-- BEGIN QUICK NAV -->
         <div class="quick-nav-overlay"></div>
        <!-- END QUICK NAV -->
        <!--[if lt IE 9]>
<script src="../assets/global/plugins/respond.min.js"></script>
<script src="../assets/global/plugins/excanvas.min.js"></script> 
<script src="../assets/global/plugins/ie8.fix.min.js"></script> 
<![endif]-->
        <!-- BEGIN CORE PLUGINS -->
        <script src="../assets/global/plugins/jquery.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="../js/moment.min.js" type="text/javascript"></script>
        <script src="../js/fullcalendar.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="../assets/global/scripts/app.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
   
        <!-- END PAGE LEVEL SCRIPTS -->
        <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <script src="../assets/layouts/layout/scripts/layout.min.js" type="text/javascript"></script>
       
        <script src="../assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
        <script src="../assets/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
        <!-- END THEME LAYOUT SCRIPTS -->
    <!-- Google Code for Universal Analytics -->
<!-- End -->

<!-- End -->
</body>



<!-- Mirrored from keenthemes.com/preview/metronic/theme/admin_1/app_calendar.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 29 Dec 2016 12:33:10 GMT -->
</html>