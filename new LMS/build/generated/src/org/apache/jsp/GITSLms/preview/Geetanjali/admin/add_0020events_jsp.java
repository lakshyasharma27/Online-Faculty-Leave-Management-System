package org.apache.jsp.GITSLms.preview.Geetanjali.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class add_0020events_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<html>\n");
      out.write(" \n");
      out.write("<head>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html;charset=utf-8\">\n");
      out.write("    <title>Using fullCalendar</title>\n");
      out.write(" \n");
      out.write("    <!-- \n");
      out.write("        All CSS and JS files needed for fullCalendar. Change you\n");
      out.write("        files locations accordingly.        \n");
      out.write("        -->\n");
      out.write(" \n");
      out.write("    <link rel='stylesheet' href='fullcalendar/fullcalendar.css' />\n");
      out.write("    <script src='../js/fullcalendar.css'></script>\n");
      out.write("    <script src='fullcalendar/lib/moment.min.js'></script>\n");
      out.write("    <script src='../js/fullcalendar.js'></script>\n");
      out.write(" \n");
      out.write("    <!-- fullCalendar spanish language file loaded after fullcalendar.js -->\n");
      out.write("    <script src='fullcalendar/lang/es.js'></script>\n");
      out.write(" \n");
      out.write("    <!-- Some styles for the calendar and other elements -->\n");
      out.write("    <style>\n");
      out.write("        #calendar {\n");
      out.write("            width: 80%;\n");
      out.write("            display: block;\n");
      out.write("            margin-left: auto;\n");
      out.write("            margin-right: auto;\n");
      out.write("        }\n");
      out.write("         \n");
      out.write("        .centered {\n");
      out.write("            text-align: center;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write(" \n");
      out.write("<body>\n");
      out.write("    <h1 class=\"centered\">Calendar using locale \"es-ES\" Spanish)</h1>\n");
      out.write(" \n");
      out.write("    <!-- The calendar container -->\n");
      out.write("    <div id=\"calendar\"></div>\n");
      out.write(" \n");
      out.write("    <!-- Calendar creation script -->\n");
      out.write("    \n");
      out.write(" \n");
      out.write("</body>\n");
      out.write(" \n");
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
