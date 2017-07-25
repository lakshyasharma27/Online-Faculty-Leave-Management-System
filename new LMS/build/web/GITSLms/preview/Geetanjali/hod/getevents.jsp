
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
        Connection c=com.dbconnection.Loadconnection.getConnection();
        PreparedStatement ps = c.prepareStatement("select * from eventcalendar");
       
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

%>