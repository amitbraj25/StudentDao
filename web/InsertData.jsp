<%-- 
    Document   : InsertData
    Created on : Jul 6, 2023, 7:51:46 PM
    Author     : Hp
--%>

<%@page import="dao.StudentDAO"%>
<%@include  file="header.jsp"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean class="model.Student" id="S">
    <jsp:setProperty name="S" property="*"></jsp:setProperty>
</jsp:useBean>
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
           StudentDAO sd=new StudentDAO();
          if(sd.insertStudent(S))
          {    
              out.println("Record inserted..........");
              response.sendRedirect("InsertStudent.jsp");
          }  
       %>
    </body>
</html>
