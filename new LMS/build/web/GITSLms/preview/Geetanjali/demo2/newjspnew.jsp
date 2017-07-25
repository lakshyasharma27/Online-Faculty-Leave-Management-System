
<!DOCTYPE html>

<html lang="en">
    <!--<![endif]-->
    <!-- BEGIN HEAD -->

    
<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
        <meta charset="utf-8" />
        <title>LMS | Admin Dashboard</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="Preview page of Metronic Admin Theme #1 for statistics, charts, recent events and reports" name="description" />
        <meta content="" name="author" />
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
     
        <link href="../assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
     
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
       
        <link href="../js/fullcalendar.min.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL STYLES -->
       
        <link href="../assets/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME GLOBAL STYLES -->
        <!-- BEGIN THEME LAYOUT STYLES -->
        <link href="../assets/layouts/layout/css/layout.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/layouts/layout/css/themes/darkblue.min.css" rel="stylesheet" type="text/css" id="style_color" />
           <script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript">
  $(document).ready(function(){
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
                    
});
     
 // We will refer to $calendar in future code
/*$(document).ready(function() {
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
});*/
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
        <!-- END THEME LAYOUT STYLES -->
        <link rel="shortcut icon" href="favicon.ico" /> </head>
    <!-- END HEAD -->

    <body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white">
        <div class="page-wrapper">
            <!-- include HEADER-->
           
            
             <!-- end HEADER -->
            
            
            
            <!-- BEGIN HEADER & CONTENT DIVIDER -->
            <div class="clearfix"> </div>
            <!-- END HEADER & CONTENT DIVIDER -->
            <!-- BEGIN CONTAINER -->
            <div class="page-container">
                
                
                 <!-- include SIDEBAR -->
                
                
                <!-- END SIDEBAR -->
                <!-- BEGIN CONTENT -->
                <div class="page-content-wrapper">
                    <!-- BEGIN CONTENT BODY -->
                    <div class="page-content">
                        <!-- BEGIN PAGE TITLE-->
                        <h1 class="page-title"> Faculty Dashboard
                        </h1>
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                        <!-- BEGIN DASHBOARD STATS 1-->
                        
                        <div class="clearfix"></div>
                        <!-- END DASHBOARD STATS 1-->
                                                <div class="row">
                            
                            <div class="col-lg-6 col-xs-12 col-sm-12">
                                <!-- BEGIN PORTLET-->
                                <div class="portlet light calendar bordered">
                                    <div class="portlet-title ">
                                        <div class="caption">
                                            <i class="icon-calendar font-dark hide"></i>
                                            <span class="caption-subject font-dark bold uppercase">Feeds</span>
                                        </div>
                                    </div>
                                   
                                        <div id="calendar"> </div>
                                   
                                </div>
                                <!-- END PORTLET-->
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
           
           <!-- END FOOTER -->
        </div>
        <!-- BEGIN CORE PLUGINS -->
       
       
        <!-- END CORE PLUGINS -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="../js/moment.min.js" type="text/javascript"></script>
        <script src="../js/fullcalendar.min.js" type="text/javascript"></script>
     <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="../assets/global/scripts/app.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="../assets/pages/scripts/dashboard.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL SCRIPTS -->
       
</body>
</html>