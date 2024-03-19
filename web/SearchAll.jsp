<%@page import="java.util.List"%>
<%@page import="model.Student"%>
<%@page import="dao.StudentDAO"%>
<%@include  file="header.jsp"%>
<%! 
          Student S=null;
%>
<html>
    <head>
        <title>Search All Record</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
         <% 
         int i;
         for(i=1;i<=20;i++)
             out.println("<br>");
      %>  
        <center> 
       <font color="blue" size="5"> Search All Record Page</font>    
      <%
          StudentDAO sd=new StudentDAO();
          List<Student> mylist;
          mylist=sd.searchAllRecord();
        %> 
     <table border="1">
        <tr>
           <th>Roll No</th><th>Name</th><th>Physics</th><th>Chemistry</th><th>Maths</th>
        </tr>   
   <%
        for(Student S:mylist)    
        {    
   %>      
     <tr>
         <td><%=S.getRno()%></td> 
         <td><%=S.getName()%></td> 
          <td><%=S.getPhy()%></td> 
           <td><%=S.getChem()%></td> 
            <td><%=S.getMath()%></td>
     </tr>    
     <%
        }       
     %>  
       </center>    
</table>
    </body>
</html>
