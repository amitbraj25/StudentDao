<%-- 
    Document   : DeleteData
    Created on : Jul 7, 2023, 7:40:35 PM
    Author     : Hp
--%>

<%@page import="dao.StudentDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="header.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <% 
         int i;
         for(i=1;i<=10;i++)
             out.println("<br>");
      %>  
        
        
     <% 
        String s;
        s=session.getAttribute("rollno").toString();
        int rno;
        rno=Integer.parseInt(s);
        StudentDAO sd=new StudentDAO();
        if(sd.deleteStudent(rno))
            out.println("Record deleted.........");
     %>
    </body>
</html>
