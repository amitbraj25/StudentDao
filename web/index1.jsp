
<%@page  import="dao.StudentDAO" %>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
      <center>  
       <form method="post" action="index1.jsp"> 
        <table border="1">
         <tr>
             <th>User Name:</th>
             <td><input type="text" name="txtuser">
         </tr>   
            <th>Password:</th>
             <td><input type="password" name="txtpass">
         </tr>   
             <tr>
                 <td></td>
                <td>
                    <input type="submit" value="Submit">
                    <input type="reset" value="Reset">
                </td>
             </tr>
        </table>
       </form>    
     <% 
         String user=null,pass=null;
         user=request.getParameter("txtuser");
         pass=request.getParameter("txtpass");
         if(user!=null && pass!=null)
         {
               StudentDAO sd=new StudentDAO();
               if(sd.checkLogin(user, pass))
                   response.sendRedirect("FrontPage.html");
               else
                out.println("<font color=red size=4>Invalid user id or password<font>"); 
         }
     %>     
     </center>       
    </body>
</html>
