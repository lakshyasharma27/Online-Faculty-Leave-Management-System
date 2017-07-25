package org.apache.jsp.GITSLms.preview.Geetanjali.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.json.JSONArray;
import org.json.JSONObject;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class eventstodb_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

try {       
            /*         String strstart = request.getParameter("start");
                    String strend = request.getParameter("end");
                     String title = request.getParameter("title");
                  SimpleDateFormat formatter = new SimpleDateFormat("E MMM dd yyyy HH:mm:ss z");
                 Date startdateutil = (Date)formatter.parse(strstart);
                Date enddateutil = (Date)formatter.parse(strend);
                         
                     java.sql.Date startdate = new java.sql.Date(startdateutil.getTime());
                    java.sql.Date enddate = new java.sql.Date(enddateutil.getTime());

                     Connection c=com.dbconnection.Loadconnection.getConnection();
                     PreparedStatement ps = c.prepareStatement("insert into eventcalendar(end,start,title) values(?,?,?)");    
                     ps.setDate(1,enddate);
                     ps.setDate(2,startdate);
                     ps.setString(3,title);
                     ps.execute();*/
       Connection c=com.dbconnection.Loadconnection.getConnection();
        PreparedStatement ps = c.prepareStatement("select * from eventcalendar");
        JSONObject jo = new JSONObject();
        JSONArray  jarray = new JSONArray();
        int i=0;
        ResultSet rs=ps.executeQuery();
        while(rs.next())
        {       
            java.sql.Date start = rs.getDate("start");
            java.sql.Date end = rs.getDate("end");
            JSONObject jobject=new JSONObject();
            jobject.put("id", rs.getInt("id"));
            jobject.put("title", rs.getString("title"));
            jobject.put("start", start);
            jobject.put("end", end);
           
            jarray.put(jobject);
        }
            out.println(jarray); 
    }
catch(Exception ex)
{ System.out.println("hellu"+ex) ; 
}


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
