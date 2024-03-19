<%@page import="model.Student"%>
<%@page import="dao.StudentDAO"%>
<%@include  file="header.jsp"%>
<%! 
          Student S=null;
%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
         <% 
         int i;
         for(i=1;i<=10;i++)
             out.println("<br>");
      %>  
        <center> 
          <h1>Student DAO Application</h1>
      <br> 
     
     <br><br>
       <font color="blue" size="5">Student Search Page</font>    
       <form method="post" action="SearchStudent.jsp">    
       <table border="1"> 
       <tr>
           <th>Roll No:</th>
           <td><input type="text" name="txtno" id="RNO"></td>
       </tr>    
       <tr>
           <td></td>
          <td>
              <input type="submit" value="Submit" onclick="return validate()">
              <input type="reset" value="Reset">
          </td> 
       </tr>
       
       </table>
       </form> 
       <% 
           String str=null;
           str=request.getParameter("txtno");
           int rno;
         if(str!=null) 
         {      
          rno=Integer.parseInt(str);
          StudentDAO sd=new StudentDAO();
         S=sd.searchByRno(rno);
         if(S!=null)
         {             
        %> 
           
         
       
       <br><br>
       <marquee bgcolor="yellow">Student Record</marquee>>    
    <table border="1">
        <tr>
           <th>Roll No</th><th>Name</th><th>Physics</th><th>Chemistry</th><th>Maths</th>
        </tr>   
     <tr>
         <td><%=S.getRno()%></td> 
         <td><%=S.getName()%></td> 
          <td><%=S.getPhy()%></td> 
           <td><%=S.getChem()%></td> 
            <td><%=S.getMath()%></td> 
     </tr>    
        
    </table>    
     <%
        }
        else
         out.println("<font color=red size=5>Record Not Found.....</font>");
         }    
     %>  
       </center>    

    </body>
</html>
