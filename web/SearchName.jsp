<%-- 
    Document   : SearchName
    Created on : Jul 8, 2023, 12:55:31 PM
    Author     : Hp
--%>

<%@page import="myconnection.OnlineConnection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
       <font color="red" size="6">S</font>
       <font color="black" size="6">E</font>     
       <font color="yellow" size="6">A</font>     
       <font color="green" size="6">R</font>
       <font color="blue" size="6">C</font>     
       <font color="yellow" size="6">H</font>     
       <form method="post" action="SearchName.jsp">
           
          <textarea row="2" cols="70" name="txtname"></textarea>
          <br>
          <input type="submit" value="Referesh">
       </form>    
      <% 
         String name=null;
         name=request.getParameter("txtname");
         if(name!=null)
         {
             String sql;
             Connection con;
             PreparedStatement ps;
             ResultSet rs=null;
             con=OnlineConnection.getConnection();
             sql="select * from emp where empname like '"+name+"%'";
             ps=con.prepareStatement(sql);
             rs=ps.executeQuery();
             out.println("<table border=1>");
             out.println("<tr>");
             out.println("<th>Emp Id</th>");
             out.println("<th>Emp Name</th>");
             out.println("<th>Department</th>");
             out.println("<th>Salary</th>");
             out.println("<th>Status</th>");
             out.println("<th>Gender</th>");
             out.println("</tr>");
             
             while(rs.next())
             {
               out.println("<tr>");
                out.println("<td>"+rs.getInt(1)+"</td>");
                out.println("<td>"+rs.getString(2)+"</td>");
                out.println("<td>"+rs.getString(3)+"</td>");
                out.println("<td>"+rs.getInt(4)+"</td>");
                out.println("<td>"+rs.getBoolean(5)+"</td>");
                out.println("<td>"+rs.getString(6)+"</td>");
               out.println("</tr>"); 
             }
           out.println("</table>");         }
      %> 
         </center>
        </body>
</html>
