package org.apache.jsp.GITSLms.preview.Geetanjali.demo2;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <meta http-equiv=\"content-type\" content=\"text/html;charset=UTF-8\" /><!-- /Added by HTTrack -->\n");
      out.write("<head>    <link rel=\"stylesheet\" href=\"../js/alertify.bootstrap.css\">\n");
      out.write("          <link rel=\"stylesheet\" href=\"../js/bootstrap.css\">\n");
      out.write("          <link rel=\"stylesheet\" href=\"../js/bootstrap.min.css\">\n");
      out.write("        \n");
      out.write("        <link rel=\"stylesheet\" href=\"../js/alertify.core.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../js/alertify.bootstrap.css\">\n");
      out.write("        <script src=\"../js/jquery-3.1.1.min.js\"></script>\n");
      out.write("        <script src=\"../js/bootstrap.js\"></script>\n");
      out.write("        <script src=\"../js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"../js/alertify.min.js\"></script> \n");
      out.write("                 \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("        <link rel=\"stylesheet\" href=\"../js/alertify.bootstrap.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../js/alertify.core.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../js/alertify.bootstrap.css\">\n");
      out.write("        <script src=\"../js/jquery-3.1.1.min.js\"></script>\n");
      out.write("        <script src=\"../js/alertify.min.js\"></script> \n");
      out.write("        <meta charset=\"utf-8\" /> \n");
      out.write("        <title>LMS |</title>\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta content=\"width=device-width, initial-scale=1\" name=\"viewport\" />\n");
      out.write("        <meta content=\"Preview page of Metronic Admin Theme #1 for statistics, charts, recent events and reports\" name=\"description\" />\n");
      out.write("        <meta content=\"\" name=\"author\" />\n");
      out.write("       \n");
      out.write("        <link href=\"http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=all\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <link href=\"../assets/global/plugins/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <link href=\"../assets/global/plugins/simple-line-icons/simple-line-icons.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <link href=\"../assets/global/plugins/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <link href=\"../assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <!-- END GLOBAL MANDATORY STYLES -->\n");
      out.write("        <!-- BEGIN PAGE LEVEL PLUGINS -->\n");
      out.write("        <link href=\"../assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <link href=\"../assets/global/plugins/morris/morris.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <link href=\"../assets/global/plugins/fullcalendar/fullcalendar.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <link href=\"../assets/global/plugins/jqvmap/jqvmap/jqvmap.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <!-- END PAGE LEVEL PLUGINS -->\n");
      out.write("        <!-- BEGIN THEME GLOBAL STYLES -->\n");
      out.write("        <link href=\"../assets/global/css/components.min.css\" rel=\"stylesheet\" id=\"style_components\" type=\"text/css\" />\n");
      out.write("        <link href=\"../assets/global/css/plugins.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <!-- END THEME GLOBAL STYLES -->\n");
      out.write("        <!-- BEGIN THEME LAYOUT STYLES -->\n");
      out.write("        <link href=\"../assets/layouts/layout/css/layout.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <link href=\"../assets/layouts/layout/css/themes/darkblue.min.css\" rel=\"stylesheet\" type=\"text/css\" id=\"style_color\" />\n");
      out.write("        <link href=\"../assets/layouts/layout/css/custom.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <!-- END THEME LAYOUT STYLES -->\n");
      out.write("        <link rel=\"shortcut icon\" href=\"favicon.ico\" /> </head>\n");
      out.write("    <!-- END HEAD -->\n");
      out.write("\n");
      out.write("    <body class=\"page-header-fixed page-sidebar-closed-hide-logo page-content-white\">\n");
      out.write("        <div class=\"page-wrapper\">\n");
      out.write("            <!-- include HEADER-->\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("             <!-- end HEADER -->\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <!-- BEGIN HEADER & CONTENT DIVIDER -->\n");
      out.write("            <div class=\"clearfix\"> </div>\n");
      out.write("            <!-- END HEADER & CONTENT DIVIDER -->\n");
      out.write("            <!-- BEGIN CONTAINER -->\n");
      out.write("            <div class=\"page-container\">\n");
      out.write("                <input type=\"button\" id=\"hellome\" value=\"hellome1\" onclick=\"helpme(this)\"/>    \n");
      out.write("                       <div class=\"dropdown\">\n");
      out.write("         <button class=\"btn btn-primary dropdown-toggle\" type=\"button\" data-toggle=\"dropdown\">Dropdown Example\n");
      out.write("             <span class=\"caret\"></span></button>\n");
      out.write("               <ul class=\"dropdown-menu\">\n");
      out.write("                 <li><a href=\"#\">HTML</a></li>\n");
      out.write("                <li><a href=\"#\">CSS</a></li>\n");
      out.write("                <li><a href=\"#\">JavaScript</a></li>\n");
      out.write("              </ul>\n");
      out.write("        </div>            \n");
      out.write("                 <!-- include SIDEBAR -->\n");
      out.write("                \n");
      out.write("                \n");
      out.write("        </div>\n");
      out.write("        <!-- BEGIN QUICK NAV \n");
      out.write("        <nav class=\"quick-nav\">\n");
      out.write("            <a class=\"quick-nav-trigger\" href=\"#0\">\n");
      out.write("                <span aria-hidden=\"true\"></span>\n");
      out.write("            </a>\n");
      out.write("            <ul>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"https://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes\" target=\"_blank\" class=\"active\">\n");
      out.write("                        <span>Purchase Metronic</span>\n");
      out.write("                        <i class=\"icon-basket\"></i>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"https://themeforest.net/item/metronic-responsive-admin-dashboard-template/reviews/4021469?ref=keenthemes\" target=\"_blank\">\n");
      out.write("                        <span>Customer Reviews</span>\n");
      out.write("                        <i class=\"icon-users\"></i>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"http://keenthemes.com/showcast/\" target=\"_blank\">\n");
      out.write("                        <span>Showcase</span>\n");
      out.write("                        <i class=\"icon-user\"></i>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"http://keenthemes.com/metronic-theme/changelog/\" target=\"_blank\">\n");
      out.write("                        <span>Changelog</span>\n");
      out.write("                        <i class=\"icon-graph\"></i>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("            <span aria-hidden=\"true\" class=\"quick-nav-bg\"></span>\n");
      out.write("        </nav>\n");
      out.write("        <div class=\"quick-nav-overlay\"></div>\n");
      out.write("        <!-- END QUICK NAV -->\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("<script src=\"../assets/global/plugins/respond.min.js\"></script>\n");
      out.write("<script src=\"../assets/global/plugins/excanvas.min.js\"></script> \n");
      out.write("<script src=\"../assets/global/plugins/ie8.fix.min.js\"></script> \n");
      out.write("<![endif]-->\n");
      out.write("        <!-- BEGIN CORE PLUGINS -->\n");
      out.write("        <script src=\"../assets/global/plugins/jquery.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/bootstrap/js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/js.cookie.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/jquery.blockui.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <!-- END CORE PLUGINS -->\n");
      out.write("        <!-- BEGIN PAGE LEVEL PLUGINS -->\n");
      out.write("        <script src=\"../assets/global/plugins/moment.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/morris/morris.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/morris/raphael-min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/counterup/jquery.waypoints.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/counterup/jquery.counterup.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/amcharts/amcharts/amcharts.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/amcharts/amcharts/serial.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/amcharts/amcharts/pie.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/amcharts/amcharts/radar.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/amcharts/amcharts/themes/light.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/amcharts/amcharts/themes/patterns.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/amcharts/amcharts/themes/chalk.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/amcharts/ammap/ammap.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/amcharts/ammap/maps/js/worldLow.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/amcharts/amstockcharts/amstock.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/fullcalendar/fullcalendar.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/horizontal-timeline/horizontal-timeline.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/flot/jquery.flot.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/flot/jquery.flot.resize.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/flot/jquery.flot.categories.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/jquery-easypiechart/jquery.easypiechart.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/jquery.sparkline.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/jqvmap/jqvmap/jquery.vmap.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js\" type=\"text/javascript\"></script>\n");
      out.write("        <!-- END PAGE LEVEL PLUGINS -->\n");
      out.write("        <!-- BEGIN THEME GLOBAL SCRIPTS -->\n");
      out.write("        <script src=\"../assets/global/scripts/app.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <!-- END THEME GLOBAL SCRIPTS -->\n");
      out.write("        <!-- BEGIN PAGE LEVEL SCRIPTS -->\n");
      out.write("        <script src=\"../assets/pages/scripts/dashboard.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <!-- END PAGE LEVEL SCRIPTS -->\n");
      out.write("        <!-- BEGIN THEME LAYOUT SCRIPTS -->\n");
      out.write("        <script src=\"../assets/layouts/layout/scripts/layout.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/layouts/layout/scripts/demo.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/layouts/global/scripts/quick-sidebar.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../assets/layouts/global/scripts/quick-nav.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <!-- END THEME LAYOUT SCRIPTS -->\n");
      out.write("    <!-- Google Code for Universal Analytics -->\n");
      out.write("<script>\n");
      out.write("  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){\n");
      out.write("  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\n");
      out.write("  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\n");
      out.write("  })(window,document,'script','../../../../../www.google-analytics.com/analytics.js','ga');\n");
      out.write("  ga('create', 'UA-37564768-1', 'auto');\n");
      out.write("  ga('send', 'pageview');\n");
      out.write("</script>\n");
      out.write("<!-- End -->\n");
      out.write("\n");
      out.write("<!-- Google Tag Manager -->\n");
      out.write("<noscript><iframe src=\"http://www.googletagmanager.com/ns.html?id=GTM-W276BJ\"\n");
      out.write("height=\"0\" width=\"0\" style=\"display:none;visibility:hidden\"></iframe></noscript>\n");
      out.write("<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':\n");
      out.write("new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],\n");
      out.write("j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=\n");
      out.write("'../../../../../www.googletagmanager.com/gtm5445.html?id='+i+dl;f.parentNode.insertBefore(j,f);\n");
      out.write("})(window,document,'script','dataLayer','GTM-W276BJ');</script>\n");
      out.write("<!-- End -->\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- Mirrored from keenthemes.com/preview/metronic/theme/admin_1/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 29 Dec 2016 12:32:03 GMT -->\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
