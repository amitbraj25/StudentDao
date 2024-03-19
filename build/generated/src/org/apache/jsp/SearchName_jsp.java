package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import myconnection.OnlineConnection;
import java.sql.*;

public final class SearchName_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <center>\n");
      out.write("       <font color=\"red\" size=\"6\">S</font>\n");
      out.write("       <font color=\"black\" size=\"6\">E</font>     \n");
      out.write("       <font color=\"yellow\" size=\"6\">A</font>     \n");
      out.write("       <font color=\"green\" size=\"6\">R</font>\n");
      out.write("       <font color=\"blue\" size=\"6\">C</font>     \n");
      out.write("       <font color=\"yellow\" size=\"6\">H</font>     \n");
      out.write("       <form method=\"post\" action=\"SearchName.jsp\">\n");
      out.write("           \n");
      out.write("          <textarea row=\"2\" cols=\"70\" name=\"txtname\"></textarea>\n");
      out.write("          <br>\n");
      out.write("          <input type=\"submit\" value=\"Referesh\">\n");
      out.write("       </form>    \n");
      out.write("      ");
 
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
      
      out.write(" \n");
      out.write("         </center>\n");
      out.write("        </body>\n");
      out.write("</html>\n");
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
