 <%@page import="java.text.SimpleDateFormat"%> 
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<div  class="portlet light bordered">
                                    <div class="portlet-title">
                                        <div class="caption font-dark">
                                            <i class="icon-settings font-dark"></i>
                                            <span class="caption-subject bold uppercase">Leave Application Status</span>
                                        </div>
                                        <div class="tools"> </div>
                                    </div>
                                    <div class="portlet-body">
                                        <table class="table table-striped table-bordered table-hover order-column" id="sample_1">
                                            <thead>
                                                <tr>
                                                    <th>Leave ID</th>
                                                    <th>NAME</th>
                                                    <th>FROM</th>
                                                    <th>TO</th>
                                                    <th>DAYS</th>
                                                    <th>TYPE</th>
                                                    <th>REASON</th>
                                                    <th>SUBSTITUTE</th>
                                                    <th>STATUS</th>
                                                    
                                                </tr>
                                            </thead>
                                            <tbody>
                                               
                                                                  <%
                                                                try { String from=request.getParameter("week");
                                                                      String to=request.getParameter("to");
                                                                      SimpleDateFormat sdf1 = new SimpleDateFormat("dd-MM-yyyy");
                                                                      java.util.Date fromdate = sdf1.parse(from);
                                                                      java.sql.Date sqlfromdate = new java.sql.Date(fromdate.getTime());
                                                                      java.util.Date todate = sdf1.parse(to);
                                                                      java.sql.Date sqltodate = new java.sql.Date(todate.getTime());
                                                                      String department=(String)session.getAttribute("department");
                                                                      String name=(String)session.getAttribute("name");
                                                                      Connection c=com.dbconnection.Loadconnection.getConnection();
                                                                  //   PreparedStatement ps = c.prepareStatement("select * from staff");
                                                                      PreparedStatement ps = c.prepareStatement("select * from leaveapplication where department=? and name<>? and datefrom>=? and dateto<=?"); 
                                                                      ps.setString(1,department);
                                                                      ps.setString(2,name);
                                                                      ps.setDate(3,sqlfromdate);
                                                                      ps.setDate(4,sqltodate);
                                                                      int i=0;
                                                                     ResultSet rs=ps.executeQuery();
                                                                     while(rs.next())
                                                                                            
                                             { i++;    //datefrom yyyy-MM-dd to dd-MM-yyyy
                                                       String fromst=rs.getString("datefrom");
                                                       Date dfromf=new SimpleDateFormat("yyyy-MM-dd").parse(fromst);
                                                       String formatfrom=new SimpleDateFormat("dd-MM-yyyy").format(dfromf);
                                                       //dateto yyyy-MM-dd to dd-MM-yyyy
                                                       String tost=rs.getString("dateto");
                                                       Date dtof=new SimpleDateFormat("yyyy-MM-dd").parse(tost);
                                                       String formatto=new SimpleDateFormat("dd-MM-yyyy").format(dtof);
                                                       //days between 2 dyas 
                                                       String tostr=rs.getString("dateto");
                                                       String fromstr=rs.getString("datefrom");
                                                       Date dto=new SimpleDateFormat("yyyy-mm-dd").parse(tostr);
                                                       Date dfrom=new SimpleDateFormat("yyyy-mm-dd").parse(fromstr);
                                                       long milli=dto.getTime()-dfrom.getTime();
                                                       long days=milli/(1000*60*60*24);
                                                       
                                                     if(rs.getString("status").equalsIgnoreCase("recommended"))
                                                               {   %> 
                                                                                                                 
                                                
                                                <tr>
                                                    <td> <%=rs.getString("appid") %> </td>
                                                    <td> <%=rs.getString("name") %> </td>
                                                    <td class="center"><%=formatfrom %></td>
                                                    <td class="center"><%=formatto %></td>   
                                                    <td> <%=days %> </td>
                                                    <td> <%=rs.getString("leavetype") %> </td>
                                                    <td><%=rs.getString("reason") %></td>
                                                    <td><%=rs.getString("substitution") %></td>
                                                    <td><span class="label label-sm label-success"> Recommended </span></td>
                                                    
                                                   
                                                </tr>
                                             <%  }
                                                     else if(rs.getString("status").equalsIgnoreCase("not recommended"))
                                                     {   %> 
                                                
                                                
                                                <tr>
                                                    <td> <%=rs.getString("appid") %> </td>
                                                    <td> <%=rs.getString("name") %> </td>
                                                    <td class="center"><%=formatfrom %></td>
                                                    <td class="center"><%=formatto %></td>
                                                    <td> <%=days %> </td>
                                                    <td> <%=rs.getString("leavetype") %> </td>
                                                    <td><%=rs.getString("reason") %></td>
                                                    <td><%=rs.getString("substitution") %></td>
                                                    <td><span class="label label-sm label-danger"> Not Recommended </span></td>
                                                    
                                                   
                                                </tr>
                                             <%  }
                                                     else 
                                                     {   %> 
                                                
                                                
                                                <tr>
                                                    <td> <%=rs.getString("appid") %> </td>
                                                    <td> <%=rs.getString("name") %> </td>
                                                    <td class="center"><%=formatfrom %></td>
                                                    <td class="center"><%=formatto %></td>
                                                    <td> <%=days %> </td>
                                                    <td> <%=rs.getString("leavetype") %> </td>
                                                    <td><%=rs.getString("reason") %></td>
                                                    <td><%=rs.getString("substitution") %></td>
                                                    <td><span class="label label-sm label-warning"> Substitutes Confirmed </span></td>
                                                    
                                                   
                                                </tr>
                                             <%  }
                                                         
                                                               }
                                                                }
                                                                catch(Exception e)
                                                                {
                                                                    out.println("lol"+e);
                                                                }
                                                                %>
                                              
                                                   
                                                
                                                
                                                
                                               
                                            </tbody>
                                        </table>
                                    </div>
                                </div>