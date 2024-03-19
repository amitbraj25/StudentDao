<%-- 
    Document   : UpdateData
    Created on : Jul 7, 2023, 7:58:44 PM
    Author     : Hp
--%>

<%@page import="dao.StudentDAO"%>
<%@page import="model.Student"%>
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
         for(i=1;i<=20;i++)
             out.println("<br>");
      %>  
        <% 
           int rno,phy,chem,math;
           String name;
           
           rno=Integer.parseInt(session.getAttribute("rollno").toString());
           name=request.getParameter("txtname");
           phy=Integer.parseInt(request.getParameter("txtphy"));
           chem=Integer.parseInt(request.getParameter("txtchem"));
           math=Integer.parseInt(request.getParameter("txtmath"));
           Student S=new Student();
           S.setRno(rno);
           S.setName(name);
           S.setPhy(phy);
           S.setChem(chem);
           S.setMath(math);
           StudentDAO sd=new StudentDAO();
           if(sd.updateStudent(S))
               out.println("Record updated............");
                   
           
           
        %>
    </body>
</html>
