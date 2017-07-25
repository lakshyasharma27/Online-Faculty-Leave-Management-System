
<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
try {       
            String strstart = request.getParameter("start");
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
            ps.execute();
     
    }
catch(Exception ex)
{ System.out.println("hellu"+ex) ; 
}

%>